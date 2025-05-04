return {
	"Chaitanyabsprip/fastaction.nvim",
	---@type FastActionConfig
	opts = {},
	config = function()
		require("fastaction").setup({
			vim.keymap.set({ "n", "x" }, ",c", '<cmd>lua require("fastaction").code_action()<CR>', { buffer = bufnr }),
		})
	end,
}
