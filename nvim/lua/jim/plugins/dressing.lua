return {
	"stevearc/dressing.nvim",
	event = "VeryLazy",
	config = function()
		local dressing = require("dressing")

		dressing.setup({
			input = {
				win_options = {
					winhighlight = "NormalFloat:DiagnosticError",
				},
			},
		})
	end,
}
