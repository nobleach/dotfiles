return {
	"aznhe21/actions-preview.nvim",
	config = function()
		require("actions-preview").setup({
			backend = { "snacks", "telescope", "nui" },
		})

		vim.keymap.set({ "v", "n" }, ",a", require("actions-preview").code_actions)
	end,
}
