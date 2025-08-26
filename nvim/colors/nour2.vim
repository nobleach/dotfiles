""
" nour2 v1.0.0
"

" URL: https://github.com/ibash/nour2
" Author: Islam Sharabash
" License: MIT
""

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif
let g:colors_name="nour2"


let Italic = ""
if exists('g:nour2_italic')
  let Italic = "italic"
endif
let g:nour2_italic = get(g:, 'nour2_italic', 0)

let Bold = ""
if exists('g:nour2_bold')
  let Bold = "bold"
endif

let g:nour2_bold = get(g:, '_bold', 0)

hi @variable guifg=#E0E2EA ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#1c1c1c ctermbg=234 gui=NONE cterm=NONE
hi Cursor guifg=NONE ctermfg=NONE guibg=#626262 ctermbg=241 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#1c1c1c ctermbg=234 gui=underline cterm=underline guisp=#626262
hi DiffAdd guifg=#87af87 ctermfg=108 guibg=#262626 ctermbg=235 gui=reverse cterm=reverse
hi DiffChange guifg=#8787af ctermfg=103 guibg=#262626 ctermbg=235 gui=reverse cterm=reverse
hi DiffDelete guifg=#af5f5f ctermfg=131 guibg=#262626 ctermbg=235 gui=reverse cterm=reverse
hi DiffText guifg=#ff8700 ctermfg=208 guibg=#262626 ctermbg=235 gui=reverse cterm=reverse
hi VertSplit guifg=#444444 ctermfg=238 guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
hi Folded guifg=#a8a8a8 ctermfg=248 guibg=#125CC1 ctermbg=25 gui=NONE cterm=NONE
hi LineNr guifg=#808080 ctermfg=8 guibg=#080808 ctermbg=232 gui=NONE cterm=NONE
hi MatchParen guifg=#afffaf ctermfg=157 guibg=#3a3a3a ctermbg=237 gui=Bold cterm=Bold
hi NonText guifg=#808080 ctermfg=8 guibg=#262626 ctermbg=235 gui=NONE cterm=NONE
hi Normal guifg=#dadada ctermfg=253 guibg=#1c1c1c ctermbg=234 gui=NONE cterm=NONE
hi PMenu guifg=#eeeeee ctermfg=255 guibg=#1c1c1c ctermbg=234 gui=NONE cterm=NONE
hi PMenuSel guifg=#000000 ctermfg=0 guibg=#afd700 ctermbg=148 gui=NONE cterm=NONE
hi NormalFloat guifg=#dadada ctermfg=253 guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
hi SpecialKey guifg=#808080 ctermfg=8 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi StatusLine guifg=#dadada ctermfg=253 guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
hi StatusLineNC guifg=#949494 ctermfg=246 guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
hi Title guifg=#e4e4e4 ctermfg=254 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi Visual guifg=#e4e4e4 ctermfg=254 guibg=#125CC1 ctermbg=25 gui=NONE cterm=NONE
hi Comment guifg=#808080 ctermfg=8 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Constant guifg=#ff8700 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#afd700 ctermfg=148 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#afd700 ctermfg=148 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#ff8700 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#afd700 ctermfg=148 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#eeeeee ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#8787af ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#ff8700 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#ffffd7 ctermfg=230 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#8787af ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#ff8700 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Todo guifg=#8a8a8a ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi @markup.heading guifg=#8787af ctermfg=103 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi link @markup.heading.1.markdown @markup.heading
hi link @markup.heading.2.markdown @markup.heading
hi link @markup.heading.3.markdown @markup.heading
hi link @markup.heading.4.markdown @markup.heading
hi link @markup.heading.5.markdown @markup.heading
hi link @markup.heading.6.markdown @markup.heading
hi @markup.heading.1.marker guifg=#ff8700 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link @markup.heading.2.marker @markup.heading.1.marker
hi link @markup.heading.3.marker @markup.heading.1.marker
hi link @markup.heading.4.marker @markup.heading.1.marker
hi link @markup.heading.5.marker @markup.heading.1.marker
hi link @markup.heading.6.marker @markup.heading.1.marker
hi @markup.italic guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi link @markup.link Underlined
hi @markup.list.unchecked guifg=#8a8a8a ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi @markup.strong guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi pythonOperator guifg=#8787af ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonException guifg=#ff00d7 ctermfg=200 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonImport guifg=#eeeeee ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonBuiltinFunction guifg=#ff00d7 ctermfg=200 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonExClass guifg=#ff00d7 ctermfg=200 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
