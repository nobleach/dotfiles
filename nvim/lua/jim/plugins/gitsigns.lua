return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local gitsigns = require("gitsigns")
		local feedkeys = vim.api.nvim_feedkeys
		local map = vim.keymap.set
		local schedule = vim.schedule

		gitsigns.setup({
			signs = {
				add = { text = "┃" },
				change = { text = "┃" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
				untracked = { text = "┆" },
			},
			on_attach = function()
				local gs = package.loaded.gitsigns

				map("n", "]g", function()
					gs.next_hunk()
					schedule(function()
						feedkeys("zz", "n", false)
					end)
				end)
				map("n", "[g", function()
					gs.prev_hunk()
					schedule(function()
						feedkeys("zz", "n", false)
					end)
				end)
				map("n", "'+", gs.stage_hunk)
				map("n", "'-", gs.reset_hunk)
				map("n", "'g", gs.preview_hunk)
				map("n", "'b", function()
					gs.blame_line({ full = true })
				end)
				map("n", "'r", gs.refresh)
			end,
			max_file_length = 100000,
			sign_priority = 6,
		})
	end,
}
