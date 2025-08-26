" Jimbo (my personal theme) Theme for Vim
"
" templated from and somewhat inspired by:
" https://github.com/dr-sooch/gruber-darker-vim
" which was adapted from an Emacs theme:
" https://github.com/rexim/gruber-darker-theme
"
" some of it could be written better but idc, it works :)
"
" --------------------------------------------

" setup and options for italics, bold, transparent, gitgutter
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="jimbo"

let g:jimbo_transparent = get(g:, 'jimbo_transparent', 0)

let g:jimbo_italic = get(g:, 'jimbo_italic', 0)
let s:italic = "NONE"
if g:jimbo_italic == 1
    let s:italic="italic"
endif

let g:jimbo_bold = get(g:, 'jimbo_bold', 0)
let s:bold = "NONE"
if g:jimbo_bold == 1
    let s:bold = "bold"
endif

let g:jimbo_gitgutter = get(g:, 'jimbo_gitgutter', 1)

" palette
let s:jimboFG=          ['#e4e4ef', '255']
let s:jimboFG1=         ['#f4f4ff', '255']
let s:jimboFG2=         ['#f5f5ff', '255']
let s:jimboFG3=         ['#65737e', '255']
let s:jimboWhite=       ['#ffffff', '255'] " done
let s:jimboBlack=       ['#000000', '0'] " done
let s:jimboBG=          ['#101010', '0'] " done
let s:jimboBG1=         ['#282828', '0'] " done
let s:jimboBG2=         ['#33242c', '0'] " done
let s:jimboBG3=         ['#453d41', '0'] " done
let s:jimboLightRed=    ['#c73c3f', '255']
let s:jimboRed=         ['#f43841', '255']
let s:jimboNiagara=     ['#839acc', '255'] " done
let s:jimboQuartz=      ['#7ab6e6', '255']
let s:jimboYellow=      ['#ffdd33', '255']
" let s:jimboGreen=     ['#02bf51', '255'] " can't decide
let s:jimboGreen=       ['#2ab863', '255'] " can't decide
" let s:jimboMain=      ['#ffdd33', '255']
" let s:jimboMain=      ['#c73c3f', '255']
let s:jimboMain=        ['#c94245', '255'] " done?
let s:jimboBrown=       ['#c9832e', '255'] " done
let s:jimboPurple=      ['#978ad1', '255'] " done
let s:jimboPink=        ['#d6bddb', '255'] " done
let s:jimboLightBlue=   ['#0087d7', '255']
let s:jimboBlue=        ['#0000d7', '255']
let s:jimboGold=        ['#d7af00', '255']
let s:jimboDiffAdd=     ['#003b00', '255']
let s:jimboDiffCha=     ['#2c2c2c', '255']
let s:jimboDiffDel=     ['#3b0000', '255']
let s:none=             ['NONE', 'NONE']

" highlight function
function! <sid>hi(group, fg, bg, attr, attrsp)
    " fg, bg, attr, attrsp
    if !empty(a:fg)
        exec "hi " . a:group . " guifg=" .   a:fg[0]
        exec "hi " . a:group . " ctermfg=" . a:fg[1]
    endif
    if !empty(a:bg)
        exec "hi " . a:group . " guibg=" .   a:bg[0]
        exec "hi " . a:group . " ctermbg=" . a:bg[1]
    endif
    if a:attr != ""
        exec "hi " . a:group . " gui=" .     a:attr
        exec "hi " . a:group . " cterm=" .   a:attr
    endif
    if !empty(a:attrsp)
        exec "hi " . a:group . " guisp=" .   a:attrsp[0]
    endif
endfunction

" call <sid>:hi(group, fg, bg, gui, guisp)
call <sid>hi('Bold',          '',                '',          'bold',      '')
call <sid>hi('Debug',         s:jimboFG2,        '',          '',          '')
call <sid>hi('Directory',     s:jimboLightBlue,  '',          '',          '')
call <sid>hi('ErrorMsg',      s:jimboWhite,      s:jimboRed,  '',          '')
call <sid>hi('Exception',     s:jimboBrown,      '',          '',          '')
call <sid>hi('FoldColumn',    s:jimboBrown,      s:jimboBG,   '',          '')
call <sid>hi('Folded',        s:jimboBrown,      s:jimboBG1,  s:italic,    '')
call <sid>hi('IncSearch',     s:jimboBlack,      s:jimboFG2,  'NONE',      '')
call <sid>hi('Italic',        '',                '',          s:italic,    '')

