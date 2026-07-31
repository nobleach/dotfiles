vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.o.background = "dark"
vim.g.colors_name = "emberforge"

local p = {
	bg = "#0B0D12",
	bg_alt = "#10141C",
	surface = "#151A24",
	surface_alt = "#1B2230",
	selection = "#263249",

	fg = "#D8DEE9",
	fg_dim = "#AAB4C3",
	muted = "#667085",
	border = "#303A4C",

	red = "#FF5C57",
	red_soft = "#E87470",
	orange = "#FF9F43",
	yellow = "#F6C177",
	blue = "#61A8FF",
	cyan = "#59C9E8",
	green = "#70C99A",
	black = "#080A0E",
}

local function hl(group, options)
	vim.api.nvim_set_hl(0, group, options)
end

local function link(group, target)
	hl(group, { link = target })
end

-- Editor interface
local editor = {
	Normal = { fg = p.fg, bg = p.bg },
	NormalNC = { fg = p.fg_dim, bg = p.bg },
	NormalFloat = { fg = p.fg, bg = p.bg_alt },
	FloatBorder = { fg = p.blue, bg = p.bg_alt },
	FloatTitle = { fg = p.orange, bg = p.bg_alt, bold = true },

	Cursor = { fg = p.bg, bg = p.fg },
	CursorLine = { bg = p.surface },
	CursorColumn = { bg = p.surface },
	ColorColumn = { bg = p.surface },
	CursorLineNr = { fg = p.orange, bold = true },
	LineNr = { fg = p.muted },
	SignColumn = { fg = p.muted, bg = p.bg },
	FoldColumn = { fg = p.blue, bg = p.bg },
	Folded = { fg = p.fg_dim, bg = p.surface },

	Visual = { bg = p.selection },
	VisualNOS = { bg = p.selection },
	Search = { fg = p.black, bg = p.orange, bold = true },
	IncSearch = { fg = p.black, bg = p.red, bold = true },
	CurSearch = { fg = p.black, bg = p.red, bold = true },
	Substitute = { fg = p.black, bg = p.cyan },

	MatchParen = { fg = p.orange, bg = p.surface_alt, bold = true },
	NonText = { fg = p.border },
	SpecialKey = { fg = p.border },
	Whitespace = { fg = p.border },
	EndOfBuffer = { fg = p.bg },

	WinSeparator = { fg = p.border },
	VertSplit = { fg = p.border },
	Directory = { fg = p.blue, bold = true },
	Title = { fg = p.orange, bold = true },
	Question = { fg = p.blue },
	MoreMsg = { fg = p.blue },
	ModeMsg = { fg = p.orange, bold = true },
	WarningMsg = { fg = p.orange },
	ErrorMsg = { fg = p.red, bold = true },

	StatusLine = { fg = p.fg, bg = p.surface_alt },
	StatusLineNC = { fg = p.muted, bg = p.surface },
	TabLine = { fg = p.muted, bg = p.surface },
	TabLineFill = { bg = p.bg_alt },
	TabLineSel = { fg = p.orange, bg = p.surface_alt, bold = true },
	WinBar = { fg = p.fg_dim, bg = p.bg },
	WinBarNC = { fg = p.muted, bg = p.bg },

	Pmenu = { fg = p.fg, bg = p.bg_alt },
	PmenuSel = { fg = p.black, bg = p.blue, bold = true },
	PmenuSbar = { bg = p.surface },
	PmenuThumb = { bg = p.border },
	WildMenu = { fg = p.black, bg = p.orange },

	QuickFixLine = { bg = p.surface_alt, bold = true },
	Conceal = { fg = p.cyan },
	Added = { fg = p.green },
	Changed = { fg = p.blue },
	Removed = { fg = p.red },

	DiffAdd = { fg = p.green, bg = "#10231C" },
	DiffChange = { fg = p.blue, bg = "#122033" },
	DiffDelete = { fg = p.red, bg = "#291417" },
	DiffText = { fg = p.orange, bg = "#302317", bold = true },
}

for group, options in pairs(editor) do
	hl(group, options)
end

