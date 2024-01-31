return {
	"TimUntersberger/neogit",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local neogit = require("neogit")

		neogit.setup({
			console_timeout = 2000,
			-- Automatically show console if a command takes more than console_timeout milliseconds
			auto_show_console = true,
			-- Change the default way of opening the commit popup
			commit_popup = {
				kind = "split",
			},
			-- Change the default way of opening popups
			popup = {
				kind = "split",
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>gg", "<cmd>Neogit kind=split<CR>", { silent = true, noremap = true })
	end,
}
