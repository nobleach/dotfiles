set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "shadowmoth"

" Vim >= 7.0 specific colors
if version >= 700
  hi   CursorLine     ctermbg=236 guibg=#303030
  hi   ColorColumn    ctermbg=236 guibg=#303030
  hi   CursorColumn   ctermbg=236 guibg=#303030

  hi   MatchParen     ctermfg=None    ctermbg=237   cterm=bold    guifg=NONE    guibg=#3a3a3a
  hi   Pmenu          ctermfg=white   ctermbg=235                 guifg=#ffffff guibg=#262626
  hi   PmenuSel       ctermfg=none    ctermbg=124   cterm=none    guifg=NONE    guibg=#af0000
endif

"TODO 204 fancy pink, find usage :)
" General colors

hi   TabLineFill   ctermfg=0     ctermbg=0                guifg=#000000 guibg=#000000
hi   TabLine       ctermfg=248   ctermbg=0     cterm=none guifg=#a8a8a8 guibg=#000000 gui=NONE
hi   TabLineSel    ctermfg=111   ctermbg=233   cterm=none guifg=#87afff guibg=#121212

hi Cursor       guifg=NONE    guibg=#606060 gui=none ctermbg=241
hi NonText      guifg=#808080 guibg=#262626 gui=none ctermfg=244 ctermbg=235

hi LineNr ctermfg=244 ctermbg=232 guifg=#808080 guibg=#080808
hi Normal ctermfg=253 ctermbg=233 guifg=#dadada guibg=#121212

hi Search     ctermfg=black ctermbg=cyan gui=REVERSE  guibg=NONE  guifg=#00ffff
hi IncSearch  cterm=reverse ctermfg=red  ctermbg=none gui=REVERSE guibg=NONE guifg=#ef2929
hi SignColumn ctermbg=0     guibg=#000000

hi WildMenu     cterm=reverse,bold ctermfg=red ctermbg=none gui=REVERSE,BOLD guifg=#ef2929 guibg=NONE
hi StatusLine   ctermbg=236 cterm=bold guibg=#303030 gui=BOLD
hi StatusLineNC ctermbg=235 cterm=none guibg=#262626

hi VertSplit    ctermfg=238 ctermbg=238 guifg=#444444 guibg=#444444
hi Folded       ctermbg=0   ctermfg=248 guibg=#000000 guifg=#a8a8a8
hi FoldColumn   ctermfg=0               guibg=#000000

hi Title        guifg=#f6f3e8 guibg=NONE    gui=bold ctermfg=254 cterm=bold
hi Visual       guifg=#faf4c6 guibg=#3c414c gui=none ctermfg=254 ctermbg=4
hi SpecialKey   guifg=#808080 guibg=#202020 gui=none ctermfg=244 ctermbg=236

" Syntax highlighting
hi Comment    guifg=#808080 gui=italic ctermfg=244
hi Todo       guifg=#ff5f87 guibg=NONE cterm=reverse ctermfg=green ctermbg=none
hi Boolean    guifg=#b1d631 gui=none ctermfg=148
hi String     guifg=#afd787 gui=none ctermfg=150
hi Identifier guifg=#b1d631 gui=none ctermfg=148
hi Function   guifg=#ffffff gui=none ctermfg=255
hi Type       guifg=#7e8aa2 gui=none ctermfg=103
hi Statement  guifg=#7e8aa2 gui=none ctermfg=103
hi Keyword    guifg=#ff9800 gui=none ctermfg=208
hi Constant   guifg=#ff9800 gui=none ctermfg=208
hi Number     guifg=#ff9800 gui=none ctermfg=208
hi Special    guifg=#ff9800 gui=none ctermfg=208
hi PreProc    guifg=#faf4c6 gui=none ctermfg=230

" NERDTree colors
hi NERDTreeFile     guifg=#bcbcbc ctermfg=250
hi NERDTreeDir      guifg=#87afff ctermfg=111
hi NERDTreeUp       guifg=#5f5fd7 ctermfg=62

hi def link NERDTreeOpenable String
hi def link NERDTreeCloseable NERDTreeOpenable
hi def link NERDTreeCWD String
hi def link NERDTreePart String

" .diff
hi diffAdded   ctermfg=green cterm=none guifg=#5fff00
hi diffRemoved ctermfg=red   cterm=none guifg=#ff4444

" vimdiff
hi diffAdd    ctermfg=bg    ctermbg=green cterm=None guifg=bg      guibg=#5fff00
hi diffDelete ctermfg=white ctermbg=red   cterm=None guifg=#ffffff guibg=#ff4444
hi diffChange ctermfg=bg    ctermbg=38    cterm=None guifg=bg      guibg=#00afd7
hi diffText   ctermfg=bg    ctermbg=cyan  cterm=None guifg=bg      guibg=#00ffff

"====== Fugitive
hi gitcommitDiscardedFile ctermfg=red   guifg=#ff4444
hi gitcommitSelectedFile  ctermfg=green guifg=#5fff00

"====== Code-specific colors
hi pythonOperator guifg=#7e8aa2 gui=none ctermfg=103

"= Ruby

hi rubyInstanceVariable ctermfg=203 guifg=#ff5f5f
hi rubySymbol ctermfg=208 guifg=#ff8700

"= Javascript

hi link javascriptAServices NONE
hi javascriptAServices ctermfg=yellow guifg=#ffff00

hi link jsStringS NONE
hi jsStringS ctermfg=150 guifg=#afd787

hi link jsStringD NONE
hi jsStringD ctermfg=150 guifg=#afd787

hi jsLineComment ctermfg=244 guifg=#808080

"= HTML

hi htmlLink ctermfg=203 guifg=#ff5f5f

"= Markdown --- gabrielelana/vim-markdown

hi markdownLinkText ctermfg=203 guifg=#ff5f5f
