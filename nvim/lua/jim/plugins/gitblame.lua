return {
	"tveskag/nvim-blame-line",
	config = function()
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>bl", "<cmd>ToggleBlameLine<CR>", { noremap = true, silent = true })
	end,
}