call <sid>hi('Macro',         s:jimboFG,         '',           '',         '')
call <sid>hi('MatchParen',    s:jimboBG2,        s:jimboMain,  '',         '')
call <sid>hi('ModeMsg',       s:jimboFG2,        '',           '',         '')
call <sid>hi('MoreMsg',       s:jimboFG2,        '',           '',         '')
call <sid>hi('Question',      s:jimboNiagara,    '',           '',         '')
call <sid>hi('Search',        s:jimboBlack,      s:jimboMain,  '',         '')
call <sid>hi('SpecialKey',    s:jimboFG2,        '',           '',         '')
call <sid>hi('TooLong',       s:jimboFG2,        '',           '',         '')
call <sid>hi('Underlined',    s:jimboPurple,     '',           '',         '')
call <sid>hi('Visual',        '',                s:jimboBG3,   '',         '')
call <sid>hi('VisualNOS',     s:jimboRed,        '',           '',         '')
call <sid>hi('WarningMsg',    s:jimboRed,        '',           '',         '')
call <sid>hi('WildMenu',      s:jimboBlack,      s:jimboMain,  '',         '')
call <sid>hi('Title',         s:jimboYellow,     '',           '',         '')
call <sid>hi('Conceal',       s:jimboFG,         s:jimboBG,    '',         '')
call <sid>hi('Cursor',        s:jimboBG,         s:jimboFG,    '',         '')
call <sid>hi('NonText',       s:jimboFG2,        '',           '',         '')
call <sid>hi('Normal',        s:jimboFG,         s:jimboBG,    '',         '')
call <sid>hi('EndOfBuffer',   s:jimboFG,         s:jimboBG,    '',         '')
call <sid>hi('LineNr',        s:jimboFG,         s:jimboBG,    '',         '')
call <sid>hi('SignColumn',    s:none,            s:none,       '',         '')
call <sid>hi('VertSplit',     s:jimboFG2,        s:jimboBG1,   '',         '')
call <sid>hi('ColorColumn',   '',                s:jimboBG2,   '',         '')
call <sid>hi('CursorColumn',  '',                s:jimboBG2,   '',         '')
call <sid>hi('CursorLine',    '',                s:jimboBG2,   'NONE',     '')
call <sid>hi('CursorLineNr',  s:jimboMain,       s:jimboBG,    '',         '')
call <sid>hi('PMenu',         s:jimboFG,         s:jimboBG1,   '',         '')
call <sid>hi('PMenuSel',      s:jimboFG,         s:jimboBG2,   '',         '')
call <sid>hi('PmenuSbar',     '',                s:jimboBG,    '',         '')
call <sid>hi('PmenuThumb',    '',                s:jimboBG,    '',         '')
call <sid>hi('helpExample',   s:jimboMain,       '',           '',         '')
call <sid>hi('helpCommand',   s:jimboMain,       '',           '',         '')

" gitgutter sign column and line highlighting
if g:jimbo_gitgutter == 1
    call <sid>hi('GitGutterAdd',	     s:jimboGreen, '',             '', '')
    call <sid>hi('GitGutterChange',          s:jimboWhite, '',             '', '')
    call <sid>hi('GitGutterDelete',          s:jimboRed,   '',             '', '')
    call <sid>hi('GitGutterAddLine',         '',	   s:jimboDiffAdd, '', '')
    call <sid>hi('GitGutterChangeLine',      '',           s:jimboDiffCha, '', '')
    call <sid>hi('GitGutterChangeDeleteLine','',           s:jimboDiffDel, '', '')
    call <sid>hi('GitGutterDeleteLine',      '',           s:jimboDiffDel, '', '')
endif

" standard syntax highlighting
call <sid>hi('Boolean',       s:jimboYellow,     '',            '',          '')
call <sid>hi('Character',     s:jimboGreen,      '',            '',          '')
call <sid>hi('Comment',       s:jimboBrown,      '',            s:italic,    '')
call <sid>hi('Conditional',   s:jimboMain,       '',            '',          '')
call <sid>hi('Constant',      s:jimboYellow,     '',            '',          '')
call <sid>hi('Define',        s:jimboMain,       '',            '',          '')
call <sid>hi('Delimiter',     s:jimboFG,         '',            '',          '')
call <sid>hi('Float',         s:jimboYellow,     '',            '',          '')
call <sid>hi('Function',      s:jimboNiagara,    '',            '',          '')
call <sid>hi('Identifier',    s:jimboNiagara,    '',            s:bold,      '')
call <sid>hi('Include',       s:jimboMain,       '',            '',          '')
call <sid>hi('Keyword',       s:jimboMain,       '',            '',          '')
call <sid>hi('Label',         s:jimboFG,         '',            '',          '')
call <sid>hi('Number',        s:jimboQuartz,     '',            '',          '')
call <sid>hi('Operator',      s:jimboFG,         '',            '',          '')
call <sid>hi('PreProc',       s:jimboFG1,        '',            '',          '')
call <sid>hi('Repeat',        s:jimboMain,       '',            '',          '')
call <sid>hi('Special',       s:jimboMain,       '',            '',          '')
call <sid>hi('SpecialChar',   s:jimboMain,       '',            '',          '')
call <sid>hi('Statement',     s:jimboMain,       '',            '',          '')
call <sid>hi('StorageClass',  s:jimboMain,       '',            '',          '')
call <sid>hi('String',        s:jimboGreen,      '',            '',          '')
call <sid>hi('Structure',     s:jimboMain,       '',            '',          '')
call <sid>hi('Todo',          s:jimboBG,         s:jimboMain,   '',          '')
call <sid>hi('Type',          s:jimboPink,       '',            '',          '')
call <sid>hi('Typedef',       s:jimboYellow,     '',            '',          '')

