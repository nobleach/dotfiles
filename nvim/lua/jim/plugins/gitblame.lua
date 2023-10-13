return {
	"tveskag/nvim-blame-line",
	config = function()
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>b", "<cmd>ToggleBlameLine<CR>", { noremap = true, silent = true })
	end,
}
