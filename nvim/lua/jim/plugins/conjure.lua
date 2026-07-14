return {
	{
		"Olical/conjure",
		ft = { "clojure", "fennel", "javascript", "python", "racket", "rust", "scheme", "typescript" }, -- etc
		lazy = true,
		init = function()
			-- Set configuration options here
			-- Uncomment this to get verbose logging to help diagnose internal Conjure issues
			-- This is VERY helpful when reporting an issue with the project
			-- vim.g["conjure#debug"] = true
			local keymap = vim.keymap -- for conciseness
			keymap.set("n", "<leader>ceb", "<cmd>ConjureEvalBuf<CR>", { noremap = true, silent = true })
			keymap.set("n", "<leader>cef", "<cmd>ConjureEvalFile<CR>", { noremap = true, silent = true })
			keymap.set({ "n", "v" }, "\\e", "<cmd>ConjureEval<CR>", { noremap = true, silent = true })
		end,
	},
	{
		"julienvincent/nvim-paredit",
		config = function()
			require("nvim-paredit").setup()
		end,
	},
}
