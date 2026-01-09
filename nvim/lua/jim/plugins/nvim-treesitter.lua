return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		branch = "main",
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		config = function()
			-- import nvim-treesitter plugin
			vim.treesitter.language.register("markdown", "mdx")

			-- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
			-- parser_config.d2 = {
			-- 	install_info = {
			-- 		url = "https://git.pleshevski.ru/pleshevskiy/tree-sitter-d2",
			-- 		revision = "main",
			-- 		files = { "src/parser.c", "src/scanner.cc" },
			-- 	},
			-- 	filetype = "d2",
			-- }

			-- configure treesitter
			require("nvim-treesitter").setup({
				highlight = {
					-- enable = true,
				},
				-- enable indentation
				indent = { enable = true },
				-- enable autotagging (w/ nvim-ts-autotag plugin)
				autotag = {
					enable = true,
				},
				-- ensure these language parsers are installed
				ensure_installed = {
					"json",
					"javascript",
					"typescript",
					"tsx",
					"yaml",
					"html",
					"http",
					"css",
					"prisma",
					"markdown",
					"markdown_inline",
					"svelte",
					"graphql",
					"bash",
					"lua",
					"vim",
					"dockerfile",
					"gitignore",
					"query",
				},
				-- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
				context_commentstring = {
					enable = true,
					enable_autocmd = false,
				},
			})
		end,
	},
}
