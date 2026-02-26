return {
	"dtrh95/csharp-explorer.nvim",
	dependencies = {
		"nvim-tree/nvim-tree.lua",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("csharp-explorer").setup({})
	end,
}
