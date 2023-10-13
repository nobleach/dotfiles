return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local saga = require("lspsaga")

		saga.setup({
			symbol_in_winbar = {
				in_custom = false,
				enable = false,
				separator = " ",
				show_file = true,
				click_support = false,
			},
			-- show outline
			show_outline = {
				win_position = "right",
				--set special filetype win that outline window split.like NvimTree neotree
				-- defx, db_ui
				win_with = "",
				win_width = 30,
				auto_enter = true,
				auto_preview = true,
				virt_text = "┃",
				jump_key = "o",
				-- auto refresh when change buffer
				auto_refresh = true,
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>xa", "<cmd>CodeActionMenu<cr>", { silent = true, noremap = true })
	end,
}
