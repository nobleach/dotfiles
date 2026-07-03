return {
	"arborist-ts/arborist.nvim",
	config = function()
		require("arborist").setup({
			update_cadence = "daily",
			-- overrides = {
			--   my_language = { url = "https://github.com/me/tree-sitter-my-language" },
			-- },
		})
	end,
}
