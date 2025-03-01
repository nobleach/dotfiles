return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		indent = {},
		input = {},
		---@type snacks.picker.Config
		picker = {
			enabled = true,
			ui_select = true,
			win = {
				input = {
					keys = {
						["<C-t>"] = { "tab", mode = { "n", "i" } },
						["<C-q>"] = { "qflist", mode = { "n", "i" } },
					},
				},
			},
		},
	},
	keys = {
		{
			",f",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},
		{
			",8",
			function()
				Snacks.picker.grep_word()
			end,
			desc = "Grep",
		},
		{
			",p",
			function()
				Snacks.picker.files()
			end,
			desc = "Find Files",
		},
		{
			",s",
			function()
				Snacks.picker.lsp_symbols()
			end,
			desc = "LSP Symbols",
		},
		{
			",D",
			function()
				Snacks.picker.diagnostics_buffer()
			end,
			desc = "Buffer Diagnostics",
		},
		{
			",j",
			function()
				Snacks.picker.jumps()
			end,
			desc = "Jumps",
		},
		{
			"<leader>sk",
			function()
				Snacks.picker.keymaps()
			end,
			desc = "Keymaps",
		},
		{
			"<leader>sl",
			function()
				Snacks.picker.loclist()
			end,
			desc = "Location List",
		},
		{
			"<leader>sm",
			function()
				Snacks.picker.marks()
			end,
			desc = "Marks",
		},
	},
}
