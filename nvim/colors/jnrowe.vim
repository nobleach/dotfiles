" Vim colour file
" Name:       jnrowe.vim
" Maintainer: James Rowe <jnrowe@gmail.com>
" Homepage:   https://github.com/JNRowe/vim-jnrowe
"
" This theme is designed for the GUI, but features a /slightly/ more ugly
" terminal mode for 88 colour terms.
"
" The colours are based around the tango palette for the GUI version, but this
" isn’t really a tango theme.  The terminal colours are supposed to be close
" approximations to the GUI settings.
"
" To use a lighter background, :let g:jnrowe_dark = v:false
"
" To disable the statusline mode hook, :let g:jnrowe_mode_statusline = v:false

set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

let s:jnrowe_dark = get(g:, "jnrowe_dark", v:true)

let s:jnrowe_mode_statusline = get(g:, "loaded_airline",
    \                              get(g:, "jnrowe_mode_statusline"))

let g:colors_name = expand('<sfile>:t:r')

" Base colours {{{
highlight Cursor        guibg=#d3d7cf
    \ ctermbg=253
highlight lCursor       guibg=#eeeeec
    \ ctermbg=255
if !s:jnrowe_dark
    highlight NonText   guibg=#555753  guifg=#babdb6
        \ ctermbg=59   ctermfg=250
    highlight Normal    guibg=#454545  guifg=#f4f4f4
        \ ctermbg=238  ctermfg=15
else
    highlight NonText   guibg=#353733  guifg=#babdb6
        \ ctermbg=236  ctermfg=250
    highlight Normal    guibg=#252525  guifg=#f4f4f4
        \ ctermbg=235  ctermfg=15
endif
highlight Visual        guibg=#555753                 gui=bold
    \ ctermbg=59                cterm=bold
" }}}

" Search {{{
highlight IncSearch     guibg=#fce94f  guifg=#cc0000  gui=italic
    \ ctermbg=221  ctermfg=160  cterm=italic
if v:version >= 700
    highlight Matchparen               guifg=#8ae234  gui=bold
        \              ctermfg=113  cterm=bold
endif
highlight Search        guibg=#fce94f  guifg=#a40000  gui=italic
    \ ctermbg=221  ctermfg=124  cterm=italic
" }}}

" Window stuff {{{
highlight CursorColumn  guibg=#888a85
    \ ctermbg=102
highlight CursorLine    guibg=#555753
    \ ctermbg=59
highlight CursorLineNr  guibg=#555753  guifg=#d3d7cf
    \ ctermbg=59   ctermfg=253
highlight FoldColumn    guibg=#4a4a4a  guifg=#dedede
    \ ctermbg=239  ctermfg=253
highlight Folded        guibg=#8090a0  guifg=#111111
    \ ctermbg=103  ctermfg=233
highlight LineNr        guibg=#222222  guifg=#aaaaaa  gui=italic
    \ ctermbg=235  ctermfg=248  cterm=italic
highlight StatusLine    guibg=#4d6884  guifg=#ffffff  gui=bold,underline
    \ ctermbg=24   ctermfg=15   cterm=bold,underline
highlight StatusLineNC  guibg=#263442  guifg=#999999  gui=italic,underline
    \ ctermbg=235  ctermfg=246  cterm=italic,underline
highlight VertSplit     guibg=#a0b0c0  guifg=#a0b0c0
    \ ctermbg=153  ctermfg=153
highlight WildMenu      guibg=#73d216  guifg=#2e3436  gui=italic
    \ ctermbg=112  ctermfg=95   cterm=italic
" }}}

" Signs support {{{
highlight SignColumn    guibg=#2a2a2a
    \ ctermbg=235

highlight SignifySignAdd
    \                   guibg=#babdb6  guifg=#73d216
    \ ctermbg=250  ctermfg=112
highlight SignifySignChange
    \                   guibg=#babdb6  guifg=#f57900
    \ ctermbg=250  ctermfg=208
highlight SignifySignChangeDelete
    \                   guibg=#2e3436  guifg=#f57900
    \ ctermbg=95   ctermfg=208
highlight SignifySignDelete
    \                   guibg=#2e3436  guifg=#cc0000
    \ ctermbg=95   ctermfg=160

highlight SyntasticErrorSign
    \                   guibg=#ef2929  guifg=#eeeeec  gui=undercurl
    \ ctermbg=167  ctermfg=255  cterm=undercurl
highlight SyntasticWarningSign
    \                                  guifg=#ef2929  gui=italic
    \ ctermfg=167               cterm=italic
" }}}

" Command line {{{
highlight ErrorMsg      guibg=#ef2929  guifg=#eeeeec  gui=undercurl
    \ ctermbg=167  ctermfg=255  cterm=undercurl
