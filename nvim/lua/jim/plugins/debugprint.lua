return {
	"andrewferrier/debugprint.nvim",
	opts = {},

	-- Dependency only needed for NeoVim 0.8
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		-- local opts = {
		-- 	create_keymaps = false,
		-- 	create_commands = false,
		-- }

		require("debugprint").setup()

		vim.keymap.set("n", "<Leader>cl", function()
			-- Note: setting `expr=true` and returning the value are essential
			return require("debugprint").debugprint({ variable = true })
		end, {
			expr = true,
		})

		vim.keymap.set("n", "<Leader>cd", "<cmd>:DeleteDebugPrints<CR>")
	end,
}
