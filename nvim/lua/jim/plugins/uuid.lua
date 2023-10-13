return {
	"TrevorS/uuid-nvim",
	lazy = true,
	config = function()
		local uuid = require("uuid-nvim")
		uuid.setup({
			case = "lower",
			quotes = "single",
		})

		vim.keymap.set("n", "<leader>ut", uuid.toggle_highlighting)
		vim.keymap.set("i", "<C-u>", uuid.insert_v4)
	end,
}
