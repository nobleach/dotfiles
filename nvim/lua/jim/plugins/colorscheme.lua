local colors_augroup = vim.api.nvim_create_augroup("MyColors", { clear = true })

return {
	{
		"mistweaverco/vhs-era-theme.nvim",
	},
	{
		"jpwol/thorn.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"samharju/serene.nvim",
	},
	{ "cryptomilk/nightcity.nvim", version = false },
	{
		"masisz/wisteria.nvim",
		name = "wisteria",
		opts = {
			transparent = true,
		},
	},
	{
		"yonatan-perel/lake-dweller.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("lake-dweller").setup({
				-- your options here
			})
		end,
	},
	{
		"uloco/bluloco.nvim",
		lazy = false,
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		config = function()
			-- your optional config goes here, see below.
		end,
	},
	{
		"kungfusheep/mfd.nvim",
		lazy = false,
		priority = 1000,
		config = function() end,
	},
	{
		"serhez/teide.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"oskarnurm/koda.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("koda").setup({ transparent = true })
		end,
	},
	{
		"marko-cerovac/material.nvim",
		config = function()
			vim.g.material_style = "oceanic"
			vim.cmd("hi NonText guifg=bg")
			vim.api.nvim_set_hl(0, "TabLineEdge", { fg = "#2E3440" })
			vim.api.nvim_set_hl(0, "TabLineSelEdge", { fg = "#2E3440", bg = "#10AF98" })
			vim.api.nvim_set_hl(0, "SnacksPickerDir", { fg = "#4C5669" })
			vim.api.nvim_set_hl(0, "SnacksPickerPathHidden", { fg = "#4C5669" })
		end,
	},
	{
		"antonio-hickey/citrus-mist",
		config = function()
			vim.api.nvim_create_autocmd("ColorScheme", {
				group = colors_augroup,
				pattern = "*",
				callback = function()
					if vim.g.colors_name ~= "citrus-mist" then
						return
					end
					vim.api.nvim_set_hl(0, "IncSearch", { fg = "#0F2228", bg = "#C3E1EE" })
					vim.api.nvim_set_hl(0, "CurSearch", { bg = "#e06c75" })
					vim.api.nvim_set_hl(0, "Search", { fg = "#0F2228", bg = "#C3E1EE" })
					vim.api.nvim_set_hl(0, "TabLineEdge", { fg = "#0F2228" })
					vim.api.nvim_set_hl(0, "TabLineSelEdge", { fg = "#0F2228", bg = "#C3E1EE" })
					vim.api.nvim_set_hl(0, "TabLine", { fg = "#C3E1EE", bg = "#0F2228" })
					vim.api.nvim_set_hl(0, "TabLineSel", { fg = "#0F2228", bg = "#C3E1EE" })
					vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#0F2228", fg = "#C3E1EE" })
					vim.api.nvim_set_hl(0, "TabLineIconModified", { fg = "#C3E1EE", bg = "#0F2228" })
					vim.api.nvim_set_hl(0, "TabLineIconModifiedSel", { fg = "#0F2228", bg = "#C3E1EE" })
					vim.api.nvim_set_hl(0, "WinBar", { fg = "#C3E1EE", bg = "#0F2228" })
					vim.api.nvim_set_hl(0, "WinBarNC", { fg = "#C3E1EE", bg = "#0F2228" })
					vim.api.nvim_set_hl(0, "@comment", { fg = "#4C5669", italic = true })
					vim.api.nvim_set_hl(0, "NeogitDiffAddHighlight", { bg = "#103506" })
					vim.api.nvim_set_hl(0, "DiffDeleteHighlight", { bg = "#390503" })
					vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#103506" })
					vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#390503" })
					vim.api.nvim_set_hl(0, "DapBreakpointIcon", { fg = "#FDD11F" })
					vim.api.nvim_set_hl(0, "DapStoppedIcon", { fg = "#e06c75" })
				end,
			})
		end,
	},
	-- Pretty and readable but fairly Cattpuccinish
	{
		"fynnfluegge/monet.nvim",
		name = "monet",
		config = function()
			-- vim.cmd.colorscheme("monet")
		end,
	},
	-- {
	-- 	"everviolet/nvim",
	-- 	name = "evergarden",
	-- 	priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
	-- 	opts = {
	-- 		theme = {
	-- 			variant = "spring", -- 'winter'|'fall'|'spring'|'summer'
	-- 			accent = "green",
	-- 		},
	-- 		editor = {
	-- 			transparent_background = false,
	-- 			sign = { color = "none" },
	-- 			float = {
	-- 				color = "mantle",
	-- 				invert_border = false,
	-- 			},
	-- 			completion = {
	-- 				color = "surface0",
	-- 			},
	-- 		},
	-- 	},
	-- 	config = function()
	-- 		vim.cmd.colorscheme("evergarden")
	-- 	end,
	-- },
	{
		"nyngwang/nvimgelion",
		config = function()
			-- do whatever you want for further customization~
		end,
	},
	{
		"ramojus/mellifluous.nvim",
		-- version = "v0.*", -- uncomment for stable config (some features might be missed if/when v1 comes out)
		config = function()
			require("mellifluous").setup({}) -- optional, see configuration section.
			-- vim.cmd("colorscheme mellifluous")
		end,
	},
	-- {
	-- 	"fenetikm/falcon",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd.colorscheme("falcon")
	-- 		vim.api.nvim_set_hl(0, "Visual", { bg = "#4f4f59" })
	-- 		vim.api.nvim_set_hl(0, "CursorLine", { bg = "#4f4f59" })
	-- 		-- vim.api.nvim_set_hl(0, "Search", { bg = "#635196" })
	-- 		-- vim.api.nvim_set_hl(0, "CurSearch", { bg = "#bfdaff" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#b24d36" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#b24d36" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#ff3600" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#ff761a" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#ff761a" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarning", { fg = "#ff761a" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#99a4bc" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "#99a4bc" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#99a4bc" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#99a4bc" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "#99a4bc" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#99a4bc" })
	-- 		vim.api.nvim_set_hl(0, "Winbar", { bg = "#303340" })
	-- 		vim.api.nvim_set_hl(0, "TabLineSel", { fg = "#000000", bg = "#FFC552" })
	-- 		vim.api.nvim_set_hl(0, "SnacksPickerDir", { fg = "#FFC552" })
	-- 	end,
	-- },
	-- {
	-- 	"zortax/three-firewatch",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd("colorscheme three-firewatch")
	-- 		vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#D95360" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#D95360" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#D95360" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#D55118" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#D55118" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarning", { fg = "#D55118" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#DFB563" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "#DFB563" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#DFB563" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#44A8B6" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "#44A8B6" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#44A8B6" })
	-- 		vim.api.nvim_set_hl(0, "Comment", { fg = "#4C5669", italic = true })
	-- 	end,
	-- },

	-- Best working Solarized theme
	-- {
	-- 	"svrana/neosolarized.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("neosolarized").setup({
	-- 			comment_italics = true,
	-- 			background_set = true,
	-- 		})
	-- 		vim.cmd.colorscheme("neosolarized")
	-- 		vim.cmd("hi NonText guifg=bg")
	-- 		vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#B84745" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#B84745" })
	-- 		vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#B84745" })
	-- 		vim.api.nvim_set_hl(0, "SnacksPickerDir", { fg = "#4C5669" })
	-- 		vim.api.nvim_set_hl(0, "SnacksPickerPathHidden", { fg = "#4C5669" })
	-- 		vim.api.nvim_set_hl(0, "Winbar", { bg = "#002B35" })
	-- 	end,
	-- 	dependencies = {
	-- 		"tjdevries/colorbuddy.nvim",
	-- 	},
	-- },

	-- Real Solarized theme
	-- {
	-- 	"maxmx03/solarized.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	---@type solarized.config
	-- 	opts = {
	-- 		variant = "summer", -- "spring" | "summer" | "autumn" | "winter" (default)
	-- 	},
	-- 	config = function(_, opts)
	-- 		vim.o.termguicolors = true
	-- 		vim.o.background = "dark"
	-- 		require("solarized").setup(opts)
	-- 		vim.cmd.colorscheme("solarized")
	-- 	end,
	-- },
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		-- load the colorscheme here
	-- 		vim.cmd([[colorscheme tokyonight-storm]])
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
		"kyazdani42/blue-moon",
		config = function()
			vim.opt.termguicolors = true
		end,
	},
	{
		"kvrohit/substrata.nvim",
	},
	{
		"maxmx03/fluoromachine.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local fm = require("fluoromachine")

			fm.setup({
				glow = true,
				theme = "fluoromachine",
				transparent = true,
			})
		end,
	},
	{
		"ishan9299/nvim-solarized-lua",
	},
	{
		"svrana/neosolarized.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("neosolarized").setup({
				comment_italics = true,
				background_set = false,
			})
			-- vim.cmd.colorscheme("neosolarized")
		end,
		dependencies = {
			"tjdevries/colorbuddy.nvim",
		},
	},
	{
		"omacom-io/lumon.nvim",
	},
	{
		"IroncladDev/osmium",
	},
	{ "aymenhafeez/doric-themes.nvim", priority = 1000 },
	{
		"barrettruth/midnight.nvim",
	},
	{
		"bjarneo/firesky.nvim",
	},
	{
		"lightnolimit/cosmic-latte-nvim",
	},
}
