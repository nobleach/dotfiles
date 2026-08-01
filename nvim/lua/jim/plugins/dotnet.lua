return {
	"GustavEikaas/easy-dotnet.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "folke/snacks.nvim" },
	config = function()
		require("easy-dotnet").setup()
		vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
			pattern = { "*.fs", "*.fsx", "*.fsi" },
			command = "set filetype=fsharp",
		})
	end,
}
