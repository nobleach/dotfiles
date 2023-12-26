return {
	"NTBBloodbath/rest.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local rest = require("rest-nvim")

		rest.setup({})

		-- set keymaps
		local keymap = vim.keymap

		keymap.set("n", "<CR>", rest.run)
	end,
}
