return {
	"nobleach/communicore.nvim",
	ft = { "http", "rest" },
	opts = {},
	keys = {
		{
			"\\rs",
			function()
				require("communicore").run()
			end,
			ft = "http",
			desc = "Run request",
		},
		{
			"\\ra",
			function()
				require("communicore").run_all()
			end,
			ft = "http",
			desc = "Run all requests",
		},
		{
			"]r",
			function()
				require("communicore").next_request()
			end,
			ft = "http",
			desc = "Next request",
		},
		{
			"[r",
			function()
				require("communicore").prev_request()
			end,
			ft = "http",
			desc = "Previous request",
		},
	},
}
