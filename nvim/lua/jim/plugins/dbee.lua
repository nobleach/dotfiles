return {
	"kndndrj/nvim-dbee",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	build = function()
		-- Install tries to automatically detect the install method.
		-- if it fails, try calling it with one of these parameters:
		--    "curl", "wget", "bitsadmin", "go"
		require("dbee").install()
	end,
	config = function()
		require("dbee").setup({
			editor = {
				-- mappings for the buffer
				mappings = {
					-- run what's currently selected on the active connection
					{ key = "\\q", mode = "v", action = "run_selection" },
					-- run the whole file on the active connection
					{ key = "\\q", mode = "n", action = "run_file" },
				},
			},
		})
		-- Set keymaps
		local keymap = vim.keymap

		keymap.set("n", ",d", '<cmd>lua require("dbee").toggle()<CR>', { noremap = true })
	end,
}
