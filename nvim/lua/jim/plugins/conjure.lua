return {
	{
		"Olical/conjure",
		-- Common Lisp uses the Swank client (not stdio). See :help conjure-client-common-lisp-swank
		ft = { "clojure", "fennel", "javascript", "lisp", "python", "racket", "rust", "scheme", "typescript" },
		lazy = true,
		init = function()
			-- Set configuration options here
			-- Uncomment this to get verbose logging to help diagnose internal Conjure issues
			-- This is VERY helpful when reporting an issue with the project
			-- vim.g["conjure#debug"] = true

			-- Scheme dialects (Chez default; Guile on demand). Shared detection lives
			-- in jim.scheme_dialect (also used by LSP). One dialect per project —
			-- never guess from file extensions (Chez often uses *.scm too).
			local dialect = require("jim.scheme_dialect")

			local function restart_repl()
				local ok, client = pcall(require, "conjure.client")
				if not ok then
					return
				end
				pcall(function()
					client.call("stop")
				end)
				vim.defer_fn(function()
					pcall(function()
						client.call("start")
					end)
				end, 100)
			end

			-- Defaults: Chez (petite). Neither Chez nor Guile uses MIT's ";Value: " prefix.
			dialect.apply("chez")
			vim.g["conjure#client#scheme#stdio#value_prefix_pattern"] = false
			vim.g["conjure#filetype_suffixes#scheme"] = { "scm", "sc", "ss", "sls", "sps", "sld" }

			-- Common Lisp / Swank -------------------------------------------------
			-- Conjure connects to an external Swank server (default 127.0.0.1:4005).
			-- :ConjureSwankStart launches one via scripts/swank-server.sh if needed;
			-- opening a .lisp buffer will also auto-start + connect when idle.
			vim.g["conjure#client#common_lisp#swank#connection#default_host"] = "127.0.0.1"
			vim.g["conjure#client#common_lisp#swank#connection#default_port"] = "4005"
			vim.g["conjure#client#common_lisp#swank#enable_completions"] = true

			local swank = {
				host = "127.0.0.1",
				port = 4005,
				job_id = nil,
				wait_timer = nil,
				script = vim.fn.stdpath("config") .. "/scripts/swank-server.sh",
			}

			local function swank_listening()
				-- Synchronous port probe (ss preferred, lsof fallback).
				if vim.fn.executable("ss") == 1 then
					local out = vim.fn.system({ "ss", "-ltn", "sport = :" .. swank.port })
					return type(out) == "string" and out:find(":" .. swank.port, 1, true) ~= nil
				end
				if vim.fn.executable("lsof") == 1 then
					vim.fn.system({ "lsof", "-iTCP:" .. swank.port, "-sTCP:LISTEN" })
					return vim.v.shell_error == 0
				end
				return false
			end

			local function swank_stop_wait_timer()
				local timer = swank.wait_timer
				if not timer then
					return
				end
				swank.wait_timer = nil
				-- stop/close can race if multiple callbacks fire; ignore double-close.
				pcall(function()
					timer:stop()
				end)
				pcall(function()
					timer:close()
				end)
			end

			local function swank_start(opts)
				opts = opts or {}
				if swank_listening() then
					if not opts.quiet then
						vim.notify(
							("Swank already on %s:%d"):format(swank.host, swank.port),
							vim.log.levels.INFO
						)
					end
					return true
				end

				if swank.job_id and vim.fn.jobwait({ swank.job_id }, 0)[1] == -1 then
					if not opts.quiet then
						vim.notify("Swank job already starting…", vim.log.levels.INFO)
					end
					return true
				end

				if vim.fn.executable(swank.script) ~= 1 then
					vim.notify("Missing " .. swank.script, vim.log.levels.ERROR)
					return false
				end

				swank.job_id = vim.fn.jobstart({ swank.script }, {
					detach = false,
					env = {
						SWANK_HOST = swank.host,
						SWANK_PORT = tostring(swank.port),
					},
					on_exit = function(_, code)
						swank.job_id = nil
						if code ~= 0 and code ~= 143 then
							vim.notify(("Swank exited (%s)"):format(code), vim.log.levels.WARN)
						end
					end,
				})

				if not swank.job_id or swank.job_id <= 0 then
					vim.notify("Failed to start Swank", vim.log.levels.ERROR)
					return false
				end

				if not opts.quiet then
					vim.notify(
						("Starting Swank on %s:%d…"):format(swank.host, swank.port),
						vim.log.levels.INFO
					)
				end
				return true
			end

			local function swank_stop()
				swank_stop_wait_timer()
				if swank.job_id then
					vim.fn.jobstop(swank.job_id)
					swank.job_id = nil
					vim.notify("Swank stopped", vim.log.levels.INFO)
					return
				end
				-- Not our job — try to free the port if something else owns it.
				if swank_listening() and vim.fn.executable("fuser") == 1 then
					vim.fn.system({ "fuser", "-k", swank.port .. "/tcp" })
					vim.notify("Killed process on port " .. swank.port, vim.log.levels.INFO)
					return
				end
				vim.notify("No Swank job managed by Neovim", vim.log.levels.INFO)
			end

			local function swank_connect_client()
				-- Conjure's CL client auto-connects on load; re-call after we bring Swank up.
				local ok, client = pcall(require, "conjure.client.common-lisp.swank")
				if ok and client and type(client.connect) == "function" then
					pcall(client.connect, {})
					return true
				end
				return false
			end

			local function swank_wait_and_connect(retries)
				retries = retries or 40
				-- Only one waiter at a time (FileType + schedule can both fire).
				if swank.wait_timer then
					return
				end

				local attempt = 0
				local timer = vim.uv.new_timer()
				if not timer then
					return
				end
				swank.wait_timer = timer

				timer:start(
					0,
					250,
					vim.schedule_wrap(function()
						-- Another path may have cleared/closed this waiter.
						if swank.wait_timer ~= timer then
							return
						end

						attempt = attempt + 1
						if swank_listening() then
							swank_stop_wait_timer()
							local connected = swank_connect_client()
							vim.notify(
								("Swank ready on %s:%d%s"):format(
									swank.host,
									swank.port,
									connected and " (Conjure connected)"
										or " — open a .lisp buffer or press <localleader>cc"
								),
								vim.log.levels.INFO
							)
							return
						end

						if attempt >= retries then
							swank_stop_wait_timer()
							vim.notify(
								"Swank did not become ready in time — try :ConjureSwankStatus / <localleader>cc",
								vim.log.levels.WARN
							)
						end
					end)
				)
			end

			vim.api.nvim_create_user_command("ConjureSwankStart", function()
				if swank_start() then
					swank_wait_and_connect()
				end
			end, { desc = "Start SBCL Swank server and connect Conjure" })

			vim.api.nvim_create_user_command("ConjureSwankStop", function()
				swank_stop()
			end, { desc = "Stop the Swank server started by ConjureSwankStart" })

			vim.api.nvim_create_user_command("ConjureSwankStatus", function()
				local listening = swank_listening()
				local managed = swank.job_id
						and vim.fn.jobwait({ swank.job_id }, 0)[1] == -1
					or false
				vim.notify(
					("Swank %s:%d — listening=%s managed=%s"):format(
						swank.host,
						swank.port,
						tostring(listening),
						tostring(managed)
					),
					vim.log.levels.INFO
				)
			end, { desc = "Show Swank server status" })

			-- Auto-start Swank when editing Common Lisp if nothing is listening yet.
			-- Also run immediately when Conjure is first loaded *because of* a .lisp
			-- buffer (FileType already fired before this init registers the autocmd).
			local function maybe_auto_swank()
				if vim.bo.filetype ~= "lisp" then
					return
				end
				if swank_listening() then
					-- Server is up; Conjure on-load may already be connecting.
					return
				end
				if swank_start({ quiet = true }) then
					swank_wait_and_connect()
				end
			end

			vim.api.nvim_create_autocmd("FileType", {
				pattern = "lisp",
				callback = maybe_auto_swank,
			})
			vim.schedule(maybe_auto_swank)

			-- When opening Scheme, adopt a dialect from project markers if present.
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "scheme",
				callback = function(args)
					if not dialect.is_scheme_buffer(args.buf) then
						return
					end
					local detected = dialect.detect(args.buf)
					if not detected or detected == dialect.current() then
						return
					end
					dialect.apply(detected)
					-- First open: on-load will start with the new globals.
					-- Mid-session project switch: restart so the running process matches.
					if package.loaded["conjure.client"] then
						restart_repl()
					end
					vim.notify(("Scheme dialect → %s (project)"):format(detected), vim.log.levels.INFO)
				end,
			})

			vim.api.nvim_create_user_command("ConjureSchemeDialect", function(opts)
				local choice = opts.args
				if choice == "" then
					local detected = dialect.detect(0)
					vim.notify(
						("Scheme dialect: %s%s"):format(
							dialect.current(),
							detected and (" (project suggests " .. detected .. ")") or ""
						),
						vim.log.levels.INFO
					)
					return
				end

				if not dialect.dialects[choice] then
					vim.notify(
						("Unknown dialect %q (chez, guile)"):format(choice),
						vim.log.levels.ERROR
					)
					return
				end

				local name = dialect.normalize(choice)
				dialect.apply(name)
				restart_repl()
				vim.notify(
					("Scheme dialect → %s (%s)"):format(name, dialect.dialects[name].command),
					vim.log.levels.INFO
				)
			end, {
				nargs = "?",
				complete = function()
					return { "chez", "guile" }
				end,
				desc = "Show or set Scheme REPL dialect (chez/guile)",
			})

			local keymap = vim.keymap -- for conciseness
			keymap.set("n", "<leader>ceb", "<cmd>ConjureEvalBuf<CR>", { noremap = true, silent = true })
			keymap.set("n", "<leader>cef", "<cmd>ConjureEvalFile<CR>", { noremap = true, silent = true })
			keymap.set({ "n", "v" }, "\\e", "<cmd>ConjureEval<CR>", { noremap = true, silent = true })
			keymap.set("n", "<leader>csd", ":ConjureSchemeDialect ", {
				noremap = true,
				desc = "Set Scheme dialect (chez/guile)",
			})
			keymap.set("n", "<leader>css", "<cmd>ConjureSwankStart<CR>", {
				noremap = true,
				silent = true,
				desc = "Start Common Lisp Swank + connect",
			})
			keymap.set("n", "<leader>csx", "<cmd>ConjureSwankStop<CR>", {
				noremap = true,
				silent = true,
				desc = "Stop Common Lisp Swank",
			})
		end,
	},
	{
		"julienvincent/nvim-paredit",
		config = function()
			require("nvim-paredit").setup()
		end,
	},
}
