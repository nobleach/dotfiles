-- Author: Tim Carlsson

local colors = {
    bg = "#14171f",
    selection = "#1c212d",
    bg_lighter = "#3d475f",
    fg = "#cbd5e0",
    green = "#7cc080",
    yellow = "#FCE094",
    red = "#FFC0B9",
    slate = "#718096",
    comment = "#40495a",
    orange = "#d7935b",
    cyan = "#52becc",
    cream = "#ffeab7",
    grey = "#939bad",
}

-- my name is tim
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
vim.o.background = "dark"
vim.g.colors_name = "cynosure-dark"

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- WIP
hl("Normal",  { fg = colors.fg, bg = colors.bg })
hl("Comment", { fg = colors.comment, italic = true })
hl("Visual",  { bg = colors.bg_lighter })

hl("Constant", { fg = colors.orange })
hl("String",   { fg = colors.green })
hl("Number",   { fg = colors.orange })
hl("Boolean",  { fg = colors.orange })
hl("Float",    { fg = colors.orange })

hl("Identifier", { fg = colors.fg })
hl("Function",   { fg = colors.grey })

hl("Statement",   { fg = colors.cyan })
hl("Conditional", { fg = colors.cyan })
hl("Repeat",      { fg = colors.cyan })
hl("Label",       { fg = colors.cyan })
hl("Operator",    { fg = colors.fg })
hl("Keyword",     { fg = colors.cyan, bold = true })
hl("Exception",   { fg = colors.cyan })

hl("Type",         { fg = colors.cream })
hl("StorageClass", { fg = colors.cream })
hl("Structure",    { fg = colors.cream })
hl("Typedef",      { fg = colors.cream })

hl("Special",        { fg = colors.fg })
hl("SpecialChar",    { fg = colors.fg })
hl("Tag",            { fg = colors.fg })
hl("Delimiter",      { fg = colors.fg })
hl("SpecialComment", { fg = colors.fg })
hl("Debug",          { fg = colors.fg })

hl("Underlined", { fg = colors.fg })
hl("Ignore",     { fg = colors.fg })
hl("Error",      { fg = colors.red })
hl("Todo",       { fg = colors.yellow })

hl("Added",   { fg = colors.green })
hl("Changed", { fg = colors.yellow })
hl("Removed", { fg = colors.red })

hl("SignColumn",   { bg = colors.bg, fg = colors.slate })
hl("FoldColumn",   { bg = colors.bg, fg = colors.slate })
hl("LineNr",       { fg = colors.bg_lighter })
hl("CursorLine",   { bg = colors.selection  })
hl("CursorLineNr", { fg = colors.cyan })
hl("Directory",    { fg = colors.cyan })
hl("Question",     { fg = colors.orange })

hl("Tag", { fg = colors.fg })
hl("Ignore", { fg = colors.bg })

hl("NormalFloat", { fg = colors.fg, bg = colors.selection })
hl("FloatBorder", { fg = colors.orange, bg = colors.selection })

hl("Pmenu",      { fg = colors.fg, bg = colors.selection })
hl("PmenuSel",   { fg = colors.bg, bg = colors.orange, bold = true })
hl("PmenuSbar",  { bg = colors.selection })
hl("PmenuThumb", { bg = colors.slate })

hl("StatusLine",   { fg = colors.fg, bg = colors.selection })
hl("StatusLineNC", { fg = colors.slate, bg = colors.bg }) -- Dimmed for inactive

hl("WinBar",   { fg = colors.fg, bg = colors.selection })
hl("WinBarNC", { fg = colors.slate, bg = colors.bg })

hl("ModeMsg", { fg = colors.orange, bold = true })

hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow })
hl("DiagnosticVirtualTextError", { fg = colors.red, bg = "NONE" })
hl("DiagnosticVirtualTextWarn",  { fg = colors.yellow, bg = "NONE" })
hl("DiagnosticVirtualTextInfo",  { fg = colors.cyan, bg = "NONE" })
hl("DiagnosticVirtualTextHint",  { fg = colors.slate, bg = "NONE" })
