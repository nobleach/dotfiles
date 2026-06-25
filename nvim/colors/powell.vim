" powell.vim -- a warm, near-monochrome colorscheme
"
" Derived from a screenshot: a soft #282828 background carrying mostly
" sage-green and olive-khaki text. Like Nord -- uniform, low-saturation,
" low-contrast -- but with gruvbox's warmth in the base and olive tones.
"
" Syntax stays near-monochrome: nearly everything is a close tint of the
" same warm sage/olive/gray axis, so colour structure is felt rather than
" announced. Only UI signals (diagnostics, git, search) lift slightly so
" they remain legible.
"
" Maintainer: generated for Jim Wharton
" License: same terms as Vim itself

set background=dark

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "powell"

" ----------------------------------------------------------------------------
" Palette -- [guihex, cterm256]. Saturation is deliberately low and values
" sit close together so the accents read as one family.
" ----------------------------------------------------------------------------
let s:bg0      = ['#282828', '235']   " Normal background
let s:bg_dim   = ['#232323', '234']   " floats, trees
let s:bg1      = ['#32302f', '236']   " CursorLine, ColorColumn
let s:bg2      = ['#3c3836', '237']   " Pmenu, folds, splits
let s:bg3      = ['#45403d', '238']   " Visual selection
let s:bg_red   = ['#3d3431', '236']   " delete background
let s:bg_green = ['#363a2e', '236']   " add background
let s:bg_blue  = ['#313a3c', '236']   " change/info background

let s:fg       = ['#c5c8b8', '250']   " default text -- warm sage-gray
let s:grey0    = ['#565049', '240']   " line numbers, very dim
let s:grey1    = ['#767c6f', '243']   " comments, muted UI
let s:grey2    = ['#969a89', '245']   " delimiters, secondary text

let s:green    = ['#a9b665', '143']   " primary accent -- functions, tags
let s:olive    = ['#b3b57d', '144']   " strings -- olive, leans into green
let s:khaki    = ['#c6bd83', '179']   " types -- the brightest warm tone
let s:gold     = ['#c2a87c', '180']   " constants, numbers
let s:rose     = ['#b8857b', '138']   " UI accent only (substitute, prompts)
let s:teal     = ['#95aa8d', '108']   " operators, specials -- gray-green
let s:blue     = ['#8ba0a2', '109']   " links, info -- desaturated steel
let s:mauve    = ['#a89aa1', '145']   " preproc -- faint cool gray

" Signal colours: a touch more saturated than syntax so they stand out.
let s:sig_red  = ['#c47a70', '167']
let s:sig_gold = ['#c2a87c', '180']

" ----------------------------------------------------------------------------
" Helper -- s:hl(group, fg, bg, attr) where fg/bg are palette pairs or ''.
" ----------------------------------------------------------------------------
function! s:hl(group, fg, bg, attr) abort
  let l:cmd = 'hi ' . a:group
  let l:cmd .= ' guifg='   . (empty(a:fg) ? 'NONE' : a:fg[0])
  let l:cmd .= ' guibg='   . (empty(a:bg) ? 'NONE' : a:bg[0])
  let l:cmd .= ' ctermfg=' . (empty(a:fg) ? 'NONE' : a:fg[1])
  let l:cmd .= ' ctermbg=' . (empty(a:bg) ? 'NONE' : a:bg[1])
  let l:cmd .= ' gui='     . (empty(a:attr) ? 'NONE' : a:attr)
  let l:cmd .= ' cterm='   . (empty(a:attr) ? 'NONE' : a:attr)
  execute l:cmd
endfunction

