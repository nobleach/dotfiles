return {
	{
		"Olical/conjure",
		ft = { "clojure", "fennel", "javascript", "python", "racket", "rust", "scheme", "typescript" }, -- etc
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
			vim.g["conjure#filetype_suffixes#scheme"] = { "scm", "ss", "sls", "sps", "sld" }

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
		end,
	},
	{
		"julienvincent/nvim-paredit",
		config = function()
			require("nvim-paredit").setup()
		end,
	},
}
