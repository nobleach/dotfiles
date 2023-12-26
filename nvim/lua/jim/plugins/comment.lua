return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		-- "JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		-- import comment plugin safely
		local comment = require("Comment")

		-- local ts_context_commentstring = require("ts_context_commentstring")
		--
		-- ts_context_commentstring.setup({
		-- 	enable_autocmd = false,
		-- 	languages = {
		-- 		typescript = "// %s",
		-- 	},
		-- })
		-- enable comment
		comment.setup({})
	end,
}
