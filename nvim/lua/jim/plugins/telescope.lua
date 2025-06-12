return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		-- set custom colors
		-- vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "#00ff00" })

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				file_ignore_patterns = {
					"node_modules/.*",
					"package%-lock.json",
					".git/.*",
					"target/.*",
					"build/.*",
					"dist/.*",
				},
				mappings = {
					i = {
						["<C-n>"] = actions.move_selection_next,
						["<C-p>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", ",p", "<cmd>Telescope find_files hidden=true<cr>", { noremap = true, silent = true })
		keymap.set("n", ",f", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", ",8", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set(
			"n",
			"<leader>tgb",
			"<cmd>lua require('telescope.builtin').git_branches()<cr>",
			{ desc = "List all GIT branches" }
		)
		keymap.set(
			"n",
			"<leader>tgc",
			"<cmd>lua require('telescope.builtin').git_commits()<cr>",
			{ desc = "List all GIT commits" }
		)
		keymap.set(
			"n",
			"<leader>tgo",
			"<cmd>lua require('telescope.builtin').git_bcommits()<cr>",
			{ desc = "List all GIT commits" }
		)
	end,
}
