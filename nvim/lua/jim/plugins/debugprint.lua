local js_like = {
	left = 'console.info("',
	right = '")',
	mid_var = '", ',
	right_var = ")",
}

return {
	"andrewferrier/debugprint.nvim",
	opts = {
		filetypes = {
			["javascript"] = js_like,
			["javascriptreact"] = js_like,
			["typescript"] = js_like,
			["typescriptreact"] = js_like,
		},
		keymaps = {
			normal = {
				plain_below = "g?p",
				plain_above = "g?P",
				variable_below = "<leader>cl",
				variable_above = "g?V",
				variable_below_alwaysprompt = nil,
				variable_above_alwaysprompt = nil,
				textobj_below = "g?o",
				textobj_above = "g?O",
				toggle_comment_debug_prints = nil,
				delete_debug_prints = nil,
			},
			visual = {
				variable_below = "g?v",
				variable_above = "g?V",
			},
		},
		commands = {
			toggle_comment_debug_prints = "ToggleCommentDebugPrints",
			delete_debug_prints = "DeleteDebugPrints",
		},
	},
}
