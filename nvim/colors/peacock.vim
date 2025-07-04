"########################################
"########################################
" Peacock (rainglow)
"
" https://github.com/rainglow/vim
"
" Copyright (c) Dayle Rees.
"########################################
"########################################


"########################################
"# Settings.                            #
"########################################

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "peacock"

"########################################
"# Base Colors.                         #
"########################################

hi Cursor         guifg=#2b2a27 guibg=#f7b83d gui=NONE
hi Visual         guifg=#ffffff guibg=#ff5d38 gui=NONE
hi CursorLine     guifg=NONE guibg=#33322e gui=NONE
hi CursorLineNr   guifg=#bcd42a guibg=NONE gui=NONE
hi CursorColumn   guifg=NONE guibg=#181816 gui=NONE
hi SignColumn     guifg=NONE guibg=#1D1D1A gui=NONE
hi ColorColumn    guifg=NONE guibg=#10100f gui=NONE
hi LineNr         guifg=#7a7267 guibg=#1e1d1b gui=NONE
hi VertSplit      guifg=#46443f guibg=#46443f gui=NONE
hi MatchParen     guifg=#ff5d38 guibg=NONE gui=underline
hi StatusLine     guifg=#ede0ce guibg=#1e1d1b gui=bold
hi StatusLineNC   guifg=#ede0ce guibg=#1e1d1b gui=NONE
hi Pmenu          guifg=#ede0ce guibg=#1e1d1b gui=NONE
hi PmenuSel       guifg=NONE guibg=#26a6a6 gui=NONE
hi IncSearch      guifg=#10100f guibg=#bcd42a gui=NONE
hi CurSearch      guifg=#10100f guibg=#26a6a6 gui=NONE
hi Search         guifg=#10100f guibg=#26a6a6 gui=NONE
hi Directory      guifg=#26a6a6 guibg=NONE gui=NONE
hi Folded         guifg=#e6d4bb guibg=#10100f gui=NONE
hi Normal         guifg=#e6d4bb guibg=#2b2a27 gui=NONE
hi Boolean        guifg=#bcd42a guibg=NONE gui=NONE
hi Character      guifg=#bcd42a guibg=NONE gui=NONE
hi Comment        guifg=#7a7267 guibg=NONE gui=italic
hi Conditional    guifg=#26a6a6 guibg=NONE gui=NONE
hi Constant       guifg=NONE guibg=NONE gui=NONE
hi Define         guifg=#26a6a6 guibg=NONE gui=NONE
hi DiffAdd        guifg=#10100f guibg=#bcd42a gui=bold
hi DiffDelete     guifg=#ede0ce guibg=#ff5d38 gui=NONE
hi DiffChange     guifg=#10100f guibg=#f7b83d gui=NONE
hi DiffText       guifg=#53514b guibg=#f7b83d gui=bold
hi ErrorMsg       guifg=#ede0ce guibg=#e61f44 gui=NONE
hi WarningMsg     guifg=#10100f guibg=#f7b83d gui=NONE
hi Float          guifg=#bcd42a guibg=#2b2a27 gui=NONE
hi NormalFloat    guifg=#ede0ce guibg=#2b2a27 gui=NONE
hi FloatBorder    guifg=#26a6a6 guibg=#2b2a27 gui=NONE
hi Function       guifg=#26a6a6 guibg=NONE gui=bold
hi Identifier     guifg=#ede0ce guibg=NONE gui=NONE
hi Keyword        guifg=#26a6a6 guibg=NONE gui=NONE
hi Label          guifg=#bcd42a guibg=NONE gui=NONE
hi NonText        guifg=#2B2A26 guibg=#262522 gui=NONE
hi Number         guifg=#bcd42a guibg=NONE gui=NONE
hi Operator       guifg=#ede0ce guibg=NONE gui=NONE
hi PreProc        guifg=#a0988e guibg=NONE gui=NONE
hi Special        guifg=#ede0ce guibg=NONE gui=NONE
hi SpecialKey     guifg=#ede0ce guibg=#26a6a6 gui=NONE
hi Statement      guifg=#26a6a6 guibg=NONE gui=NONE
hi StorageClass   guifg=#ff5d38 guibg=NONE gui=NONE
hi String         guifg=#bcd42a guibg=NONE gui=NONE
hi Tag            guifg=#26a6a6 guibg=NONE gui=NONE
hi Title          guifg=#26a6a6 guibg=NONE gui=bold
hi Todo           guifg=#a0988e guibg=NONE gui=inverse,bold
hi Type           guifg=NONE guibg=NONE gui=NONE
hi Underlined     guifg=NONE guibg=NONE gui=underline
hi TabLine        guifg=#ede0ce guibg=NONE gui=NONE
hi TabLineSel     guifg=#10100f guibg=#26a6a6 gui=NONE
hi TabLineFill    guifg=#2B2A27 guibg=NONE gui=NONE

"########################################
" # Diagnostics
"########################################
hi DiagnosticSignError guifg=#e61f44 guibg=NONE gui=NONE
hi DiagnosticVirtualTextError guifg=#ede0ce guibg=#e61f44 gui=NONE
hi DiagnosticSignWarn guifg=#f7b83d guibg=NONE gui=NONE
hi DiagnosticVirtualTextWarn guifg=#2B2A26 guibg=#f7b83d gui=NONE
hi DiagnosticSignInfo guifg=#26a6a6 guibg=NONE gui=NONE
hi DiagnosticVirtualTextInfo guifg=#2B2A26 guibg=#26a6a6 gui=NONE
hi DiagnosticSignHint guifg=#bcd42a guibg=NONE gui=NONE
hi DiagnosticVirtualTextHint guifg=#2B2A26 guibg=#bcd42a gui=NONE

"########################################
"# Snacks                               #
"########################################

hi SnacksPicker              guibg=NONE
hi SnacksPickerBorder        guifg=#26a6a6 guibg=NONE
hi SnacksBackDrop            guibg=#2b2a27
hi SnacksIndent              guifg=#53514b guibg=NONE
hi SnacksIndentBlank         guifg=#a0988e guibg=NONE
hi SnacksPickerDir           guifg=#a0988e guibg=NONE
hi SnacksPickerPathHidden    guifg=#a0988e guibg=NONE
hi LazyProgressDone guifg=#bcd42a guibg=NONE

"########################################
"# Language Overrides                   #
"########################################

hi phpIdentifier     guifg=#ede0ce
hi phpMethodsVar     guifg=#dddcda
hi xmlTag            guifg=#26a6a6 guibg=NONE gui=NONE
hi xmlTagName        guifg=#26a6a6 guibg=NONE gui=NONE
hi xmlEndTag         guifg=#26a6a6 guibg=NONE gui=NONE

hi NeogitDiffAddHighlight guifg=#10100f guibg=#bcd42a gui=bold
hi NeogitDiffDeleteHighlight guifg=#10100f guibg=#ff5d38 gui=bold
