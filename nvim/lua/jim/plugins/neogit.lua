return {
	"TimUntersberger/neogit",
	branch = "master",
	dependencies = { "nvim-lua/plenary.nvim", "esmuellert/codediff.nvim", "folke/snacks.nvim" },
	config = function()
		local neogit = require("neogit")

		neogit.setup({
			console_timeout = 2000,
			-- Automatically show console if a command takes more than console_timeout milliseconds
			auto_show_console = true,
			commit_editor = {
				kind = "floating",
				show_staged_diff = true,
				-- Accepted values:
				-- "split" to show the staged diff below the commit editor
				-- "vsplit" to show it to the right
				-- "split_above" Like :top split
				-- "vsplit_left" like :vsplit, but open to the left
				-- "auto" "vsplit" if window would have 80 cols, otherwise "split"
				staged_diff_split_kind = "split",
				spell_check = true,
			},
			integrations = {
				codediff = true,
				snacks = true,
			},
			diff_viewer = "snacks",
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>gg", "<cmd>Neogit kind=split<CR>", { silent = true, noremap = true })
		keymap.set("n", ",g", "<cmd>Neogit kind=split<CR>", { silent = true, noremap = true })
	end,
}
