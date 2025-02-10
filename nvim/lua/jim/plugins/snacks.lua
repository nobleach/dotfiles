return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		indent = {},
		input = { enabled = true },
		picker = { enabled = true },
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
	},
}