" ----------------------------------------------------------------------------
" UI
" ----------------------------------------------------------------------------
call s:hl('Normal',          s:fg,    s:bg0,    '')
call s:hl('NormalNC',        s:fg,    s:bg0,    '')
call s:hl('NormalFloat',     s:fg,    s:bg_dim, '')
call s:hl('FloatBorder',     s:grey1, s:bg_dim, '')
call s:hl('FloatTitle',      s:green, s:bg_dim, 'bold')
call s:hl('ColorColumn',     '',      s:bg1,    '')
call s:hl('Conceal',         s:grey1, '',       '')
call s:hl('Cursor',          s:bg0,   s:fg,     '')
call s:hl('lCursor',         s:bg0,   s:fg,     '')
call s:hl('CursorIM',        s:bg0,   s:fg,     '')
call s:hl('CursorColumn',    '',      s:bg1,    '')
call s:hl('CursorLine',      '',      s:bg1,    '')
call s:hl('Directory',       s:green, '',       '')
call s:hl('DiffAdd',         '',      s:bg_green,'')
call s:hl('DiffChange',      '',      s:bg_blue, '')
call s:hl('DiffDelete',      s:sig_red, s:bg_red, '')
call s:hl('DiffText',        s:bg0,   s:blue,   '')
call s:hl('EndOfBuffer',     s:bg2,   '',       '')
call s:hl('ErrorMsg',        s:sig_red, '',     'bold')
call s:hl('VertSplit',       s:bg2,   '',       '')
call s:hl('WinSeparator',    s:bg2,   '',       '')
call s:hl('Folded',          s:grey1, s:bg1,    '')
call s:hl('FoldColumn',      s:grey0, s:bg0,    '')
call s:hl('SignColumn',      s:grey1, s:bg0,    '')
call s:hl('IncSearch',       s:bg0,   s:gold,   '')
call s:hl('CurSearch',       s:bg0,   s:gold,   '')
call s:hl('Substitute',      s:bg0,   s:rose,   '')
call s:hl('LineNr',          s:grey0, '',       '')
call s:hl('CursorLineNr',    s:khaki, '',       'bold')
call s:hl('MatchParen',      s:khaki, s:bg3,    'bold')
call s:hl('ModeMsg',         s:fg,    '',       'bold')
call s:hl('MoreMsg',         s:green, '',       '')
call s:hl('MsgArea',         s:fg,    '',       '')
call s:hl('NonText',         s:bg2,   '',       '')
call s:hl('Pmenu',           s:fg,    s:bg2,    '')
call s:hl('PmenuSel',        s:bg0,   s:green,  '')
call s:hl('PmenuSbar',       '',      s:bg2,    '')
call s:hl('PmenuThumb',      '',      s:grey0,  '')
call s:hl('Question',        s:green, '',       '')
call s:hl('QuickFixLine',    s:khaki, s:bg1,    '')
call s:hl('Search',          s:bg0,   s:olive,  '')
call s:hl('SpecialKey',      s:grey0, '',       '')
call s:hl('SpellBad',        s:sig_red, '',     'undercurl')
call s:hl('SpellCap',        s:blue,  '',       'undercurl')
call s:hl('SpellLocal',      s:teal,  '',       'undercurl')
call s:hl('SpellRare',       s:mauve, '',       'undercurl')
call s:hl('StatusLine',      s:fg,    s:bg2,    '')
call s:hl('StatusLineNC',    s:grey1, s:bg1,    '')
call s:hl('TabLine',         s:grey1, s:bg1,    '')
call s:hl('TabLineFill',     '',      s:bg_dim, '')
call s:hl('TabLineSel',      s:bg0,   s:green,  '')
call s:hl('Title',           s:green, '',       'bold')
call s:hl('Visual',          '',      s:bg3,    '')
call s:hl('VisualNOS',       '',      s:bg3,    '')
call s:hl('WarningMsg',      s:sig_gold, '',    'bold')
call s:hl('Whitespace',      s:bg2,   '',       '')
call s:hl('WildMenu',        s:bg0,   s:green,  '')
call s:hl('Winbar',          s:fg,    '',       '')
call s:hl('WinbarNC',        s:grey1, '',       '')

