return {
	-- {
	-- 	"ellisonleao/gruvbox.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("gruvbox").setup({
	-- 			undercurl = true,
	-- 			underline = true,
	-- 			bold = true,
	-- 			italic = {
	-- 				strings = true,
	-- 				emphasis = true,
	-- 				comments = true,
	-- 				operators = false,
	-- 				folds = true,
	-- 			},
	-- 			strikethrough = true,
	-- 		})
	--
	-- 		vim.cmd("colorscheme gruvbox")
	-- 	end,
	-- },
	-- {
	-- 	"AlexvZyl/nordic.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("nordic").load()
	-- 		vim.api.nvim_set_hl(0, "Comment", { fg = "#4C5669", italic = true })
	-- 		vim.api.nvim_set_hl(0, "Visual", { bg = "#62573F" })
	-- 		vim.api.nvim_set_hl(0, "Winbar", { bg = "#303340" })
	-- 		vim.api.nvim_set_hl(0, "TabLineSel", { fg = "#000000", bg = "#94BFCE" })
	-- 		-- vim.api.nvim_set_hl(0, "TabLineSel", { fg = "#000000", bg = "#D79784" })
	-- 	end,
	-- },
	-- {
	-- 	"nyngwang/nvimgelion",
	-- 	config = function()
	-- 		-- do whatever you want for further customization~
	-- 		vim.cmd([[colorscheme nvimgelion]])
	-- 	end,
	-- },
	-- {
	-- 	"luisiacc/gruvbox-baby",
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		-- load the colorscheme here
	-- 		vim.cmd([[colorscheme gruvbox-baby]])
	-- 	end,
	-- },
	-- {
	-- 	"ramojus/mellifluous.nvim",
	-- 	-- version = "v0.*", -- uncomment for stable config (some features might be missed if/when v1 comes out)
	-- 	config = function()
	-- 		require("mellifluous").setup({}) -- optional, see configuration section.
	-- 		vim.cmd("colorscheme mellifluous")
	-- 	end,
	-- },
	{
		"fenetikm/falcon",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("falcon")
			vim.api.nvim_set_hl(0, "Visual", { bg = "#3f3a59" })
			vim.api.nvim_set_hl(0, "CursorLine", { bg = "#4f4f59" })
			vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#b24d36" })
			vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#b24d36" })
			vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#ff3600" })
			vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#ff761a" })
			vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#ff761a" })
			vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarning", { fg = "#ff761a" })
			vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#99a4bc" })
			vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "#99a4bc" })
			vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#99a4bc" })
			vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#99a4bc" })
			vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "#99a4bc" })
			vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#99a4bc" })
			vim.api.nvim_set_hl(0, "Winbar", { bg = "#303340" })
			vim.api.nvim_set_hl(0, "TabLineSel", { fg = "#000000", bg = "#FFC552" })
		end,
	},
	-- {
	-- 	"zortax/three-firewatch",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd("colorscheme three-firewatch")
	-- 	end,
	-- },
	-- {
	-- 	"antonio-hickey/citrus-mist",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd("colorscheme citrus-mist")
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
	-- 	"olivercederborg/poimandres.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("poimandres").setup({
	-- 			dim_nc_background = true,
	-- 			disable_italics = false,
	-- 		})
	-- 	end,
	--
	-- 	-- optionally set the colorscheme within lazy config
	-- 	init = function()
	-- 		vim.cmd("colorscheme poimandres")
	-- 		vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#a6998f" })
	-- 		vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#a6998f", bg = "#282828" })
	-- 		vim.api.nvim_set_hl(0, "Comment", { fg = "#a6998f", italic = true })
	-- 		vim.api.nvim_set_hl(0, "Winbar", { bg = "#303340" })
	-- 	end,
	-- },
	-- {
	-- 	"kyazdani42/blue-moon",
	-- 	config = function()
	-- 		vim.opt.termguicolors = true
	-- 		vim.cmd("colorscheme blue-moon")
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
}
