return {
	"oysandvik94/curl.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
	  local curl = require("curl")

		curl.setup({})

		-- Set keymaps
    local keymap = vim.keymap
    keymap.set("n", "ro", '<cmd>lua require("curl").open_curl_tab()<CR>', { noremap = true })
	end,
}
