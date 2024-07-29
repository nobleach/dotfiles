return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-neotest/neotest-jest",
		"marilari88/neotest-vitest",
	},
	config = function()
		local neotest = require("neotest")
		neotest.setup({
			adapters = {
				-- require("neotest-jest")({
				-- 	jestCommand = "npm test --",
				-- 	jestConfigFile = "custom.jest.config.ts",
				-- 	env = { CI = true },
				-- 	cwd = function(path)
				-- 		return vim.fn.getcwd()
				-- 	end,
				-- }),
				require("neotest-vitest")({
					-- Filter directories when searching for test files. Useful in large projects (see Filter directories notes).
					filter_dir = function(name, rel_path, root)
						return name ~= "node_modules"
					end,
				}),
			},
		})

		vim.api.nvim_set_keymap(
			"n",
			"<leader>tr",
			"<cmd>lua require('neotest').run.run({ vitestCommand = 'vitest' })<cr>",
			{ desc = "Run Closest" }
		)

		vim.api.nvim_set_keymap(
			"n",
			"<leader>tol",
			"<cmd>lua require('neotest').output.open({ enter = true })<cr>",
			{ desc = "Open Test Output" }
		)

		vim.api.nvim_set_keymap(
			"n",
			"<leader>top",
			"<cmd>lua require('neotest').output_panel.toggle()<cr>",
			{ desc = "Toggle Test Panel" }
		)
		
		vim.api.nvim_set_keymap(
			"n",
			"<leader>tos",
			"<cmd>lua require('neotest').summary.toggle()<cr>",
			{ desc = "Toggle Test Summary" }
		)

    vim.api.nvim_set_keymap(
      "n",
      "<leader>twr",
      "<cmd>lua require('neotest').run.run({ vitestCommand = 'vitest --watch' })<cr>",
      {desc = "Run Watch"}
    )
	end,
}
