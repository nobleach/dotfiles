return {
	"0xKitsune/pr.nvim",
	-- or use a local path:
	-- dir = "~/path/to/pr.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim", -- optional
	},
	config = function()
		require("pr").setup()
	end,
}
