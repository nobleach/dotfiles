return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"pmizio/typescript-tools.nvim",
		"nvim-lua/plenary.nvim",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }
				local keymap = vim.keymap

				-- set keybinds
				opts.desc = "Show LSP references"
				keymap.set("n", "gR", function()
					Snacks.picker.lsp_references()
				end, opts) -- show definition, references
				keymap.set("n", ",u", function()
					Snacks.picker.lsp_references()
				end, opts) -- show definition, references

				opts.desc = "Go to declaration"
				keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

				opts.desc = "Show LSP definitions"
				keymap.set("n", "gd", function()
					Snacks.picker.lsp_definitions()
				end, opts) -- show lsp definitions

				opts.desc = "Show LSP implementations"
				keymap.set("n", "gi", function()
					Snacks.picker.lsp_implementations()
				end, opts) -- show lsp implementations

				opts.desc = "Show LSP type definitions"
				keymap.set("n", "gt", function()
					Snacks.picker.lsp_type_definitions()
				end, opts) -- show lsp type definitions

				opts.desc = "See available code actions"
				keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
				-- keymap.set({ "n", "v" }, ",a", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

				opts.desc = "Smart rename"
				keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

				opts.desc = "TODO Comments"
				keymap.set("n", "<leader>T", function()
					Snacks.picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } })
				end, opts) -- smart rename

				opts.desc = "Show buffer diagnostics"
				keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

				opts.desc = "Show line diagnostics"
				keymap.set("n", "<leader>E", vim.diagnostic.open_float, opts) -- show diagnostics for line

				opts.desc = "Go to previous diagnostic"
				keymap.set("n", "[d", function()
					vim.diagnostic.jump({ count = -1, float = true })
				end, opts) -- jump to previous diagnostic in buffer

				opts.desc = "Go to next diagnostic"
				keymap.set("n", "]d", function()
					vim.diagnostic.jump({ count = 1, float = true })
				end, opts) -- jump to next diagnostic in buffer

				opts.desc = "Show documentation for what is under cursor"
				keymap.set("n", "K", function()
					vim.lsp.buf.hover({ border = "single", max_height = 25, max_width = 120 })
				end, opts) -- show documentation for what is under cursor

				opts.desc = "Restart LSP"
				keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary

				opts.desc = "Send to quickfix"
				keymap.set("n", "<leader>q", ":lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
			end,
		})

		-- Gleam's gotta be its own little special snowflake
		vim.lsp.enable("gleam")

		-- racket-langserver (installed via raco, not mason)
		-- Default filetypes include "scheme"; keep it on Racket only so *.scm
		-- isn't forced to use #lang headers (Chez/Conjure doesn't need them).
		vim.lsp.config("racket_langserver", {
			filetypes = { "racket" },
		})
		vim.lsp.enable("racket_langserver")

		-- Scheme LSPs are dialect-aware (see jim.scheme_dialect):
		--   Chez  → scheme-langserver  (~/.local/bin, not in mason)
		--   Guile → guile-lsp-server   (rgherdt/scheme-lsp-server; guile_ls)
		--
		-- Both attach on filetype scheme; root_dir returns nil for the wrong
		-- dialect so only one server attaches per buffer.
		local scheme_dialect = require("jim.scheme_dialect")

		vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
			pattern = { "*.sls", "*.sps", "*.sld", "*.ss" },
			command = "setfiletype scheme",
		})

		-- scheme-langserver (Chez / R6RS). Default nvim-lspconfig cmd still uses
		-- old positional args; current releases want -l/-m/-t flags.
		-- Crashes on initialize if rootUri is null, so always provide a root.
		--
		-- Known server bug (ufo5260987423/scheme-langserver#62): didChange on a
		-- buffer that is not yet in the server VFS (almost always: unsaved new
		-- file) crashes with "() is not of type file-node" and replies with an
		-- invalid JSON-RPC error (`id: false`). Neovim then raises
		-- INVALID_SERVER_MESSAGE, shows a press-enter prompt in insert mode,
		-- and terminates the client. Mitigations:
		--   1. stdio proxy drops the invalid frames
		--   2. only attach once the file exists on disk
		--   3. after write, re-trigger attach + workspace/didCreateFiles so the
		--      new path is indexed without a full LspRestart
		local scheme_ls_proxy = vim.fn.stdpath("config") .. "/scripts/scheme-langserver-proxy"
		local scheme_ls_cmd = vim.fn.executable(scheme_ls_proxy) == 1 and scheme_ls_proxy or "scheme-langserver"

		local function scheme_ls_should_attach(bufnr)
			if not scheme_dialect.is_scheme_buffer(bufnr) then
				return false
			end
			if scheme_dialect.for_buf(bufnr) ~= "chez" then
				return false
			end
			local fname = vim.api.nvim_buf_get_name(bufnr)
			if fname == "" or not vim.uv.fs_stat(fname) then
				return false
			end
			return true
		end

		vim.lsp.config("scheme_langserver", {
			cmd = {
				scheme_ls_cmd,
				"-l",
				vim.fn.expand("~/.scheme-langserver.log"),
				"-m",
				"enable", -- multi-thread
				"-t",
				"disable", -- type inference still early
			},
			root_dir = function(bufnr, on_dir)
				if not scheme_ls_should_attach(bufnr) then
					return
				end
				local fname = vim.api.nvim_buf_get_name(bufnr)
				-- Prefer scheme-specific project markers only.
				-- Do NOT climb to a bare .git root: monorepos (e.g. ~/Code with
				-- many language trees) make scheme-langserver index everything
				-- and crash on initialize (RPC "initialize" / "unexpected dot").
				-- Pin a project with Akku.manifest or .scheme-dialect (also used
				-- by jim.scheme_dialect); otherwise use the file's directory.
				local root = vim.fs.root(bufnr, { "Akku.manifest", ".scheme-dialect" })
					or vim.fs.dirname(fname)
				on_dir(root)
			end,
		})
		vim.lsp.enable("scheme_langserver")

		-- New Scheme files: no attach until first write (see above). After
		-- write, attach if needed and tell a running server about the path.
		vim.api.nvim_create_autocmd("BufWritePost", {
			group = vim.api.nvim_create_augroup("SchemeLangserverOnSave", { clear = true }),
			pattern = { "*.scm", "*.ss", "*.sls", "*.sps", "*.sld" },
			callback = function(ev)
				if vim.bo[ev.buf].filetype ~= "scheme" then
					return
				end
				if not scheme_ls_should_attach(ev.buf) then
					return
				end

				local attached = vim.lsp.get_clients({
					bufnr = ev.buf,
					name = "scheme_langserver",
				})
				if #attached == 0 then
					-- FileType re-runs vim.lsp.enable's start logic for this buf.
					vim.api.nvim_exec_autocmds("FileType", {
						buffer = ev.buf,
						modeline = false,
					})
					return
				end

				local uri = vim.uri_from_bufnr(ev.buf)
				for _, client in ipairs(attached) do
					if not client:is_stopped() then
						client:notify("workspace/didCreateFiles", {
							files = { { uri = uri } },
						})
					end
				end
			end,
		})

		-- guile-lsp-server (https://codeberg.org/rgherdt/scheme-lsp-server).
		-- Installed under ~/.local (binary + Guile site modules). The wrapper
		-- sets GUILE_LOAD_* so Neovim does not need those vars in its env.
		-- nvim-lspconfig defaults to filetype scheme.guile only; we use scheme
		-- and gate on dialect so Guile projects don't need a special filetype.
		if vim.fn.executable("guile-lsp-server") == 1 then
			vim.lsp.config("guile_ls", {
				cmd = { "guile-lsp-server" },
				filetypes = { "scheme" },
				root_dir = function(bufnr, on_dir)
					if not scheme_dialect.is_scheme_buffer(bufnr) then
						return
					end
					if scheme_dialect.for_buf(bufnr) ~= "guile" then
						return
					end
					local fname = vim.api.nvim_buf_get_name(bufnr)
					local root = vim.fs.root(bufnr, { "guix.scm", "hall.scm", ".scheme-dialect", ".git" })
						or vim.fs.dirname(fname)
					on_dir(root)
				end,
			})
			vim.lsp.enable("guile_ls")
		end

		-- Change the Diagnostic symbols in the sign column (gutter)
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end
		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = " ",
					[vim.diagnostic.severity.WARN] = " ",
					[vim.diagnostic.severity.INFO] = " ",
					[vim.diagnostic.severity.HINT] = " ",
				},
			},
		})

		vim.diagnostic.config({
			float = {
				border = "single",
			},
		})
	end,
}