-- Traditional syntax
local syntax = {
	Comment = { fg = p.muted, italic = true },

	Constant = { fg = p.orange },
	String = { fg = p.yellow },
	Character = { fg = p.yellow },
	Number = { fg = p.orange },
	Boolean = { fg = p.red_soft, bold = true },
	Float = { fg = p.orange },

	Identifier = { fg = p.fg },
	Function = { fg = p.blue },

	Statement = { fg = p.red_soft },
	Conditional = { fg = p.red, bold = true },
	Repeat = { fg = p.red, bold = true },
	Label = { fg = p.orange },
	Operator = { fg = p.cyan },
	Keyword = { fg = p.red_soft },
	Exception = { fg = p.red, bold = true },

	PreProc = { fg = p.orange },
	Include = { fg = p.red_soft },
	Define = { fg = p.orange },
	Macro = { fg = p.orange },

	Type = { fg = p.blue },
	StorageClass = { fg = p.red_soft },
	Structure = { fg = p.blue },
	Typedef = { fg = p.blue },

	Special = { fg = p.orange },
	SpecialChar = { fg = p.orange },
	Tag = { fg = p.red_soft },
	Delimiter = { fg = p.fg_dim },
	Debug = { fg = p.red },

	Underlined = { fg = p.blue, underline = true },
	Ignore = { fg = p.muted },
	Error = { fg = p.red, bold = true },
	Todo = { fg = p.black, bg = p.orange, bold = true },
}

for group, options in pairs(syntax) do
	hl(group, options)
end

-- Treesitter
local treesitter = {
	["@variable"] = { fg = p.fg },
	["@variable.builtin"] = { fg = p.red_soft, italic = true },
	["@variable.member"] = { fg = p.cyan },
	["@constant"] = { fg = p.orange },
	["@constant.builtin"] = { fg = p.orange, bold = true },

	["@module"] = { fg = p.blue },
	["@label"] = { fg = p.orange },

	["@string"] = { fg = p.yellow },
	["@string.escape"] = { fg = p.orange },
	["@string.regexp"] = { fg = p.cyan },
	["@character"] = { fg = p.yellow },
	["@boolean"] = { fg = p.red_soft, bold = true },
	["@number"] = { fg = p.orange },

	["@type"] = { fg = p.blue },
	["@type.builtin"] = { fg = p.blue, italic = true },
	["@constructor"] = { fg = p.orange },

	["@attribute"] = { fg = p.orange },
	["@property"] = { fg = p.cyan },

	["@function"] = { fg = p.blue },
	["@function.builtin"] = { fg = p.blue, italic = true },
	["@function.call"] = { fg = p.blue },
	["@function.method"] = { fg = p.blue },
	["@function.method.call"] = { fg = p.blue },

	["@keyword"] = { fg = p.red_soft },
	["@keyword.function"] = { fg = p.red_soft },
	["@keyword.operator"] = { fg = p.red_soft },
	["@keyword.return"] = { fg = p.red, bold = true },
	["@keyword.conditional"] = { fg = p.red },
	["@keyword.repeat"] = { fg = p.red },
	["@keyword.exception"] = { fg = p.red },

	["@operator"] = { fg = p.cyan },
	["@punctuation.delimiter"] = { fg = p.fg_dim },
	["@punctuation.bracket"] = { fg = p.fg_dim },
	["@punctuation.special"] = { fg = p.orange },

	["@comment"] = { fg = p.muted, italic = true },
	["@comment.todo"] = { fg = p.black, bg = p.orange, bold = true },
	["@comment.note"] = { fg = p.black, bg = p.blue, bold = true },
	["@comment.warning"] = { fg = p.black, bg = p.orange, bold = true },
	["@comment.error"] = { fg = p.black, bg = p.red, bold = true },

	["@tag"] = { fg = p.red_soft },
	["@tag.attribute"] = { fg = p.orange },
	["@tag.delimiter"] = { fg = p.fg_dim },

	["@markup.heading"] = { fg = p.orange, bold = true },
	["@markup.strong"] = { bold = true },
	["@markup.italic"] = { italic = true },
	["@markup.link"] = { fg = p.blue, underline = true },
	["@markup.raw"] = { fg = p.yellow },
	["@markup.list"] = { fg = p.red_soft },
}

for group, options in pairs(treesitter) do
	hl(group, options)
