return {
	"Wansmer/treesj",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		local treesj = require("treesj")

		treesj.setup({
			use_default_keymaps = false,
		})

		-- set keymaps
		local keymap = vim.keymap

		keymap.set("n", "<leader>sj", treesj.toggle)
	end,
}
