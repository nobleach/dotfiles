-- Theme-agnostic hlchunk config.
--
-- Upstream hardcodes catppuccin's palette. Since this config swaps colorschemes
-- constantly, colors are instead pulled from whatever highlight groups the
-- active theme defines. hlchunk accepts a function for `style` and re-invokes
-- it on every ColorScheme event (base_mod/init.lua:179), so the chunk outline,
-- indent guides, and line numbers re-derive themselves on every theme change.

-- First group in `names` that resolves to a foreground color wins.
-- `fallback` covers themes that define none of them.
local function fg(names, fallback)
	for _, name in ipairs(names) do
		local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = name, link = false })
		if ok and hl and hl.fg then
			return string.format("#%06x", hl.fg)
		end
	end
	return fallback
end

local exclude_ft = {
	dashboard = true,
	snacks_dashboard = true,
	alpha = true,
	help = true,
	lazy = true,
	mason = true,
	notify = true,
	checkhealth = true,
	lspinfo = true,
	qf = true,
	terminal = true,
}

return {
	{
		"shellRaining/hlchunk.nvim",

		event = {
			"BufReadPre",
			"BufNewFile",
		},
		opts = {
			chunk = {
				enable = true,
				priority = 15,
				use_treesitter = true,
				straight = false,
				error_sign = true,
				textobject = "ic",
				max_file_size = 1024 * 1024,
				delay = 0,
				duration = 0,
				chars = {
					horizontal_line = "─",
					vertical_line = "│",
					left_top = "╭",
					left_bottom = "╰",
					right_arrow = "─",
				},
				-- [1] = normal outline, [2] = outline when the chunk has a syntax error.
				style = function()
					return {
						{ fg = fg({ "Delimiter", "Special", "Function" }, "#9584CC") },
						{ fg = fg({ "DiagnosticError", "ErrorMsg", "Error" }, "#e06c75") },
					}
				end,
				exclude_filetypes = exclude_ft,
			},

			indent = {
				enable = true,
				priority = 10,
				use_treesitter = false,
				ahead_lines = 8,
				delay = 0,
				chars = {
					"┊",
				},
				-- Whitespace is what Neovim itself uses for listchars/indent guides.
				style = function()
					return {
						{ fg = fg({ "Whitespace", "NonText", "Comment" }, "#4C5669") },
					}
				end,
				exclude_filetypes = exclude_ft,
			},

			line_num = {
				enable = true,
				priority = 8,
				use_treesitter = true,
				-- Must be a LIST of tables: setHl only matches when style[1] is a
				-- table or string, and line_num reads hl_name_list[1]. A bare
				-- { fg = ..., bold = true } silently applies no highlight at all.
				style = function()
					return {
						{ fg = fg({ "CursorLineNr", "Special", "Delimiter" }, "#9584CC"), bold = true },
					}
				end,
				exclude_filetypes = exclude_ft,
			},

			blank = {
				enable = false,
			},
		},
	},
}
