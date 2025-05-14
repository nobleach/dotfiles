" Reason Vim Colour Scheme
"
" Copyright (c) 2013, Edd Barrett <vext01@gmail.com>
"
" Permission to use, copy, modify, and/or distribute this software for any
" purpose with or without fee is hereby granted, provided that the above
" copyright notice and this permission notice appear in all copies.
"
" THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
" WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
" MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
" ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
" WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
" ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
" OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

hi clear

let g:colors_name="reason"

" Base Colours
hi Normal       guibg=#d0d9ae	guifg=black

" Vim Features
hi Cursor       guibg=#888888 guifg=black
hi VertSplit    guibg=black guifg=black
hi Folded       guibg=fg guifg=bg
hi LineNr       guifg=brown guibg=#bac29b
hi NonText      guifg=black guibg=#bac29b
hi Search       guibg=#d87a32 guifg=fg
hi IncSearch	guibg=yellow guifg=fg
hi StatusLine   guibg=black guifg=gray80
hi StatusLineNC guibg=black guifg=gray20
hi Visual       guifg=fg guibg=#d87a32
hi ErrorMsg     guifg=bg guibg=fg
hi WarningMsg   guifg=bg guibg=fg
hi Error	guifg=fg guibg=gray30
hi SpecialKey	guifg=fg guibg=bg
hi Directory	guifg=fg guibg=bg gui=bold
hi ModeMsg	guifg=fg guibg=bg gui=bold
hi CursorLine	guibg=#dce6b8
hi Pmenu	guifg=black guibg=#bac29b
hi PmenuSel	guifg=black guibg=#aaaaaa
hi Question	guifg=seagreen guibg=bg
hi MoreMsg	guifg=seagreen guibg=bg
hi DiffDelete	guifg=gray20 guibg=gray5
hi DiffChange	guifg=fg guibg=gray30
hi DiffAdd	guifg=fg guibg=bg
hi DiffText	guifg=black guibg=seagreen gui=None
hi FoldColumn	guifg=fg guibg=bg
hi Title	guifg=fg guibg=bg gui=bold
hi VimHiGroup   guifg=fg guibg=bg gui=None
hi VimHiLink    guifg=fg guibg=bg gui=None
hi VimGroup     guifg=fg guibg=bg gui=None
hi Underlined	guifg=brown guibg=bg gui=bold
hi SpellBad	guibg=bg gui=undercurl guisp=red
hi SpellCap	guibg=bg gui=undercurl guisp=red
hi SpellRare	guibg=bg gui=undercurl guisp=red
hi SpellLocal	guibg=bg gui=undercurl guisp=red
hi HelpStar	guibg=bg guifg=fg gui=None

" Language Features
hi String guifg=#707070 guibg=bg
hi pythonSpaceError guibg=#bac29b guifg=fg
hi pythonBuiltin guibg=bg guifg=fg gui=italic
hi pythonStatement guibg=bg guifg=fg gui=italic
hi Identifier	guifg=fg guibg=bg
hi Function     guifg=brown guibg=bg
hi Comment      guifg=seagreen guibg=bg
hi javaCommentTitle guifg=seagreen guibg=bg
hi javaScopeDecl guifg=brown guibg=bg
hi javaConditional guifg=brown guibg=bg
hi javaStorageClass guifg=brown guibg=bg
hi javaOperator guifg=brown guibg=bg
hi pythonExceptions guifg=brown guibg=bg
hi pythonException guifg=brown guibg=bg
hi pythonConditional guifg=brown guibg=bg
hi vimHiGui guifg=brown guibg=bg
hi vimHiGuiFgBg guifg=brown guibg=bg
hi vimHighLight guifg=brown guibg=bg
hi vimLet guifg=brown guibg=bg
hi vimOper guifg=brown guibg=bg
hi javaType guifg=brown guibg=bg
hi Constant     guifg=fg guibg=bg
hi Statement    gui=italic
hi PreProc      guifg=fg gui=bold guibg=bg
hi Todo         guibg=seagreen guifg=bg
hi cTodo        guibg=seagreen guifg=bg
hi ColorColumn	guibg=#bac29b guifg=fg
hi texMathZoneW	guibg=bg guifg=fg
hi texMathOper	guibg=bg guifg=fg

" File Manager
hi netrwMarkFile	guifg=fg guibg=seagreen