highlight WarningMsg                   guifg=#ef2929  gui=italic
    \              ctermfg=167  cterm=italic
" }}}

" Popup menu {{{
if v:version >= 700
    highlight Pmenu     guibg=#555753  guifg=#d3d7cf
        \ ctermbg=59   ctermfg=253
    highlight PmenuSbar guibg=#888a85  guifg=#eeeeec
        \ ctermbg=102  ctermfg=255
    highlight PmenuSel  guibg=#73d216  guifg=#2e3436  gui=italic
        \ ctermbg=112  ctermfg=95   cterm=italic
endif
" }}}

" Specials {{{
highlight Special       guifg=#fd8900
    \              ctermfg=208
highlight Title                        guifg=#ffffff  gui=bold
    \              ctermfg=15   cterm=bold
highlight Todo          guibg=#520000  guifg=#e50808  gui=bold
    \ ctermbg=52   ctermfg=160  cterm=bold
" }}}

" Syntax {{{
highlight Comment       guibg=#555753  guifg=#eeeeec  gui=italic
    \ ctermbg=59   ctermfg=255  cterm=italic
highlight Constant                     guifg=#8ae234
    \              ctermfg=113
highlight Error         guibg=#ef2929  guifg=#eeeeec  gui=undercurl
    \ ctermbg=167  ctermfg=255  cterm=undercurl
highlight Function                     guifg=#ce5c00  gui=bold
    \              ctermfg=166  cterm=bold
highlight Identifier                   guifg=#729fcf  gui=bold
    \              ctermfg=74   cterm=bold
highlight Label                        guifg=#888a85
    \              ctermfg=102
highlight Number                       guifg=#d3d7cf  gui=bold
    \              ctermfg=253  cterm=bold
highlight Operator                     guifg=#729fcf  gui=bold
    \              ctermfg=74   cterm=bold
highlight PreProc                      guifg=#edd400  gui=bold
    \              ctermfg=184  cterm=bold
highlight Statement                    guifg=#f57900  gui=bold
    \              ctermfg=208  cterm=bold
highlight String                       guifg=#edd400
    \              ctermfg=11
highlight Test          guibg=#555753  guifg=#edd400
highlight Type                         guifg=#73d216
    \              ctermfg=112
highlight Warning                      guifg=#ef2929  gui=italic
    \              ctermfg=167  cterm=italic
" }}}

" Spelling support {{{
highlight SpellBad      guibg=#ef2929  guifg=#eeeeec  gui=undercurl
    \ ctermbg=167  ctermfg=255  cterm=italic
highlight SpellCap      guibg=#555753  guifg=#edd400
    \ ctermbg=59   ctermfg=255
highlight SpellRare     guibg=#555753  guifg=#edd400  gui=italic
    \ ctermbg=59   ctermfg=255  cterm=italic
highlight SpellLocal    guibg=#555753  guifg=#edd400  gui=bold
    \ ctermbg=59   ctermfg=255  cterm=bold
" }}}

" NERDTree support {{{
highlight Directory     guibg=#555753  guifg=#babdb6
highlight NERDTreeUp                   guifg=#73d216
highlight NERDTreeCWD   guibg=#fce94f  guifg=#a40000  gui=italic
    \ ctermbg=221  ctermfg=124  cterm=italic
" }}}

" Hooks {{{
" I realise people don’t like this type of thing in colourschemes, but I don’t
" care as toggling this correctly is horrendous!
if s:jnrowe_mode_statusline && v:version >= 700
    function! s:InsertColour(mode)
        if a:mode == 'i'
            let bg_colour = "#73d216"
            let tbg_colour = "112"
        elseif a:mode == 'r'
            let bg_colour = "#ef2929"
            let tbg_colour = "167"
        else
            let bg_colour = "#f57900"
            let tbg_colour = "208"
        endif
        execute("highlight StatusLine guibg=" . bg_colour . " gui=underline")
        execute("highlight StatusLine ctermbg=" . tbg_colour . " cterm=underline")
    endfunction

    augroup jnrowe_colour
        autocmd!
        autocmd InsertEnter,InsertChange * call s:InsertColour(v:insertmode)
        autocmd InsertLeave *
            \ highlight StatusLine guibg=#4d6884                 gui=bold,underline
                \ ctermbg=24                cterm=bold,underline
        " When we leave this colourscheme(but we won’t!) drop our events so they
        " don’t interfere with other colourschemes
        function! s:ScrubEvents()
            if g:colors_name !=# "jnrowe" |
                autocmd! jnrowe_color
            endif
        endfunction
        autocmd ColorScheme * call s:ScrubEvents()
    augroup END
endif
" }}}
