return {
	"mistweaverco/kulala.nvim",
	config = function()
		-- Setup is required, even if you don't pass any options
		require("kulala").setup({
			-- default_view, body or headers
			default_view = "body",
			-- dev, test, prod, can be anything
			-- see: https://learn.microsoft.com/en-us/aspnet/core/test/http-files?view=aspnetcore-8.0#environment-files
			default_env = "dev",
			-- enable/disable debug mode
			debug = false,
			-- default formatters for different content types
			formatters = {
				json = { "jq", "." },
				xml = { "xmllint", "--format", "-" },
				html = { "xmllint", "--format", "--html", "-" },
			},
			-- default icons
			icons = {
				inlay = {
					loading = "⏳",
					done = "✅ ",
				},
				lualine = "🐼",
			},
			-- additional cURL options
			-- e.g. { "--insecure", "-A", "Mozilla/5.0" }
			additional_curl_options = {},
		})

		-- Set keymaps
		local keymap = vim.keymap
		keymap.set("n", "\\rr", "<cmd>lua require('kulala').run()<CR>", { noremap = true })
		keymap.set("n", "\\rv", "<cmd>lua require('kulala').toggle_view()<CR>", { noremap = true })
	end,
}
