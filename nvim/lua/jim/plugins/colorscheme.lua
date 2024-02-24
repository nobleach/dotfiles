return {
	-- {
	-- 	"bluz71/vim-nightfly-guicolors",
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		-- load the colorscheme here
	-- 		vim.cmd([[colorscheme nightfly]])
	-- 	end,
	-- },
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		local bg = "#011628"
	-- 		local bg_dark = "#011423"
	-- 		local bg_highlight = "#143652"
	-- 		local bg_search = "#0A64AC"
	-- 		local bg_visual = "#275378"
	-- 		local fg = "#CBE0F0"
	-- 		local fg_dark = "#B4D0E9"
	-- 		local fg_gutter = "#627E97"
	-- 		local border = "#547998"
	--
	-- 		require("tokyonight").setup({
	-- 			style = "night",
	-- 			on_colors = function(colors)
	-- 				colors.bg = bg
	-- 				colors.bg_dark = bg_dark
	-- 				colors.bg_float = bg_dark
	-- 				colors.bg_highlight = bg_highlight
	-- 				colors.bg_popup = bg_dark
	-- 				colors.bg_search = bg_search
	-- 				colors.bg_statusline = bg_dark
	-- 				colors.bg_sidebar = bg_dark
	-- 				colors.bg_visual = bg_visual
	-- 				colors.border = border
	-- 				colors.fg = fg
	-- 				colors.fg_dark = fg_dark
	-- 				colors.fg_float = fg
	-- 				colors.fg_gutter = fg_gutter
	-- 				colors.fg_sidebar = fg_dark
	-- 			end,
	-- 		})
	-- 		-- load the colorscheme here
	-- 		vim.cmd([[colorscheme tokyonight]])
	-- 		vim.cmd([[highlight Normal ctermbg=NONE guibg=NONE]])
	-- 	end,
	-- },
	-- {
	-- 	"sainnhe/everforest",
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		vim.cmd([[colorscheme everforest]])
	-- 	end,
	-- },
	{
		"sainnhe/gruvbox-material",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.cmd([[let g:gruvbox_material_background = 'soft']])
			vim.cmd([[let g:gruvbox_material_better_performance = 1]])
			vim.cmd([[let g:gruvbox_material_enable_bold = 1]])
			vim.cmd([[let g:gruvbox_material_enable_italic = 1]])
			vim.cmd([[]])
			vim.cmd([[colorscheme gruvbox-material]])
		end,
	},
	-- {
	-- 	"savq/melange-nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme melange]])
	-- 	end,
	-- },
	-- {
	-- 	"lvim-tech/lvim-colorscheme",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		local lvim_colorscheme = require("lvim-colorscheme")
	--
	-- 		lvim_colorscheme.setup({
	-- 			style = "dark",
	-- 		})
	-- 	end,
	-- },
	-- {
	-- 	"olivercederborg/poimandres.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("poimandres").setup({
	-- 			-- leave this setup function empty for default config
	-- 			-- or refer to the configuration section
	-- 			-- for configuration options
	-- 		})
	-- 	end,
	--
	-- 	-- optionally set the colorscheme within lazy config
	-- 	init = function()
	-- 		vim.cmd("colorscheme poimandres")
	-- 	end,
	-- },
}
