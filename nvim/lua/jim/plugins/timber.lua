return {
	"nobleach/timber.nvim",
	version = "*", -- Use for stability; omit to use `main` branch for the latest features
	branch = "fix-range-error",
	event = "VeryLazy",
	config = function()
		require("timber").setup({
			-- Configuration here, or leave empty to use defaults
		})
	end,
}
