---@module "lazy"
---@type LazySpec
return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = { "neovim-treesitter/treesitter-parser-registry" },
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({ "go", "rust", "python", "typescript" })

		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "go", "rust", "python", "typescript" },
			callback = function()
				vim.treesitter.start() -- highlighting
				vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- folds
				vim.wo.foldmethod = "expr"
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- indentation
			end,
		})
	end,
}
