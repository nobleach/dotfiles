return {
	-- {
	-- 	"Love-Pengy/lillilac.nvim",
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		-- load the colorscheme here
	-- 		vim.cmd([[colorscheme lillilac]])
	-- 	end,
	-- },
	-- {
	-- 	"gbprod/nord.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("nord").setup({})
	-- 		vim.cmd.colorscheme("nord")
	-- 	end,
	-- },
	-- {
	-- 	"AlexvZyl/nordic.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("nordic").load()
	-- 	end,
	-- },
	-- vim.cmd([[colorscheme lucius]]),
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
	-- {
	-- 	"sainnhe/gruvbox-material",
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		vim.cmd([[let g:gruvbox_material_background = 'soft']])
	-- 		vim.cmd([[let g:gruvbox_material_better_performance = 1]])
	-- 		vim.cmd([[let g:gruvbox_material_enable_bold = 1]])
	-- 		vim.cmd([[let g:gruvbox_material_enable_italic = 1]])
	-- 		vim.cmd([[]])
	-- 		vim.cmd([[colorscheme gruvbox-material]])
	-- 	end,
	-- },
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
	{
		"olivercederborg/poimandres.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("poimandres").setup({
				dim_nc_background = true,
				disable_italics = false,
			})
		end,

		-- optionally set the colorscheme within lazy config
		init = function()
			vim.cmd("colorscheme poimandres")
			vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#a6998f" })
			vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#a6998f", bg = "#282828" })
			vim.api.nvim_set_hl(0, "Comment", { fg = "#a6998f", italic = true })
			vim.api.nvim_set_hl(0, "Winbar", { bg = "#303340" })
		end,
	},
	-- {
	-- 	"kyazdani42/blue-moon",
	-- 	config = function()
	-- 		vim.opt.termguicolors = true
	-- 		vim.cmd("colorscheme blue-moon")
	-- 	end,
	-- },
	-- {
	-- 	"lourenci/github-colors",
	-- 	config = function()
	-- 		vim.opt.termguicolors = true
	-- 		vim.cmd("colorscheme github-colors")
	-- 	end,
	-- },
	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			dark_variant = "moon", -- main, moon, or dawn
	-- 			dim_inactive_windows = false,
	-- 			extend_background_behind_borders = true,
	-- 		})
	-- 		vim.opt.termguicolors = true
	-- 		vim.cmd("colorscheme rose-pine")
	-- 		vim.cmd("hi CursorLine guibg=#394549")
	-- 		vim.cmd("hi TabLineSel guibg=#394549")
	-- 		vim.cmd("hi Visual guifg=Black guibg=#F6C177 gui=none")
	-- 	end,
	-- },
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "auto", -- latte, frappe, macchiato, mocha
	-- 			transparent_background = true,
	-- 			dim_inactive = {
	-- 				enabled = true, -- dims the background color of inactive window
	-- 				shade = "dark",
	-- 				percentage = 0.15, -- percentage of the shade to apply to the inactive window
	-- 			},
	-- 			default_integrations = true,
	-- 			integrations = {
	-- 				cmp = true,
	-- 				gitsigns = true,
	-- 				nvimtree = true,
	-- 				treesitter = true,
	-- 				notify = false,
	-- 				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	-- 			},
	-- 		})
	--
	-- 		vim.cmd.colorscheme("catppuccin")
	-- 	end,
	-- },
}
