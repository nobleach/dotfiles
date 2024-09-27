return {
	"kndndrj/nvim-dbee",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	build = function()
		-- Install tries to automatically detect the install method.
		-- if it fails, try calling it with one of these parameters:
		--    "curl", "wget", "bitsadmin", "go"
		require("lua.jim.plugins.dbee").install()
	end,
	config = function()
		require("lua.jim.plugins.dbee").setup(--[[optional config]])

		-- Set keymaps
		local keymap = vim.keymap

		keymap.set("n", "\\d", '<cmd>require("dbee").toggle()<CR>', { noremap = true })
	end,
}