" ----------------------------------------------------------------------------
" Syntax -- near-monochrome: most tokens are tints of the sage/olive axis.
" ----------------------------------------------------------------------------
call s:hl('Comment',         s:grey1, '',       'italic')
call s:hl('Constant',        s:gold,  '',       '')
call s:hl('String',          s:olive, '',       '')
call s:hl('Character',       s:olive, '',       '')
call s:hl('Number',          s:gold,  '',       '')
call s:hl('Float',           s:gold,  '',       '')
call s:hl('Boolean',         s:gold,  '',       '')
call s:hl('Identifier',      s:fg,    '',       '')
call s:hl('Function',        s:green, '',       '')
call s:hl('Statement',       s:fg,    '',       'bold')
call s:hl('Conditional',     s:fg,    '',       'bold')
call s:hl('Repeat',          s:fg,    '',       'bold')
call s:hl('Label',           s:fg,    '',       'bold')
call s:hl('Operator',        s:teal,  '',       '')
call s:hl('Keyword',         s:fg,    '',       'bold')
call s:hl('Exception',       s:fg,    '',       'bold')
call s:hl('PreProc',         s:mauve, '',       '')
call s:hl('Include',         s:mauve, '',       '')
call s:hl('Define',          s:mauve, '',       '')
call s:hl('Macro',           s:mauve, '',       '')
call s:hl('PreCondit',       s:mauve, '',       '')
call s:hl('Type',            s:khaki, '',       '')
call s:hl('StorageClass',    s:khaki, '',       '')
call s:hl('Structure',       s:khaki, '',       '')
call s:hl('Typedef',         s:khaki, '',       '')
call s:hl('Special',         s:teal,  '',       '')
call s:hl('SpecialChar',     s:teal,  '',       '')
call s:hl('Tag',             s:green, '',       '')
call s:hl('Delimiter',       s:grey2, '',       '')
call s:hl('SpecialComment',  s:grey1, '',       'italic')
call s:hl('Debug',           s:fg,    '',       'bold')
call s:hl('Underlined',      s:blue,  '',       'underline')
call s:hl('Ignore',          s:grey0, '',       '')
call s:hl('Error',           s:sig_red, '',     'bold')
call s:hl('Todo',            s:bg0,   s:khaki,  'bold')

" ----------------------------------------------------------------------------
" Diagnostics (Neovim LSP)
" ----------------------------------------------------------------------------
call s:hl('DiagnosticError',          s:sig_red,  '', '')
call s:hl('DiagnosticWarn',           s:sig_gold, '', '')
call s:hl('DiagnosticInfo',           s:blue,     '', '')
call s:hl('DiagnosticHint',           s:teal,     '', '')
call s:hl('DiagnosticOk',             s:green,    '', '')
call s:hl('DiagnosticUnderlineError', s:sig_red,  '', 'undercurl')
call s:hl('DiagnosticUnderlineWarn',  s:sig_gold, '', 'undercurl')
call s:hl('DiagnosticUnderlineInfo',  s:blue,     '', 'undercurl')
call s:hl('DiagnosticUnderlineHint',  s:teal,     '', 'undercurl')
hi link DiagnosticVirtualTextError DiagnosticError
hi link DiagnosticVirtualTextWarn  DiagnosticWarn
hi link DiagnosticVirtualTextInfo  DiagnosticInfo
hi link DiagnosticVirtualTextHint  DiagnosticHint

" ----------------------------------------------------------------------------
" LSP reference / semantic
" ----------------------------------------------------------------------------
call s:hl('LspReferenceText',  '', s:bg2, '')
call s:hl('LspReferenceRead',  '', s:bg2, '')
call s:hl('LspReferenceWrite', '', s:bg3, '')
call s:hl('LspInlayHint',      s:grey0, s:bg1, 'italic')
call s:hl('LspCodeLens',       s:grey1, '',    'italic')

