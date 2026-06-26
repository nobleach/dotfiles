return {
	{
		"Olical/conjure",
		ft = { "clojure", "fennel", "python", "rust" }, -- etc
		lazy = true,
		init = function()
			-- Set configuration options here
			-- Uncomment this to get verbose logging to help diagnose internal Conjure issues
			-- This is VERY helpful when reporting an issue with the project
			-- vim.g["conjure#debug"] = true
		end,
	},
	{
		"julienvincent/nvim-paredit",
		config = function()
			require("nvim-paredit").setup()
		end,
	},
}