end

-- Diagnostics and LSP
hl("DiagnosticError", { fg = p.red })
hl("DiagnosticWarn", { fg = p.orange })
hl("DiagnosticInfo", { fg = p.blue })
hl("DiagnosticHint", { fg = p.cyan })
hl("DiagnosticOk", { fg = p.green })

hl("DiagnosticUnderlineError", { sp = p.red, undercurl = true })
hl("DiagnosticUnderlineWarn", { sp = p.orange, undercurl = true })
hl("DiagnosticUnderlineInfo", { sp = p.blue, undercurl = true })
hl("DiagnosticUnderlineHint", { sp = p.cyan, undercurl = true })
hl("DiagnosticDeprecated", { sp = p.muted, strikethrough = true })

hl("LspReferenceText", { bg = p.surface_alt })
hl("LspReferenceRead", { bg = p.surface_alt })
hl("LspReferenceWrite", { bg = p.surface_alt, underline = true })
hl("LspInlayHint", { fg = p.muted, bg = p.surface })

-- Git
hl("GitSignsAdd", { fg = p.green })
hl("GitSignsChange", { fg = p.blue })
hl("GitSignsDelete", { fg = p.red })
link("GitSignsCurrentLineBlame", "Comment")

-- Telescope
hl("TelescopeNormal", { fg = p.fg, bg = p.bg_alt })
hl("TelescopeBorder", { fg = p.border, bg = p.bg_alt })
hl("TelescopePromptNormal", { fg = p.fg, bg = p.surface })
hl("TelescopePromptBorder", { fg = p.orange, bg = p.surface })
hl("TelescopePromptTitle", { fg = p.black, bg = p.orange, bold = true })
hl("TelescopePreviewTitle", { fg = p.black, bg = p.blue, bold = true })
hl("TelescopeResultsTitle", { fg = p.black, bg = p.red_soft, bold = true })
hl("TelescopeSelection", { bg = p.surface_alt, bold = true })
hl("TelescopeMatching", { fg = p.orange, bold = true })

-- Completion menus
hl("CmpItemAbbr", { fg = p.fg })
hl("CmpItemAbbrMatch", { fg = p.blue, bold = true })
hl("CmpItemAbbrMatchFuzzy", { fg = p.cyan, bold = true })
hl("CmpItemKindFunction", { fg = p.blue })
hl("CmpItemKindMethod", { fg = p.blue })
hl("CmpItemKindVariable", { fg = p.fg })
hl("CmpItemKindClass", { fg = p.orange })
hl("CmpItemKindInterface", { fg = p.orange })
hl("CmpItemKindKeyword", { fg = p.red_soft })

-- Common plugin highlights
hl("WhichKey", { fg = p.blue })
hl("WhichKeyGroup", { fg = p.orange })
hl("WhichKeyDesc", { fg = p.fg })
hl("WhichKeySeparator", { fg = p.muted })

hl("IndentBlanklineChar", { fg = p.surface_alt })

hl("IblIndent", { fg = p.surface_alt })
hl("IblScope", { fg = p.blue })

hl("TodoFgTODO", { fg = p.orange, bold = true })
hl("TodoFgNOTE", { fg = p.blue, bold = true })
hl("TodoFgWARN", { fg = p.orange, bold = true })
hl("TodoFgFIX", { fg = p.red, bold = true })

-- Terminal colors
vim.g.terminal_color_0 = p.black
vim.g.terminal_color_1 = p.red
vim.g.terminal_color_2 = p.green
vim.g.terminal_color_3 = p.orange
vim.g.terminal_color_4 = p.blue
vim.g.terminal_color_5 = p.red_soft
vim.g.terminal_color_6 = p.cyan
vim.g.terminal_color_7 = p.fg_dim
vim.g.terminal_color_8 = p.muted
vim.g.terminal_color_9 = "#FF7772"
vim.g.terminal_color_10 = "#8ADCAD"
vim.g.terminal_color_11 = "#FFB866"
vim.g.terminal_color_12 = "#83BBFF"
vim.g.terminal_color_13 = "#EF918D"
vim.g.terminal_color_14 = "#79D9EE"
vim.g.terminal_color_15 = p.fg