" ----------------------------------------------------------------------------
" Treesitter
" ----------------------------------------------------------------------------
hi link @comment            Comment
hi link @comment.error      DiagnosticError
hi link @comment.warning    DiagnosticWarn
hi link @comment.todo       Todo
hi link @comment.note       DiagnosticHint
call s:hl('@variable',           s:fg,    '', '')
call s:hl('@variable.builtin',   s:fg,    '', 'italic')
call s:hl('@variable.parameter', s:fg,    '', '')
call s:hl('@variable.member',    s:teal,  '', '')
hi link @constant           Constant
hi link @constant.builtin   Constant
hi link @constant.macro     Macro
hi link @module             Type
hi link @label              Label
hi link @string             String
hi link @string.escape      SpecialChar
hi link @string.special     SpecialChar
call s:hl('@string.regexp',      s:teal,  '', '')
hi link @character          Character
hi link @boolean            Boolean
hi link @number             Number
hi link @float              Float
hi link @function           Function
hi link @function.builtin   Function
hi link @function.call      Function
hi link @function.macro     Macro
hi link @function.method    Function
call s:hl('@constructor',        s:khaki, '', '')
hi link @method             Function
hi link @keyword            Keyword
hi link @keyword.function   Keyword
hi link @keyword.operator   Operator
hi link @keyword.return     Keyword
hi link @keyword.import     Include
hi link @keyword.exception  Exception
hi link @conditional        Conditional
hi link @repeat             Repeat
hi link @operator           Operator
hi link @exception          Exception
hi link @type               Type
hi link @type.builtin       Type
hi link @type.definition    Typedef
hi link @storageclass       StorageClass
hi link @attribute          PreProc
hi link @property           @variable.member
hi link @namespace          Type
hi link @punctuation.delimiter Delimiter
hi link @punctuation.bracket   Delimiter
hi link @punctuation.special   Special
hi link @tag                Tag
call s:hl('@tag.attribute',      s:olive, '', '')
call s:hl('@tag.delimiter',      s:grey2, '', '')
hi link @text               Normal
call s:hl('@text.title',         s:green, '', 'bold')
call s:hl('@text.literal',       s:olive, '', '')
call s:hl('@text.uri',           s:blue,  '', 'underline')
call s:hl('@text.emphasis',      '',      '', 'italic')
call s:hl('@text.strong',        '',      '', 'bold')
hi link @markup               @text
hi link @markup.heading       @text.title
hi link @markup.raw           @text.literal
hi link @markup.link.url      @text.uri
hi link @markup.italic        @text.emphasis
hi link @markup.strong        @text.strong
hi link @diff.plus            DiffAdd
hi link @diff.minus           DiffDelete
hi link @diff.delta           DiffChange

" ----------------------------------------------------------------------------
" Git signs / gitsigns.nvim
" ----------------------------------------------------------------------------
call s:hl('GitSignsAdd',     s:green, '', '')
call s:hl('GitSignsChange',  s:blue,  '', '')
call s:hl('GitSignsDelete',  s:sig_red, '', '')
hi link SignifySignAdd    GitSignsAdd
hi link SignifySignChange GitSignsChange
hi link SignifySignDelete GitSignsDelete
call s:hl('diffAdded',       s:green, '', '')
call s:hl('diffRemoved',     s:sig_red, '', '')
call s:hl('diffChanged',     s:blue,  '', '')
call s:hl('diffFile',        s:khaki, '', '')
call s:hl('diffLine',        s:mauve, '', '')

" ----------------------------------------------------------------------------
" Telescope
" ----------------------------------------------------------------------------
call s:hl('TelescopeBorder',        s:bg2,  s:bg_dim, '')
call s:hl('TelescopePromptBorder',  s:bg2,  s:bg_dim, '')
call s:hl('TelescopeSelection',     s:fg,   s:bg1,    '')
call s:hl('TelescopeSelectionCaret',s:rose, s:bg1,    '')
call s:hl('TelescopeMatching',      s:khaki, '',      'bold')
call s:hl('TelescopePromptPrefix',  s:rose, '',       '')
hi link TelescopeTitle Title

" ----------------------------------------------------------------------------
" NvimTree
" ----------------------------------------------------------------------------
call s:hl('NvimTreeNormal',      s:fg,    s:bg_dim, '')
call s:hl('NvimTreeFolderName',  s:blue,  '',       '')
call s:hl('NvimTreeFolderIcon',  s:blue,  '',       '')
call s:hl('NvimTreeRootFolder',  s:green, '',       'bold')
call s:hl('NvimTreeSpecialFile', s:khaki, '',       '')
call s:hl('NvimTreeGitDirty',    s:sig_gold, '',    '')
call s:hl('NvimTreeGitNew',      s:green, '',       '')
call s:hl('NvimTreeIndentMarker',s:bg2,   '',       '')
