return {
	"so1ve/snacks-fff.nvim",
	dependencies = {
		"folke/snacks.nvim",
		{
			"dmtrKovalenko/fff.nvim",
			build = function()
				require("fff.download").download_or_build_binary()
			end,
		},
	},
	config = function()
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", ",p", function()
			require("snacks-fff").find_files()
		end, { noremap = true, silent = true })
		keymap.set("n", ",f", function()
			require("snacks-fff").live_grep()
		end, { desc = "Find string in cwd" })
		keymap.set("n", ",8", function()
			require("snacks-fff").grep_word()
		end, { desc = "Find string under cursor in cwd" })
	end,
}
