return {
	"folke/snacks.nvim",
	priority = 1000,
	---@type snacks.Config
	opts = {
		indent = {
			priority = 1,
			enabled = true, -- enable indent guides
			char = "│",
			only_scope = false, -- only show indent guides of the scope
			only_current = false, -- only show indent guides in the current window
			hl = "SnacksIndent",
		},
		explorer = {
			enabled = true,
		},
		input = {},
		---@type snacks.picker.Config
		picker = {
			enabled = true,
			ui_select = true,
			sources = {
				explorer = {
					win = {
						list = {
							keys = {
								["<C-t>"] = { "tab", mode = { "n", "i" } },
							},
						},
					},
				},
			},
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
			"<c-e>",
			function()
				Snacks.explorer.open()
			end,
			desc = "File Explorer",
		},
		{
			"<leader>f",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},
		{
			"<leader>8",
			function()
				Snacks.picker.grep_word()
			end,
			desc = "Grep",
		},
		{
			"<C-p>",
			function()
				Snacks.picker.git_files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>gb",
			function()
				Snacks.picker.git_branches()
			end,
			desc = "LSP Symbols",
		},
		{
			",sy",
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
			"<leader>2",
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
		{
			",bl",
			function()
				Snacks.git.blame_line(opts)
			end,
			desc = "Marks",
		},
	},
	init = function()
		require("snacks")
	end,
}