call <sid>hi('SpellBad',      '',                '',            'underline', '')
call <sid>hi('SpellLocal',    '',                '',            'underline', '')
call <sid>hi('SpellCap',      '',                '',            'underline', '')
call <sid>hi('SpellRare',     '',                '',            'underline', '')

" markdown
call <sid>hi('markdownCode',               s:jimboGreen,   '',          '',          '')
call <sid>hi('markdownCodeBlock',          s:jimboGreen,   '',          '',          '')
call <sid>hi('markdownHeadingDelimiter',   s:jimboNiagara, '',          '',          '')
call <sid>hi('markdownItalic',             s:jimboPurple,  '',          s:italic,    '')
call <sid>hi('markdownBold',               s:jimboMain,    '',          s:bold,      '')
call <sid>hi('markdownCodeDelimiter',      s:jimboBrown,   '',          s:italic,    '')
call <sid>hi('markdownError',              s:jimboFG,      s:jimboBG1,  '',          '')

call <sid>hi('ALEErrorSign',     s:jimboRed,   s:jimboBG2, s:bold, '')
call <sid>hi('ALEWarningSign',   s:jimboMain,  s:jimboBG2, s:bold, '')
call <sid>hi('ALEInfoSign',      s:jimboGreen, s:jimboBG2, s:bold, '')

call <sid>hi('NERDTreeExecFile',  s:jimboFG,      '',      '',  '')
call <sid>hi('NERDTreeDirSlash',  s:jimboNiagara, '',      '',  '')
call <sid>hi('NERDTreeOpenable',  s:jimboNiagara, '',      '',  '')
call <sid>hi('NERDTreeFile',      '',             s:none,  '',  '')
call <sid>hi('NERDTreeFlags',     s:jimboNiagara, '',      '',  '')

call <sid>hi('DirvishPathTail',   s:jimboYellow,  '',          '',  '')
call <sid>hi('DirvishArg',        s:jimboWhite,   s:jimboRed,  '',  '')


let g:terminal_color_0=         s:jimboBG1[0]
let g:terminal_color_8=         s:jimboBG1[0]

let g:terminal_color_1=         s:jimboLightRed[0]
let g:terminal_color_9=         s:jimboLightRed[0]

let g:terminal_color_2=         s:jimboGreen[0]
let g:terminal_color_10=        s:jimboGreen[0]

let g:terminal_color_3=         s:jimboMain[0]
let g:terminal_color_11=        s:jimboMain[0]

let g:terminal_color_4=         s:jimboNiagara[0]
let g:terminal_color_12=        s:jimboNiagara[0]

let g:terminal_color_5=         s:jimboPurple[0]
let g:terminal_color_13=        s:jimboPurple[0]

let g:terminal_color_6=         s:jimboNiagara[0]
let g:terminal_color_14=        s:jimboNiagara[0]

let g:terminal_color_7=         s:jimboFG[0]
let g:terminal_color_15=        s:jimboFG[0]

let g:terminal_color_background=s:jimboBG1[0]
let g:terminal_color_foreground=s:jimboWhite[0]

if g:jimbo_transparent == 1
    hi Normal           guibg=NONE ctermbg=NONE 
    hi NormalFloat      guibg=NONE ctermbg=NONE
    hi NormalNC         guibg=NONE ctermbg=NONE
    hi LineNr           guibg=NONE ctermbg=NONE
    hi SignColumn       guibg=NONE ctermbg=NONE
    hi FoldColumn       guibg=NONE ctermbg=NONE
    hi EndOfBuffer      guibg=NONE ctermbg=NONE
    hi CursorLineNr     guibg=NONE cterm=NONE
endif
