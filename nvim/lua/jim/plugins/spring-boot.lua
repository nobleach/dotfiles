return {
	"DevDad-Main/spring-tools.nvim",
	-- Telescope is optional — falls back to vim.ui.select
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("spring-tools").setup()
	end,
}
