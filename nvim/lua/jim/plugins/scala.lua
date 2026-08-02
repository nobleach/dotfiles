return {
	{
		"scalameta/nvim-metals",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		ft = { "scala", "sbt" },
		opts = function()
			local metals_config = require("metals").bare_config()

			-- "off" uses standard LSP progress (pairs well with fidget/snacks).
			-- "on" requires showing vim.g.metals_status in your statusline.
			metals_config.init_options.statusBarProvider = "off"

			-- blink.cmp completion capabilities (falls back if blink isn't loaded)
			local ok, blink = pcall(require, "blink.cmp")
			if ok then
				metals_config.capabilities = blink.get_lsp_capabilities()
			end

			metals_config.settings = {
				showImplicitArguments = true,
				-- Prefer Scala 3 when Metals has to guess (e.g. standalone files)
				fallbackScalaVersion = "3.3.6",
			}

			-- Keymaps come from the global LspAttach autocmd in lspconfig.lua.
			-- on_attach is for Metals-specific setup only — do NOT call
			-- initialize_or_attach here (that belongs in the FileType autocmd).
			metals_config.on_attach = function(client, bufnr)
				-- Optional: DAP integration if nvim-dap is present
				-- require("metals").setup_dap()
			end

			return metals_config
		end,
		config = function(self, metals_config)
			-- nvim-metals help messages can be swallowed when shortmess has F
			vim.opt_global.shortmess:remove("F")

			local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
			vim.api.nvim_create_autocmd("FileType", {
				pattern = self.ft,
				callback = function()
					require("metals").initialize_or_attach(metals_config)
				end,
				group = nvim_metals_group,
			})
		end,
	},
}
