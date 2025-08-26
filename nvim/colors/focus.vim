hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "focus"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi NonText ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi Comment ctermbg=0 ctermfg=7 cterm=NONE guibg=#001e26 guifg=#6a9955 gui=NONE
    hi Constant ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi Error ctermbg=0 ctermfg=9 cterm=NONE guibg=#001e26 guifg=#d33934 gui=NONE
    hi Identifier ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi Ignore ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi PreProc ctermbg=0 ctermfg=15 cterm=bold guibg=#001e26 guifg=#9bc1c2 gui=bold
    hi Special ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi Statement ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi String ctermbg=0 ctermfg=8 cterm=NONE guibg=#001e26 guifg=#76929b gui=NONE
    hi Todo ctermbg=0 ctermfg=12 cterm=bold guibg=#001e26 guifg=#3b80a1 gui=bold
    hi Type ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi Underlined ctermbg=0 ctermfg=15 cterm=underline guibg=#001e26 guifg=#9bc1c2 gui=underline
    hi StatusLine ctermbg=6 ctermfg=15 cterm=NONE guibg=#2d555a guifg=#9bc1c2 gui=NONE
    hi StatusLineNC ctermbg=0 ctermfg=15 cterm=underline guibg=#001e26 guifg=#9bc1c2 gui=underline
    hi VertSplit ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi TabLine ctermbg=6 ctermfg=15 cterm=NONE guibg=#2d555a guifg=#9bc1c2 gui=NONE
    hi TabLineFill ctermbg=6 ctermfg=15 cterm=NONE guibg=#2d555a guifg=#9bc1c2 gui=NONE
    hi TabLineSel ctermbg=2 ctermfg=15 cterm=NONE guibg=#063a38 guifg=#9bc1c2 gui=NONE
    hi Title ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi CursorLine ctermbg=2 ctermfg=NONE cterm=NONE guibg=#063a38 guifg=NONE gui=NONE
    hi LineNr ctermbg=2 ctermfg=7 cterm=NONE guibg=#001e26 guifg=#5b7a80 gui=NONE
    hi CursorLineNr ctermbg=0 ctermfg=10 cterm=NONE guibg=#001e26 guifg=#51a163 gui=NONE
    hi helpLeadBlank ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi helpNormal ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi Visual ctermbg=11 ctermfg=15 cterm=NONE guibg=#3b80a1 guifg=#9bc1c2 gui=NONE
    hi VisualNOS ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi Pmenu ctermbg=6 ctermfg=15 cterm=NONE guibg=#2d555a guifg=#9bc1c2 gui=NONE
    hi PmenuSbar ctermbg=2 ctermfg=15 cterm=NONE guibg=#063a38 guifg=#9bc1c2 gui=NONE
    hi PmenuSel ctermbg=12 ctermfg=15 cterm=NONE guibg=#3b80a1 guifg=#9bc1c2 gui=NONE
    hi PmenuThumb ctermbg=10 ctermfg=15 cterm=NONE guibg=#51a163 guifg=#9bc1c2 gui=NONE
    hi FoldColumn ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi Folded ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi WildMenu ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi SpecialKey ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi DiffAdd ctermbg=10 ctermfg=15 cterm=NONE guibg=#51a163 guifg=#9bc1c2 gui=NONE
    hi DiffChange ctermbg=12 ctermfg=15 cterm=NONE guibg=#3b80a1 guifg=#9bc1c2 gui=NONE
    hi DiffDelete ctermbg=9 ctermfg=15 cterm=NONE guibg=#d33934 guifg=#9bc1c2 gui=NONE
    hi DiffText ctermbg=10 ctermfg=15 cterm=NONE guibg=#51a163 guifg=#9bc1c2 gui=NONE
    hi IncSearch ctermbg=10 ctermfg=15 cterm=NONE guibg=#51a163 guifg=#9bc1c2 gui=NONE
    hi Search ctermbg=10 ctermfg=15 cterm=NONE guibg=#51a163 guifg=#9bc1c2 gui=NONE
    hi Directory ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi MatchParen ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi SpellBad ctermbg=0 ctermfg=9 cterm=underline guibg=#001e26 guifg=#d33934 gui=underline guisp=#d33934
    hi SpellCap ctermbg=0 ctermfg=15 cterm=underline guibg=#001e26 guifg=#9bc1c2 gui=underline guisp=#3b80a1
    hi SpellLocal ctermbg=0 ctermfg=15 cterm=underline guibg=#001e26 guifg=#9bc1c2 gui=underline guisp=#ff00ff
    hi SpellRare ctermbg=0 ctermfg=15 cterm=underline guibg=#001e26 guifg=#9bc1c2 gui=underline guisp=#00ffff
    hi ColorColumn ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi SignColumn ctermbg=2 ctermfg=15 cterm=NONE guibg=#063a38 guifg=#9bc1c2 gui=NONE
    hi ErrorMsg ctermbg=9 ctermfg=15 cterm=NONE guibg=#d33934 guifg=#9bc1c2 gui=NONE
    hi ModeMsg ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi MoreMsg ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi Question ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi Cursor ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi CursorColumn ctermbg=2 ctermfg=NONE cterm=NONE guibg=#063a38 guifg=NONE gui=NONE
    hi QuickFixLine ctermbg=2 ctermfg=15 cterm=NONE guibg=#063a38 guifg=#9bc1c2 gui=NONE
    hi Conceal ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi ToolbarLine ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi ToolbarButton ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi debugPC ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
    hi debugBreakpoint ctermbg=0 ctermfg=15 cterm=NONE guibg=#001e26 guifg=#9bc1c2 gui=NONE
endif

hi link EndOfBuffer NonText
hi link Number Constant
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link WarningMsg Error
hi link CursorIM Cursor
hi link Terminal Normal
hi link diffAdded DiffAdd
hi link diffRemoved DiffDelete
hi link clojureParen Comment
hi link rustCommentLineDoc rustCommentLine

let g:terminal_ansi_colors = [
        \ '#000000',
        \ '#800000',
        \ '#008000',
        \ '#808000',
        \ '#000080',
        \ '#800080',
        \ '#008080',
        \ '#c0c0c0',
        \ '#808080',
        \ '#d33934',
        \ '#51a163',
        \ '#969c46',
        \ '#3b80a1',
        \ '#ff00ff',
        \ '#00ffff',
        \ '#ffffff',
        \ ]
