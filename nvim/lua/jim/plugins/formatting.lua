return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	config = function()
		local conform = require("conform")

		local function biome_lsp_or_prettier(bufnr)
			local has_biome_lsp = vim.lsp.get_active_clients({
				bufnr = bufnr,
				name = "biome",
			})[1]
			if has_biome_lsp then
				return { "biome" }
			end
			local has_prettier = vim.fs.find({
				-- https://prettier.io/docs/en/configuration.html
				".prettierrc",
				".prettierrc.json",
				".prettierrc.yml",
				".prettierrc.yaml",
				".prettierrc.json5",
				".prettierrc.js",
				".prettierrc.cjs",
				".prettierrc.toml",
				"prettier.config.js",
				"prettier.config.cjs",
			}, { upward = false })[1] -- currently the config HAS to exist in the same directory if we search upward for monorepos, we'll be in trouble
			if has_prettier then
				return { "prettier" }
			end
			return { "biome" }
		end

		conform.setup({
			formatters_by_ft = {
				javascript = biome_lsp_or_prettier,
				typescript = biome_lsp_or_prettier,
				javascriptreact = biome_lsp_or_prettier,
				typescriptreact = biome_lsp_or_prettier,
				json = { "biome" },
				jsonc = { "biome" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>xf", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })

		vim.keymap.set({ "n", "v" }, "\\f", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
