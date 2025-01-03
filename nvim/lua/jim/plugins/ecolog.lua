return {
	"philosofonusus/ecolog.nvim",
	-- dependencies = {
	--   'hrsh7th/nvim-cmp', -- Optional: for autocompletion support (recommended)
	-- },
	-- Optional: you can add some keybindings
	-- (I personally use lspsaga so check out lspsaga integration or lsp integration for a smoother experience without separate keybindings)
	keys = {
		{ "<leader>ge", "<cmd>EcologGoto<cr>", desc = "Go to env file" },
		{ "<leader>ep", "<cmd>EcologPeek<cr>", desc = "Ecolog peek variable" },
		{ "<leader>es", "<cmd>EcologSelect<cr>", desc = "Switch env file" },
	},
	-- Lazy loading is done internally
	lazy = false,
	opts = {
		integrations = {
			-- WARNING: for both cmp integrations see readme section below
			--
			-- nvim_cmp = true, -- If you dont plan to use nvim_cmp set to false, enabled by default
			-- If you are planning to use blink cmp uncomment this line
			blink_cmp = true,
		},
		-- Enables shelter mode for sensitive values
		shelter = {
			configuration = {
				partial_mode = false, -- false by default, disables partial mode, for more control check out shelter partial mode
				mask_char = "*", -- Character used for masking
			},
			modules = {
				cmp = true, -- Mask values in completion
				peek = false, -- Mask values in peek view
				files = false, -- Mask values in files
				telescope = false, -- Mask values in telescope
				telescope_previewer = true, -- Mask values in telescope preview buffers
				fzf = false, -- Mask values in fzf picker
			},
		},
		-- true by default, enables built-in types (database_url, url, etc.)
		types = true,
		path = vim.fn.getcwd(), -- Path to search for .env files
		preferred_environment = "development", -- Optional: prioritize specific env files
	},
}
