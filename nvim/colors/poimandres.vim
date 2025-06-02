set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

hi SpecialKey      guifg=#5de4c7
hi EndOfBuffer     guifg=#7390aa
hi TermCursor      cterm=reverse gui=reverse
hi NonText         guifg=#7390aa
hi Directory       ctermfg=14 guifg=#91b4d5
hi ErrorMsg        ctermfg=9 gui=bold guifg=#d0679d
hi IncSearch       guifg=#171922 guibg=#add7ff
hi Search          ctermfg=0 ctermbg=11 guifg=#ffffff guibg=#506477
hi CurSearch       guifg=#171922 guibg=#add7ff
hi MoreMsg         ctermfg=14 guifg=#91b4d5
hi ModeMsg         ctermfg=10 guifg=#91b4d5
hi LineNr          guifg=#506477
hi LineNrAbove     guifg=#506477
hi LineNrBelow     guifg=#506477
hi CursorLineNr    cterm=bold guifg=#e4f0fb
hi CursorLineSign  guifg=#e4f0fb
hi CursorLineFold  guifg=#767c9d
hi Question        ctermfg=14 guifg=#fffac2
hi StatusLine      cterm=reverse guifg=#91b4d5 guibg=#171922
hi StatusLineNC    cterm=bold,underline guifg=#91b4d5 guibg=#1b1e28
hi link WinSeparator    Normal
hi VertSplit       guifg=#171922
hi Title           cterm=bold guifg=#e4f0fb
hi Visual          ctermfg=0 ctermbg=15 guifg=#e4f0fb guibg=#506477
" hi VisualNC        cleared
hi WarningMsg      ctermfg=11 guifg=#fffac2
hi link WildMenu        IncSearch
hi Folded          guifg=#e4f0fb guibg=#171922
hi FoldColumn      guifg=#767c9d
hi DiffAdd         ctermfg=0 ctermbg=10 guibg=#3c8178
hi DiffChange      guibg=#a6accd
hi DiffDelete      cterm=bold ctermfg=9 guibg=#764363
hi DiffText        ctermfg=0 ctermbg=14 guibg=#3d6965
hi SignColumn      guifg=#e4f0fb
" hi Conceal         cleared
hi SpellBad        cterm=undercurl gui=undercurl guisp=#d0679d
hi SpellCap        cterm=undercurl gui=undercurl guisp=#89ddff
hi SpellRare       cterm=undercurl gui=undercurl guisp=#89ddff
hi SpellLocal      cterm=undercurl gui=undercurl guisp=#fffac2
hi Pmenu           cterm=reverse guifg=#a6accd guibg=#171922
hi PmenuSel        cterm=underline,reverse guifg=#e4f0fb guibg=#303340 blend=0
hi PmenuMatch      cterm=bold gui=bold
hi PmenuMatchSel   cterm=bold gui=bold
hi link PmenuKind       Pmenu
hi link PmenuKindSel    PmenuSel
hi link PmenuExtra      Pmenu
hi link PmenuExtraSel   PmenuSel
hi PmenuSbar       guibg=#767c9d
hi PmenuThumb      guibg=#506477
hi TabLine         guifg=#91b4d5 guibg=#171922
hi TabLineSel      guifg=#e4f0fb guibg=#303340
hi TabLineFill     guibg=#171922
hi CursorColumn    guibg=#303340
hi CursorLine      guibg=#303340
hi ColorColumn     cterm=reverse guibg=#a6accd
hi QuickFixLine    ctermfg=14 guifg=NvimLightCyan
hi Whitespace      guifg=#506477
hi NormalNC        guifg=#e4f0fb guibg=#171922
hi link MsgSeparator    StatusLine
hi NormalFloat     guifg=#a6998f guibg=#282828
" hi MsgArea         cleared
hi FloatBorder     guifg=#a6998f
hi WinBar          guibg=#303340
hi WinBarNC        cterm=bold guifg=NvimLightGrey4 guibg=NvimDarkGrey1
hi Cursor          guifg=#171922 guibg=#a6accd
hi FloatTitle      guifg=#767c9d
hi link FloatFooter     FloatTitle
hi link StatusLineTerm  StatusLine
hi link StatusLineTermNC  StatusLineNC
hi RedrawDebugNormal  cterm=reverse gui=reverse
hi Underlined      cterm=underline gui=underline
hi lCursor         guifg=bg guibg=fg
hi link CursorIM        Cursor
" hi ComplMatchIns   cleared
hi link Substitute      Search
hi link VisualNOS       Visual
hi Normal          guifg=#e4f0fb guibg=#1b1e28
hi Character       guifg=#d0679d
hi Constant        guifg=#e4f0fb
hi Number          guifg=#5de4c7
hi Boolean         guifg=#5de4c7
hi Float           guifg=#5de4c7
hi Conditional     guifg=#a6accd
hi Statement       cterm=bold guifg=#e4f0fb
hi Repeat          guifg=#91b4d5
hi Label           guifg=#e4f0fb
hi Keyword         guifg=#91b4d5
hi Exception       guifg=#91b4d5
hi Include         guifg=#a6accd
hi PreProc         guifg=#e4f0fb
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi Type            guifg=#a6accd
hi link Structure       Type
hi link Typedef         Type
hi Tag             guifg=#e4f0fb
hi Special         ctermfg=14 guifg=#767c9d
hi link SpecialChar     Special
hi SpecialComment  guifg=#a6accd
hi link Debug           Special
hi link Ignore          Normal
hi LspCodeLens     guifg=#a6accd
hi LspCodeLensSeparator  guifg=#506477
hi link LspInlayHint    NonText
hi LspReferenceRead  guibg=#add7ff
hi LspReferenceText  guibg=#add7ff
hi LspReferenceWrite  guibg=#add7ff
hi link LspReferenceTarget  LspReferenceText
hi LspSignatureActiveParameter  guibg=#a6accd
hi link SnippetTabstop  Visual
hi DiagnosticFloatingError  guifg=#d0679d
hi DiagnosticError  ctermfg=9 guifg=#d0679d
hi DiagnosticFloatingWarn  guifg=#fffac2
hi DiagnosticWarn  ctermfg=11 guifg=#fffac2
hi DiagnosticFloatingInfo  guifg=#91b4d5
hi DiagnosticInfo  ctermfg=14 guifg=#91b4d5
hi DiagnosticFloatingHint  guifg=#89ddff
hi DiagnosticHint  ctermfg=12 guifg=#89ddff
hi link DiagnosticFloatingOk  DiagnosticOk
hi DiagnosticOk    ctermfg=10 guifg=NvimLightGreen
hi DiagnosticVirtualTextError  guifg=#d0679d
hi DiagnosticVirtualTextWarn  guifg=#fffac2
hi DiagnosticVirtualTextInfo  guifg=#91b4d5
hi DiagnosticVirtualTextHint  guifg=#89ddff
hi link DiagnosticVirtualTextOk  DiagnosticOk
hi link DiagnosticVirtualLinesError  DiagnosticError
hi link DiagnosticVirtualLinesWarn  DiagnosticWarn
hi link DiagnosticVirtualLinesInfo  DiagnosticInfo
hi link DiagnosticVirtualLinesHint  DiagnosticHint
hi link DiagnosticVirtualLinesOk  DiagnosticOk
hi DiagnosticSignError  guifg=#d0679d
hi DiagnosticSignWarn  guifg=#fffac2
hi DiagnosticSignInfo  guifg=#91b4d5
hi DiagnosticSignHint  guifg=#89ddff
hi link DiagnosticSignOk  DiagnosticOk
hi link DiagnosticUnnecessary  Comment
hi Comment         cterm=italic gui=italic guifg=#a6998f
hi @variable       guifg=#e4f0fb
hi @variable.builtin  guifg=#add7ff
hi link @variable.parameter.builtin  Special
hi link @constant       Constant
hi @constant.builtin  guifg=#add7ff
hi link @module         Structure
hi link @module.builtin  Special
hi @label          guifg=#91b4d5
hi link @string String
hi String          ctermfg=10 guifg=#5de4c7
hi link @string.regexp  @string.special
hi link @string.special  SpecialChar
hi @string.escape  guifg=#d0679d
hi link @string.special.url  Underlined
hi link @character      Character
hi link @character.special  SpecialChar
hi link @boolean        Boolean
hi link @number         Number
hi link @number.float   Float
hi link @type           Type
hi link @type.builtin   Type
hi link @attribute      Macro
hi link @attribute.builtin  Special
hi @property       guifg=#add7ff
hi Identifier      ctermfg=12 guifg=#a6accd
hi link @function       Function
hi Function        ctermfg=14 guifg=#add7ff
hi @function.builtin  guifg=#add7ff
hi @constructor    guifg=#5de4c7
hi link @operator       Operator
hi Operator        guifg=#add7ff
hi link @keyword        Keyword
hi link @punctuation    Delimiter
hi Delimiter       guifg=#a6accd
hi @punctuation.special  guifg=#91b4d5
hi link @comment        Comment
hi link @comment.error  DiagnosticError
hi link @comment.warning  DiagnosticWarn
hi link @comment.note   DiagnosticInfo
hi link @comment.todo   Todo
hi Todo            cterm=bold guifg=#171922 guibg=#fffac2
hi link @markup         Special
hi @markup.strong  cterm=bold gui=bold
hi @markup.italic  cterm=italic gui=italic
hi @markup.strikethrough  cterm=strikethrough gui=strikethrough
hi @markup.underline  cterm=underline gui=underline
hi link @markup.heading  Title
hi link @markup.links Underlined
" hi @diff           cleared
hi link @diff.plus      Added
hi Added           ctermfg=10 guifg=NvimLightGreen
hi link @diff.minus     Removed
hi Removed         ctermfg=9 guifg=NvimLightRed
hi link @diff.delta     Changed
hi Changed         ctermfg=14 guifg=NvimLightCyan
hi @tag            guifg=#5de4c7
hi link @tag.builtin    Special
hi @markup.heading.1.delimiter.vimdoc  cterm=underdouble,nocombine gui=underdouble,nocombine guifg=bg guibg=bg guisp=fg
hi @markup.heading.2.delimiter.vimdoc  cterm=underline,nocombine gui=underline,nocombine guifg=bg guibg=bg guisp=fg
" hi @lsp            cleared
hi link @lsp.type.class  @type
hi link @lsp.type.comment  @comment
hi link @lsp.type.decorator  @attribute
hi link @lsp.type.enum  @type
hi link @lsp.type.enumMember  @constant
hi link @lsp.type.event  @type
hi link @lsp.type.function  @function
hi link @lsp.type.interface  @type
hi link @lsp.type.keyword  @keyword
hi link @lsp.type.macro  @constant.macro
hi link @lsp.type.method  @function.method
hi link @lsp.type.modifier  @type.qualifier
hi link @lsp.type.namespace  @module
hi link @lsp.type.number  @number
hi link @lsp.type.operator  @operator
hi link @lsp.type.parameter  @variable.parameter
hi link @lsp.type.property  @property
hi link @lsp.type.regexp  @string.regexp
hi link @lsp.type.string  @string
hi link @lsp.type.struct  @type
hi link @lsp.type.type  @type
hi link @lsp.type.typeParameter  @type.definition
hi link @lsp.type.variable  @variable
hi link @lsp.mod.deprecated  DiagnosticDeprecated
hi DiagnosticDeprecated  cterm=strikethrough gui=strikethrough guisp=NvimLightRed
hi FloatShadow     ctermbg=0 guibg=NvimDarkGrey4 blend=80
hi FloatShadowThrough  ctermbg=0 guibg=NvimDarkGrey4 blend=100
hi MatchParen      cterm=bold,underline guifg=#171922 guibg=#506477
hi RedrawDebugClear  ctermfg=0 ctermbg=11 guifg=#ffffff guibg=#fffac2
hi RedrawDebugComposed  ctermfg=0 ctermbg=10 guifg=#ffffff guibg=#5fb3a1
hi RedrawDebugRecompose  ctermfg=0 ctermbg=9 guifg=#ffffff guibg=#d0679d
hi Error           ctermfg=0 ctermbg=9 guifg=#d0679d
hi DiagnosticUnderlineError  cterm=underline gui=undercurl guisp=#d0679d
hi DiagnosticUnderlineWarn  cterm=underline gui=undercurl guisp=#fffac2
hi DiagnosticUnderlineInfo  cterm=underline gui=undercurl guisp=#91b4d5
hi DiagnosticUnderlineHint  cterm=underline gui=undercurl guisp=#89ddff
hi DiagnosticUnderlineOk  cterm=underline gui=underline guisp=NvimLightGreen
hi NvimInternalError  ctermfg=9 ctermbg=9 guifg=#ffffff guibg=#d0679d
hi link NvimAssignment  Operator
hi link NvimPlainAssignment  NvimAssignment
hi link NvimAugmentedAssignment  NvimAssignment
hi link NvimAssignmentWithAddition  NvimAugmentedAssignment
hi link NvimAssignmentWithSubtraction  NvimAugmentedAssignment
hi link NvimAssignmentWithConcatenation  NvimAugmentedAssignment
hi link NvimOperator    Operator
hi link NvimUnaryOperator  NvimOperator
hi link NvimUnaryPlus   NvimUnaryOperator
hi link NvimUnaryMinus  NvimUnaryOperator
hi link NvimNot         NvimUnaryOperator
hi link NvimBinaryOperator  NvimOperator
hi link NvimComparison  NvimBinaryOperator
hi link NvimComparisonModifier  NvimComparison
hi link NvimBinaryPlus  NvimBinaryOperator
hi link NvimBinaryMinus  NvimBinaryOperator
hi link NvimConcat      NvimBinaryOperator
hi link NvimConcatOrSubscript  NvimConcat
hi link NvimOr          NvimBinaryOperator
hi link NvimAnd         NvimBinaryOperator
hi link NvimMultiplication  NvimBinaryOperator
hi link NvimDivision    NvimBinaryOperator
hi link NvimMod         NvimBinaryOperator
hi link NvimTernary     NvimOperator
hi link NvimTernaryColon  NvimTernary
hi link NvimParenthesis  Delimiter
hi link NvimLambda      NvimParenthesis
hi link NvimNestingParenthesis  NvimParenthesis
hi link NvimCallingParenthesis  NvimParenthesis
hi link NvimSubscript   NvimParenthesis
hi link NvimSubscriptBracket  NvimSubscript
hi link NvimSubscriptColon  NvimSubscript
hi link NvimCurly       NvimSubscript
hi link NvimContainer   NvimParenthesis
hi link NvimDict        NvimContainer
hi link NvimList        NvimContainer
hi link NvimIdentifier  Identifier
hi link NvimIdentifierScope  NvimIdentifier
hi link NvimIdentifierScopeDelimiter  NvimIdentifier
hi link NvimIdentifierName  NvimIdentifier
hi link NvimIdentifierKey  NvimIdentifier
hi link NvimColon       Delimiter
hi link NvimComma       Delimiter
hi link NvimArrow       Delimiter
hi link NvimRegister    SpecialChar
hi link NvimNumber      Number
hi link NvimFloat       NvimNumber
hi link NvimNumberPrefix  Type
hi link NvimOptionSigil  Type
hi link NvimOptionName  NvimIdentifier
hi link NvimOptionScope  NvimIdentifierScope
hi link NvimOptionScopeDelimiter  NvimIdentifierScopeDelimiter
hi link NvimEnvironmentSigil  NvimOptionSigil
hi link NvimEnvironmentName  NvimIdentifier
hi link NvimString      String
hi link NvimStringBody  NvimString
hi link NvimStringQuote  NvimString
hi link NvimStringSpecial  SpecialChar
hi link NvimSingleQuote  NvimStringQuote
hi link NvimSingleQuotedBody  NvimStringBody
hi link NvimSingleQuotedQuote  NvimStringSpecial
hi link NvimDoubleQuote  NvimStringQuote
hi link NvimDoubleQuotedBody  NvimStringBody
hi link NvimDoubleQuotedEscape  NvimStringSpecial
hi link NvimFigureBrace  NvimInternalError
hi link NvimSingleQuotedUnknownEscape  NvimInternalError
hi link NvimSpacing     Normal
hi link NvimInvalidSingleQuotedUnknownEscape  NvimInternalError
hi link NvimInvalid     Error
hi link NvimInvalidAssignment  NvimInvalid
hi link NvimInvalidPlainAssignment  NvimInvalidAssignment
hi link NvimInvalidAugmentedAssignment  NvimInvalidAssignment
hi link NvimInvalidAssignmentWithAddition  NvimInvalidAugmentedAssignment
hi link NvimInvalidAssignmentWithSubtraction  NvimInvalidAugmentedAssignment
hi link NvimInvalidAssignmentWithConcatenation  NvimInvalidAugmentedAssignment
hi link NvimInvalidOperator  NvimInvalid
hi link NvimInvalidUnaryOperator  NvimInvalidOperator
hi link NvimInvalidUnaryPlus  NvimInvalidUnaryOperator
hi link NvimInvalidUnaryMinus  NvimInvalidUnaryOperator
hi link NvimInvalidNot  NvimInvalidUnaryOperator
hi link NvimInvalidBinaryOperator  NvimInvalidOperator
hi link NvimInvalidComparison  NvimInvalidBinaryOperator
hi link NvimInvalidComparisonModifier  NvimInvalidComparison
hi link NvimInvalidBinaryPlus  NvimInvalidBinaryOperator
hi link NvimInvalidBinaryMinus  NvimInvalidBinaryOperator
hi link NvimInvalidConcat  NvimInvalidBinaryOperator
hi link NvimInvalidConcatOrSubscript  NvimInvalidConcat
hi link NvimInvalidOr   NvimInvalidBinaryOperator
hi link NvimInvalidAnd  NvimInvalidBinaryOperator
hi link NvimInvalidMultiplication  NvimInvalidBinaryOperator
hi link NvimInvalidDivision  NvimInvalidBinaryOperator
hi link NvimInvalidMod  NvimInvalidBinaryOperator
hi link NvimInvalidTernary  NvimInvalidOperator
hi link NvimInvalidTernaryColon  NvimInvalidTernary
hi link NvimInvalidDelimiter  NvimInvalid
hi link NvimInvalidParenthesis  NvimInvalidDelimiter
hi link NvimInvalidLambda  NvimInvalidParenthesis
hi link NvimInvalidNestingParenthesis  NvimInvalidParenthesis
hi link NvimInvalidCallingParenthesis  NvimInvalidParenthesis
hi link NvimInvalidSubscript  NvimInvalidParenthesis
hi link NvimInvalidSubscriptBracket  NvimInvalidSubscript
hi link NvimInvalidSubscriptColon  NvimInvalidSubscript
hi link NvimInvalidCurly  NvimInvalidSubscript
hi link NvimInvalidContainer  NvimInvalidParenthesis
hi link NvimInvalidDict  NvimInvalidContainer
hi link NvimInvalidList  NvimInvalidContainer
hi link NvimInvalidValue  NvimInvalid
hi link NvimInvalidIdentifier  NvimInvalidValue
hi link NvimInvalidIdentifierScope  NvimInvalidIdentifier
hi link NvimInvalidIdentifierScopeDelimiter  NvimInvalidIdentifier
hi link NvimInvalidIdentifierName  NvimInvalidIdentifier
hi link NvimInvalidIdentifierKey  NvimInvalidIdentifier
hi link NvimInvalidColon  NvimInvalidDelimiter
hi link NvimInvalidComma  NvimInvalidDelimiter
hi link NvimInvalidArrow  NvimInvalidDelimiter
hi link NvimInvalidRegister  NvimInvalidValue
hi link NvimInvalidNumber  NvimInvalidValue
hi link NvimInvalidFloat  NvimInvalidNumber
hi link NvimInvalidNumberPrefix  NvimInvalidNumber
hi link NvimInvalidOptionSigil  NvimInvalidIdentifier
hi link NvimInvalidOptionName  NvimInvalidIdentifier
hi link NvimInvalidOptionScope  NvimInvalidIdentifierScope
hi link NvimInvalidOptionScopeDelimiter  NvimInvalidIdentifierScopeDelimiter
hi link NvimInvalidEnvironmentSigil  NvimInvalidOptionSigil
hi link NvimInvalidEnvironmentName  NvimInvalidIdentifier
hi link NvimInvalidString  NvimInvalidValue
hi link NvimInvalidStringBody  NvimStringBody
hi link NvimInvalidStringQuote  NvimInvalidString
hi link NvimInvalidStringSpecial  NvimStringSpecial
hi link NvimInvalidSingleQuote  NvimInvalidStringQuote
hi link NvimInvalidSingleQuotedBody  NvimInvalidStringBody
hi link NvimInvalidSingleQuotedQuote  NvimInvalidStringSpecial
hi link NvimInvalidDoubleQuote  NvimInvalidStringQuote
hi link NvimInvalidDoubleQuotedBody  NvimInvalidStringBody
hi link NvimInvalidDoubleQuotedEscape  NvimInvalidStringSpecial
hi link NvimInvalidDoubleQuotedUnknownEscape  NvimInvalidValue
hi link NvimInvalidFigureBrace  NvimInvalidDelimiter
hi link NvimInvalidSpacing  ErrorMsg
hi link NvimDoubleQuotedUnknownEscape  NvimInvalidValue
hi field           guifg=#e4f0fb
hi link diffRemoved     DiffDelete
hi link diffChanged     DiffChange
hi link diffAdded       DiffAdd
hi DarkenedStatusline  guibg=#171922
hi DarkenedPanel   guibg=#171922
hi IndentBlanklineChar  guifg=#303340
hi WhichKeyValue   guifg=#e4f0fb
hi WhichKeyFloat   guibg=#171922
hi WhichKeyDesc    guifg=#e4f0fb
hi WhichKeySeparator  guifg=#e4f0fb
hi WhichKey        guifg=#e4f0fb
hi NvimTreeWindowPicker  guibg=#a6accd
hi link NvimTreeSpecialFile  NvimTreeNormal
hi NvimTreeNormal  guifg=#e4f0fb
hi NvimTreeRootFolder  guifg=#5de4c7
hi link NvimTreeOpenedFolderName  NvimTreeFolderName
hi NvimTreeFolderName  guifg=#91b4d5
hi NvimTreeOpenedFile  guifg=#e4f0fb guibg=#303340
hi NvimTreeImageFile  guifg=#e4f0fb
hi NvimTreeGitStaged  guifg=#89ddff
hi NvimTreeGitRenamed  guifg=#42675a
hi NvimTreeGitNew  guifg=#5de4c7
hi NvimTreeGitMerge  guifg=#add7ff
" hi NvimTreeGitIgnored  cleared
hi NvimTreeGitDirty  guifg=#7390aa
hi NvimTreeGitDeleted  guifg=#d0679d
hi NvimTreeFolderIcon  guifg=#91b4d5
hi NvimTreeFileStaged  guifg=#89ddff
hi NvimTreeFileRenamed  guifg=#506477
hi NvimTreeFileNew  guifg=#5de4c7
hi NvimTreeFileMerge  guifg=#add7ff
hi NvimTreeFileDirty  guifg=#7390aa
hi NvimTreeFileDeleted  guifg=#d0679d
hi NvimTreeEmptyFolderName  guifg=#506477
hi ModesVisual     guibg=#fffac2
hi ModesInsert     guibg=#5de4c7
hi ModesDelete     guibg=#d0679d
hi ModesCopy       guibg=#fffac2
hi link SignDelete      GitSignsDelete
hi GitSignsDelete  guifg=#d0679d
hi link SignChange      GitSignsChange
hi GitSignsChange  guifg=#add7ff
hi link SignAdd         GitSignsAdd
hi GitSignsAdd     guifg=#5de4c7
hi BufferVisibleTarget  guifg=#fffac2
hi BufferVisibleSign  guifg=#767c9d
hi BufferVisibleMod  guifg=#5de4c7
hi BufferVisibleIndex  guifg=#a6accd
hi BufferVisible   guifg=#a6accd
hi BufferTabpageFill  guifg=#1b1e28 guibg=#1b1e28
hi BufferInactiveTarget  guifg=#fffac2
hi BufferInactiveSign  guifg=#767c9d
hi BufferInactiveMod  guifg=#5de4c7
hi BufferInactiveIndex  guifg=#a6accd
hi BufferInactive  guifg=#a6accd
hi BufferCurrentTarget  guifg=#fffac2 guibg=#1b1e28
hi BufferCurrentSign  guifg=#a6accd guibg=#1b1e28
hi BufferCurrentMod  guifg=#5de4c7 guibg=#1b1e28
hi BufferCurrentIndex  guifg=#e4f0fb guibg=#1b1e28
hi BufferCurrent   guifg=#e4f0fb guibg=#1b1e28
hi rainbowcol7     guifg=#91b4d5
hi rainbowcol6     guifg=#d0679d
hi rainbowcol5     guifg=#5fb3a1
hi rainbowcol4     guifg=#add7ff
hi rainbowcol3     guifg=#fffac2
hi rainbowcol2     guifg=#5de4c7
hi rainbowcol1     guifg=#89ddff
hi link cssTSError      cssClassName
hi cssClassName    gui=italic guifg=#5fb3a1
hi cssDefinition   guifg=#add7ff
hi cssPseudoClass  gui=italic guifg=#91b4d5
hi cssTSKeyword    guifg=#a6accd
hi cssTSType       guifg=#5de4c7
hi cssTSProperty   guifg=#add7ff
hi cssTSFunction   guifg=#a6accd
hi luaTSConstructor  guifg=#a6accd
hi typescriptObjectType  guifg=#a6accd
hi typescriptParenExp  guifg=#767c9d
hi typescriptTypeCast  guifg=#767c9d
hi typescriptEnum  guifg=#7390aa
hi typescriptCastKeyword  guifg=#767c9d
hi typescriptTSInclude  guifg=#5de4c7
hi typescriptIdentifierName  guifg=#767c9d
hi typescriptBlock  guifg=#e4f0fb
hi typescriptConstraint  guifg=#5de4c7
hi typescriptDefault  guifg=#5de4c7
hi typescriptExport  guifg=#5de4c7
hi typescriptVariable  guifg=#add7ff
" hi @import         cleared
hi @import.identifier.typescript  guifg=#add7ff
hi @keyword.import.typescript  guifg=#5de4c7
hi @keyword.export.typescript  guifg=#5de4c7
hi @import.identifier.tsx  guifg=#add7ff
hi @keyword.import.tsx  guifg=#5de4c7
hi @keyword.export.tsx  guifg=#5de4c7
hi TSURI           guifg=#91b4d5
hi @title          gui=bold guifg=#5fb3a1
hi @text           guifg=#e4f0fb
hi @tag.attribute  gui=italic guifg=#91b4d5
hi @tag.delimiter  guifg=#e4f0fb
hi @punctuation.bracket  guifg=#e4f0fb
hi @punctuation.delimiter  guifg=#91b4d5
hi @parameter      guifg=#e4f0fb
hi @method         guifg=#5de4c7
hi @keyword.operator  guifg=#5de4c7
hi @keyword.function  guifg=#add7ff
hi @keyword.return  guifg=#5fb3a1
hi TSInclude       guifg=#add7ff
hi @function.call  guifg=#a6accd
hi @constant.falsy  guifg=#d0679d
hi DiagnosticStatusLineWarn  guifg=#fffac2 guibg=#171922
hi DiagnosticStatusLineInfo  guifg=#91b4d5 guibg=#171922
hi DiagnosticStatusLineHint  guifg=#89ddff guibg=#171922
hi DiagnosticStatusLineError  guifg=#d0679d guibg=#171922
hi DiagnosticDefaultWarn  guifg=#fffac2
hi DiagnosticDefaultInfo  guifg=#91b4d5
hi DiagnosticDefaultHint  guifg=#89ddff
hi DiagnosticDefaultError  guifg=#d0679d
hi debugBreakpoint  guifg=#d0679d guibg=#1b1e28
hi debugPC         guibg=#303340
hi markdownLinkText  gui=underline guifg=#89ddff
hi markdownH4      gui=bold guifg=#add7ff
hi markdownH3      gui=bold guifg=#add7ff
hi markdownH2      gui=bold guifg=#add7ff
hi markdownH1      gui=bold guifg=#add7ff
hi markdownCodeBlock  guifg=#5fb3a1
hi markdownCode    guifg=#a6accd
hi markdownHeadingDelimiter  gui=bold guifg=#7390aa
hi mkdLink         gui=underline guifg=#89ddff
hi mkdCodeEnd      gui=bold guifg=#5fb3a1
hi mkdCodeStart    gui=bold guifg=#5fb3a1
hi mkdCodeDelimiter  guifg=#e4f0fb guibg=#171922
hi htmlH2          gui=bold guifg=#5de4c7
hi htmlH1          gui=bold guifg=#5de4c7
hi qfFileName      guifg=#767c9d
hi qfLineNr        guifg=#506477
hi Italic          gui=italic
hi link TerminalNormal  SagaNormal
hi SagaNormal      guibg=#1b1e28
hi link TerminalBorder  SagaBorder
hi SagaBorder      guifg=#767c9d guibg=#1b1e28
hi link OutlinePreviewNormal  SagaBorder
hi link OutlinePreviewBorder  SagaNormal
hi OutlineIndent   guifg=#add7ff
hi SagaShadow      guibg=#171922
hi link LspSagaLightBulb  DiagnosticSignHint
hi CallHierarchyTitle  guifg=#fcc5e9
hi CallHierarchyIcon  guifg=#fcc5e9
hi link CallHierarchyBorder  SagaBorder
hi link CallHierarchyNormal  SagaNormal
hi DiagnosticWord  guifg=#ffffff
hi DiagnosticPos   guifg=#767c9d
hi link DiagnosticInfoBorder  DiagnosticInfo
hi link DefinitionNormal  SagaNormal
hi link DiagnosticHintBorder  DiagnosticHint
hi link DiagnosticWarnBorder  DiagnosticWarn
hi link FinderNormal    SagaNormal
hi link DiagnosticErrorBorder  DiagnosticError
hi link FinderPreviewSearch  Search
hi link DiagnosticNormal  SagaNormal
hi DiagnosticSource  guifg=#767c9d
hi FinderType      guifg=#5de4c7
hi FinderIcon      guifg=#fffac2
hi link FinderCount     Label
hi FinderFileName  guifg=#ffffff
hi FinderSelection  guifg=#767c9d
hi CodeActionNumber  guifg=#91b4d5
hi CodeActionText  guifg=#fffac2
hi link CodeActionBorder  SagaBorder
hi link CodeActionNormal  SagaNormal
hi link ActionPreviewBorder  SagaBorder
hi link ActionPreviewNormal  SagaNormal
hi SagaBeacon      guibg=#fffac2
hi SagaCollapse    guifg=#5fb3a1
hi SagaExpand      guifg=#5fb3a1
hi TitleIcon       guifg=#add7ff
hi TitleString     guifg=#add7ff
hi link NotifyERRORIcon  NotifyERRORBorder
hi NotifyERRORBorder  guifg=#d0679d
hi link NotifyERRORTitle  NotifyERRORBorder
hi link NotifyTRACEIcon  NotifyTRACEBorder
hi NotifyTRACEBorder  guifg=#89ddff
hi link NotifyTRACETitle  NotifyTRACEBorder
hi link NotifyDEBUGIcon  NotifyDEBUGBorder
hi NotifyDEBUGBorder  guifg=#89ddff
hi link NotifyDEBUGTitle  NotifyDEBUGBorder
hi link NotifyWARNIcon  NotifyWARNBorder
hi NotifyWARNBorder  guifg=#fffac2
hi link NotifyWARNTitle  NotifyWARNBorder
hi link NotifyINFOIcon  NotifyINFOBorder
hi NotifyINFOBorder  guifg=#5de4c7
hi link NotifyINFOTitle  NotifyINFOBorder
hi LeapBackground  guibg=#303340
hi LeapLabelSelected  guifg=#1b1e28 guibg=#fffac2
hi LeapLabelSecondary  guifg=#1b1e28 guibg=#89ddff
hi LeapLabelPrimary  guifg=#1b1e28 guibg=#5de4c7
hi LeapMatch       guifg=#1b1e28 guibg=#fcc5e9
hi HopCursor       guifg=#91b4d5
hi HopUnmatched    guifg=#506477
hi HopNextKey2     guifg=#5fb3a1
hi HopNextKey1     guifg=#5de4c7
hi HopNextKey      guifg=#89ddff
hi TelescopeResultsDiffDelete  guifg=#d0679d
hi TelescopeResultsDiffChange  guifg=#fffac2
hi TelescopeResultsDiffAdd  guifg=#5de4c7
hi TelescopePromptTitle  guifg=#1b1e28 guibg=#89ddff
hi TelescopePreviewTitle  guifg=#1b1e28 guibg=#5de4c7
hi TelescopePromptPrefix  guifg=#767c9d
hi TelescopePromptNormal  guifg=#e4f0fb
hi TelescopePromptBorder  guifg=#303340
hi TelescopeBorder  guifg=#303340
hi TelescopeTitle  guifg=#767c9d
hi TelescopeSelection  guifg=#e4f0fb guibg=#303340
hi TelescopeNormal  guifg=#e4f0fb
hi TelescopeMatching  guifg=#5de4c7
hi link PounceMatch     Search
hi link PounceGap       Search
hi PounceAcceptBest  guifg=#e4f0fb guibg=#e4f0fb
hi PounceAccept    guifg=#d0679d guibg=#e4f0fb
hi CmpItemKindVariable  guifg=#5de4c7
hi CmpItemKindSnippet  guifg=#a6accd
hi CmpItemKindMethod  guifg=#d0679d
hi CmpItemKindInterface  guifg=#add7ff
hi CmpItemKindFunction  guifg=#89ddff
hi CmpItemKindClass  guifg=#fffac2
hi CmpItemKind     guifg=#91b4d5
hi CmpItemAbbrMatchFuzzy  gui=bold guifg=#5de4c7
hi CmpItemAbbrMatch  gui=bold guifg=#e4f0fb
hi CmpItemAbbrDeprecated  gui=strikethrough guifg=#d0679d
hi CmpItemAbbr     guifg=#767c9d
hi link IndentBlanklineSpaceCharBlankline  Whitespace
hi link IndentBlanklineSpaceChar  Whitespace
hi IndentBlanklineContextStart  guifg=#fffac2
hi IndentBlanklineContextChar  guifg=#fffac2
hi Bold            gui=bold
hi WhichKeyGroup   guifg=#e4f0fb
hi ActionPreviewTitle  guifg=#767c9d guibg=#1b1e28
hi FinderSpinnerTitle  guifg=#d0679d
hi FinderSpinner   guifg=#d0679d
hi FinderVirtText  guifg=#89ddff
hi link FinderBorder    SagaBorder
hi link FinderPreviewBorder  SagaBorder
hi link DefinitionBorder  SagaBorder
hi link DefinitionSearch  Search
hi link HoverNormal     SagaNormal
hi link HoverBorder     SagaBorder
hi link RenameBorder    SagaBorder
hi RenameNormal    guifg=#ffffff
hi link RenameMatch     Search
hi link DiagnosticBorder  SagaBorder
hi link DapUINormal     Normal
hi link DapUIVariable   Normal
hi link DapUIScope      Identifier
hi link DapUIType       Type
hi link DapUIValue      Normal
hi link DapUIModifiedValue  Function
hi link DapUIDecoration  Identifier
hi link DapUIThread     Identifier
hi link DapUIStoppedThread  Function
hi link DapUIFrameName  Normal
hi link DapUISource     Define
hi link DapUILineNumber  LineNr
hi link DapUIFloatNormal  NormalFloat
hi link DapUIFloatBorder  Identifier
hi link DapUIWatchesEmpty  PreProc
hi link DapUIWatchesValue  Statement
hi link DapUIWatchesError  PreProc
hi link DapUIBreakpointsPath  Identifier
hi link DapUIBreakpointsInfo  Statement
hi link DapUIBreakpointsCurrentLine  CursorLineNr
hi link DapUIBreakpointsLine  DapUILineNumber
hi link DapUIBreakpointsDisabledLine  Comment
hi link DapUICurrentFrameName  DapUIBreakpointsCurrentLine
hi link DapUIStepOver   Label
hi link DapUIStepInto   Label
hi link DapUIStepBack   Label
hi link DapUIStepOut    Label
hi link DapUIStop       PreProc
hi link DapUIPlayPause  Repeat
hi link DapUIRestart    Repeat
hi link DapUIUnavailable  Comment
hi link DapUIWinSelect  Special
hi link DapUIEndofBuffer  EndOfBuffer
hi DapUINormalNC   guibg=#07080d
hi DapUIPlayPauseNC  guibg=#07080d
hi DapUIRestartNC  guibg=#07080d
hi DapUIStopNC     guibg=#07080d
hi DapUIUnavailableNC  guibg=#07080d
hi DapUIStepOverNC  guibg=#07080d
hi DapUIStepIntoNC  guibg=#07080d
hi DapUIStepBackNC  guibg=#07080d
hi DapUIStepOutNC  guibg=#07080d
hi link TelescopePreviewGroup  Constant
hi link TelescopePreviewUser  Constant
hi link TelescopePreviewSize  String
hi link TelescopePreviewSticky  Keyword
hi link TelescopePreviewHyphen  NonText
hi link TelescopePreviewExecute  String
hi link TelescopePreviewWrite  Statement
hi link TelescopePreviewRead  Constant
hi link TelescopePreviewBlock  Constant
hi link TelescopePreviewDirectory  Directory
hi link TelescopePreviewCharDev  Constant
hi link TelescopePreviewPipe  Constant
hi link TelescopePreviewMatch  Search
hi link TelescopePromptCounter  NonText
hi link TelescopeResultsNormal  TelescopeNormal
hi link TelescopeMultiIcon  Identifier
hi link TelescopeMultiSelection  Type
hi link TelescopeSelectionCaret  TelescopeSelection
hi link TelescopePreviewLink  Special
hi link TelescopePreviewSocket  Statement
hi link TelescopeResultsTitle  TelescopeTitle
hi link TelescopePreviewLine  Visual
hi link TelescopeResultsBorder  TelescopeBorder
hi link TelescopeResultsDiffUntracked  NonText
hi link TelescopeResultsSpecialComment  SpecialComment
hi link TelescopeResultsComment  Comment
hi link TelescopeResultsNumber  Number
hi link TelescopeResultsIdentifier  Identifier
hi link TelescopeResultsLineNr  LineNr
hi link TelescopeResultsVariable  SpecialChar
" hi Struct          cleared
hi link TelescopeResultsStruct  Struct
hi link TelescopeResultsOperator  Operator
" hi Method          cleared
hi link TelescopeResultsMethod  Method
hi link TelescopePreviewBorder  TelescopeBorder
hi link TelescopeResultsFunction  Function
hi link TelescopeResultsField  Function
hi link TelescopeResultsConstant  Constant
hi link TelescopeResultsClass  Function
hi link TelescopePreviewMessage  TelescopePreviewNormal
hi link TelescopePreviewMessageFillchar  TelescopePreviewMessage
hi link TelescopePreviewNormal  TelescopeNormal
hi link TelescopePreviewDate  Directory
hi link TabLineProject  Pmenu
hi TabLineProjectEdge  guibg=#171922
hi TabLineEdge     guifg=#171922 guibg=#171922
hi TabLineSelEdge  guifg=#171922 guibg=#303340
hi TabLineIconModified  ctermfg=2 guifg=#cf6a4c guibg=#171922
hi TabLineIconModifiedSel  ctermfg=2 guifg=#cf6a4c guibg=#303340
" hi GlanceNone      cleared
hi GlancePreviewBorderBottom  guifg=#a6998f guibg=#252833
hi GlanceListBorderBottom  guifg=#a6998f guibg=#2b2e39
hi GlanceBorderTop  guifg=#a6998f guibg=#2f323d
hi GlancePreviewEndOfBuffer  guifg=#252833 guibg=#252833
hi GlanceListEndOfBuffer  guifg=#2b2e39 guibg=#2b2e39
hi GlanceFoldIcon  guifg=#a8b4be
hi GlanceIndent    guifg=#596d80
hi GlanceWinBarTitle  guifg=#e4f0fb guibg=#2f323d
hi GlanceWinBarFilepath  guifg=#a8b4be guibg=#2f323d
hi GlanceWinBarFilename  guifg=#e4f0fb guibg=#2f323d
hi GlanceListFilepath  guifg=#a8b4be
hi GlanceListNormal  guifg=#e4f0fb guibg=#2b2e39
hi GlanceListCursorLine  guibg=#414452
hi GlancePreviewSignColumn  guifg=#252833
hi GlancePreviewLineNr  guifg=#5c7084
hi GlancePreviewCursorLine  guibg=#3b3e4c
hi GlancePreviewNormal  guibg=#252833
hi GlancePreviewMatch  guifg=#ffffff guibg=#506477
hi link GlanceListMatch  Search
hi link GlanceListFilename  Directory
hi link GlanceListCount  Number
hi NeotestPassed   ctermfg=10 guifg=#96f291
hi NeotestFailed   ctermfg=9 guifg=#f70067
hi NeotestRunning  ctermfg=11 guifg=#ffec63
hi NeotestSkipped  ctermfg=14 guifg=#00f1f5
hi link NeotestTest     Normal
hi NeotestNamespace  ctermfg=13 guifg=#d484ff
hi NeotestFocused  cterm=bold,underline gui=bold,underline
hi NeotestFile     ctermfg=14 guifg=#00f1f5
hi NeotestDir      ctermfg=14 guifg=#00f1f5
hi NeotestIndent   ctermfg=248 guifg=#8b8b8b
hi NeotestExpandMarker  ctermfg=248 guifg=#8094b4
hi NeotestAdapterName  ctermfg=9 guifg=#f70067
hi NeotestWinSelect  ctermfg=14 gui=bold guifg=#00f1f5
hi NeotestMarked   ctermfg=130 gui=bold guifg=#f79000
hi NeotestTarget   ctermfg=9 guifg=#f70067
hi NeotestWatching  ctermfg=11 guifg=#ffec63
hi link NeotestUnknown  Normal
hi link ArrowFileIndex  CursorLineNr
hi link ArrowCurrentFile  SpecialChar
hi link ArrowAction     Character
hi link ArrowDeleteMode  DiagnosticError
hi NvimTreeFolderArrowClosed  guifg=#3fc5ff
hi NvimTreeFolderArrowOpen  guifg=#3fc5ff
hi link NvimTreeGitFolderStagedHL  NvimTreeGitFileStagedHL
" hi NvimTreeFolderStaged  cleared
hi link NvimTreeGitFolderRenamedHL  NvimTreeGitFileRenamedHL
" hi NvimTreeFolderRenamed  cleared
hi link NvimTreeGitFolderNewHL  NvimTreeGitFileNewHL
" hi NvimTreeFolderNew  cleared
hi link NvimTreeGitFolderMergeHL  NvimTreeGitFileMergeHL
" hi NvimTreeFolderMerge  cleared
hi link NvimTreeGitFolderIgnoredHL  NvimTreeGitFileIgnoredHL
" hi NvimTreeFolderIgnored  cleared
hi link NvimTreeGitFolderDirtyHL  NvimTreeGitFileDirtyHL
" hi NvimTreeFolderDirty  cleared
hi link NvimTreeGitFolderDeletedHL  NvimTreeGitFileDeletedHL
" hi NvimTreeFolderDeleted  cleared
hi link NvimTreeGitFileIgnoredHL  NvimTreeGitIgnoredIcon
" hi NvimTreeFileIgnored  cleared
hi link NvimTreeGitFileStagedHL  NvimTreeFileStaged
hi link NvimTreeGitFileRenamedHL  NvimTreeFileRenamed
hi link NvimTreeGitFileNewHL  NvimTreeFileNew
hi link NvimTreeGitFileMergeHL  NvimTreeFileMerge
hi link NvimTreeGitRenamedIcon  NvimTreeGitRenamed
hi link NvimTreeGitNewIcon  NvimTreeGitNew
hi link NvimTreeGitMergeIcon  NvimTreeGitMerge
hi link NvimTreeGitIgnoredIcon  Comment
hi link NvimTreeGitDirtyIcon  NvimTreeGitDirty
hi link NvimTreeGitDeletedIcon  NvimTreeGitDeleted
hi link NvimTreeOpenedHL  NvimTreeOpenedFile
hi link NvimTreeDiagnosticErrorFileHL  DiagnosticUnderlineError
" hi NvimTreeLspDiagnosticsErrorText  cleared
hi link NvimTreeDiagnosticHintFolderHL  NvimTreeDiagnosticHintFileHL
" hi NvimTreeLspDiagnosticsHintFolderText  cleared
hi link NvimTreeDiagnosticInfoFolderHL  NvimTreeDiagnosticInfoFileHL
" hi NvimTreeLspDiagnosticsInformationFolderText  cleared
hi link NvimTreeDiagnosticWarnFolderHL  NvimTreeDiagnosticWarnFileHL
" hi NvimTreeLspDiagnosticsWarningFolderText  cleared
hi link NvimTreeDiagnosticErrorFolderHL  NvimTreeDiagnosticErrorFileHL
" hi NvimTreeLspDiagnosticsErrorFolderText  cleared
hi link NvimTreeDiagnosticHintFileHL  DiagnosticUnderlineHint
" hi NvimTreeLspDiagnosticsHintText  cleared
hi link NvimTreeModifiedIcon  Type
" hi NvimTreeModifiedFile  cleared
hi link NvimTreeDiagnosticWarnFileHL  DiagnosticUnderlineWarn
" hi NvimTreeLspDiagnosticsWarningText  cleared
hi link NvimTreeBookmarkIcon  NvimTreeFolderIcon
" hi NvimTreeBookmark  cleared
hi link NvimTreeDiagnosticHintIcon  DiagnosticHint
" hi NvimTreeLspDiagnosticsHint  cleared
hi link NvimTreeDiagnosticInfoIcon  DiagnosticInfo
" hi NvimTreeLspDiagnosticsInformation  cleared
hi link NvimTreeGitFileDirtyHL  NvimTreeFileDirty
hi link NvimTreeDiagnosticWarnIcon  DiagnosticWarn
" hi NvimTreeLspDiagnosticsWarning  cleared
hi link TreeGitStagedIcon  NvimTreeGitStaged
hi link NvimTreeDiagnosticInfoFileHL  DiagnosticUnderlineInfo
" hi NvimTreeLspDiagnosticsInformationText  cleared
hi link NvimTreeGitFileDeletedHL  NvimTreeFileDeleted
hi link NvimTreeDiagnosticErrorIcon  DiagnosticError
" hi NvimTreeLspDiagnosticsError  cleared
hi link NvimTreeNormalFloat  NormalFloat
hi link NvimTreeNormalFloatBorder  FloatBorder
hi link NvimTreeNormalNC  NvimTreeNormal
hi link NvimTreeLineNr  LineNr
hi link NvimTreeWinSeparator  WinSeparator
hi link NvimTreeEndOfBuffer  EndOfBuffer
hi link NvimTreePopup   Normal
hi link NvimTreeSignColumn  NvimTreeNormal
hi link NvimTreeCursorColumn  CursorColumn
hi link NvimTreeCursorLine  CursorLine
hi link NvimTreeCursorLineNr  CursorLineNr
hi link NvimTreeStatusLine  StatusLine
hi link NvimTreeStatusLineNC  StatusLineNC
hi link NvimTreeExecFile  Question
hi link NvimTreeSymlink Underlined
hi link NvimTreeSymlinkFolderName Directory
hi link NvimTreeFileIcon  NvimTreeNormal
hi link NvimTreeSymlinkIcon NvimTreeNormal
hi link NvimTreeOpenedFolderIcon  NvimTreeFolderIcon
hi link NvimTreeClosedFolderIcon  NvimTreeFolderIcon
hi link NvimTreeIndentMarker  NvimTreeFolderIcon
hi link NvimTreeLiveFilterPrefix  PreProc
hi link NvimTreeLiveFilterValue  ModeMsg
hi link NvimTreeCutHL   SpellBad
hi link NvimTreeCopiedHL  SpellRare
hi link NvimTreeBookmarkHL  SpellLocal
hi link NvimTreeModifiedFileHL  NvimTreeModifiedIcon
hi link NvimTreeModifiedFolderHL  NvimTreeModifiedFileHL
hi link NvimTreeHiddenIcon  Conceal
hi link NvimTreeHiddenFileHL  NvimTreeHiddenIcon
hi link NvimTreeHiddenFolderHL  NvimTreeHiddenFileHL
hi link NvimTreeHiddenDisplay  Conceal
hi DevIconDefault  ctermfg=66 guifg=#6d8086
hi DevIconVsix     ctermfg=98 guifg=#854cc7
hi DevIconKDEglobals  ctermfg=32 guifg=#1c99f3
hi DevIconGraphQL  ctermfg=199 guifg=#e535ab
hi DevIconLabView  ctermfg=220 guifg=#fec60a
hi DevIconXSettingsdConf  ctermfg=196 guifg=#e54d18
hi DevIconBrewfile  ctermfg=52 guifg=#701516
hi DevIconIonic    ctermfg=33 guifg=#4f8ff7
hi DevIconxmonad   ctermfg=203 guifg=#fd4d5d
hi DevIconOggSpeexAudio  ctermfg=24 guifg=#0075aa
hi DevIconWranglerConfig  ctermfg=208 guifg=#f48120
hi DevIconVimrc    ctermfg=28 guifg=#019833
hi DevIconI18nConfig  ctermfg=104 guifg=#7986cb
hi DevIconJavaScriptReactSpec  ctermfg=45 guifg=#20c2e3
hi DevIconTxz      ctermfg=214 guifg=#eca517
hi DevIconSpecJs   ctermfg=185 guifg=#cbcb41
hi DevIconWeston   ctermfg=214 guifg=#ffbb01
hi DevIconTrueTypeFont  ctermfg=255 guifg=#ececec
hi DevIconHyprlandd  ctermfg=37 guifg=#00aaae
hi DevIconSolveSpace  ctermfg=101 guifg=#839463
hi DevIconGulpfile  ctermfg=167 guifg=#cc3e44
hi DevIconVLC      ctermfg=208 guifg=#ee7a00
hi DevIconMotoko   ctermfg=135 guifg=#9772fb
hi DevIconSolidWorksPrt  ctermfg=101 guifg=#839463
hi DevIconSketchUp  ctermfg=101 guifg=#839463
hi DevIconFsi      ctermfg=74 guifg=#519aba
hi DevIconGruntfile  ctermfg=166 guifg=#e37933
hi DevIconSha512   ctermfg=103 guifg=#8c86af
hi DevIconXml      ctermfg=166 guifg=#e37933
hi DevIconTmux     ctermfg=34 guifg=#14ba19
hi DevIconTgz      ctermfg=214 guifg=#eca517
hi DevIconSha1     ctermfg=103 guifg=#8c86af
hi DevIconGradleProperties  ctermfg=24 guifg=#005f87
hi DevIconGradleWrapperProperties  ctermfg=24 guifg=#005f87
hi DevIconLiquid   ctermfg=106 guifg=#95bf47
hi DevIconFortran  ctermfg=97 guifg=#734f96
hi DevIconTailwindConfig  ctermfg=45 guifg=#20c2e3
hi DevIconKiCadFootprintTable  ctermfg=231 guifg=#ffffff
hi DevIconKiCadSymbolTable  ctermfg=231 guifg=#ffffff
hi DevIconKiCadCache  ctermfg=231 guifg=#ffffff
hi DevIconTestTs   ctermfg=74 guifg=#519aba
hi DevIconFavicon  ctermfg=185 guifg=#cbcb41
hi DevIconJavaScriptReactTest  ctermfg=45 guifg=#20c2e3
hi DevIconTestJs   ctermfg=185 guifg=#cbcb41
hi DevIconTypoScriptSetup  ctermfg=208 guifg=#ff8700
hi DevIconImage    ctermfg=181 guifg=#d0bec8
hi DevIconLib      ctermfg=52 guifg=#4d2c0b
hi DevIconSecurity  ctermfg=251 guifg=#bec4c9
hi DevIconEslintrc  ctermfg=56 guifg=#4b32c3
hi DevIconSvgz     ctermfg=214 guifg=#ffb13b
hi DevIconKotlinScript  ctermfg=99 guifg=#7f52ff
hi DevIconDockerfile  ctermfg=68 guifg=#458ee6
hi DevIconRar      ctermfg=214 guifg=#eca517
hi DevIconCommitlintConfig  ctermfg=30 guifg=#2b9689
hi DevIconJl       ctermfg=133 guifg=#a270ba
hi DevIconErl      ctermfg=163 guifg=#b83998
hi DevIconEpp      ctermfg=214 guifg=#ffa61a
hi DevIconLocalization  ctermfg=31 guifg=#2596be
hi DevIconQt       ctermfg=77 guifg=#40cd52
hi DevIconElm      ctermfg=74 guifg=#519aba
hi DevIconExs      ctermfg=140 guifg=#a074c4
hi DevIconStorybookVue  ctermfg=204 guifg=#ff4785
hi DevIconElf      ctermfg=124 guifg=#9f0500
hi DevIconLeex     ctermfg=140 guifg=#a074c4
hi DevIconCodeOfConduct  ctermfg=161 guifg=#e41662
hi DevIconEex      ctermfg=140 guifg=#a074c4
hi DevIconNotebook  ctermfg=208 guifg=#f57d01
hi DevIconWebmanifest  ctermfg=185 guifg=#f1e05a
hi DevIconStorybookTypeScript  ctermfg=204 guifg=#ff4785
hi DevIconStorybookSvelte  ctermfg=204 guifg=#ff4785
hi DevIconPub      ctermfg=222 guifg=#e3c58e
hi DevIconCantorrc  ctermfg=32 guifg=#1c99f3
hi DevIconStorybookJsx  ctermfg=204 guifg=#ff4785
hi DevIconBunLockfile  ctermfg=253 guifg=#eadcd1
hi DevIconStorybookJavaScript  ctermfg=204 guifg=#ff4785
hi DevIconOpenTypeFont  ctermfg=255 guifg=#ececec
hi DevIconPsd      ctermfg=74 guifg=#519aba
hi DevIconStep     ctermfg=101 guifg=#839463
hi DevIconRlib     ctermfg=216 guifg=#dea584
hi DevIconXls      ctermfg=29 guifg=#207245
hi DevIconXcPlayground  ctermfg=166 guifg=#e37933
hi DevIconWebpack  ctermfg=74 guifg=#519aba
hi DevIconWasm     ctermfg=62 guifg=#5c4cdb
hi DevIconGv       ctermfg=24 guifg=#30638e
hi DevIconSublime  ctermfg=166 guifg=#e37933
hi DevIconBSPWM    ctermfg=236 guifg=#2f2f2f
hi DevIconMjs      ctermfg=185 guifg=#f1e05a
hi DevIconPyd      ctermfg=222 guifg=#ffe291
hi DevIconPyc      ctermfg=222 guifg=#ffe291
hi DevIconPsb      ctermfg=74 guifg=#519aba
hi DevIconProcfile  ctermfg=140 guifg=#a074c4
hi DevIconGvimrc   ctermfg=28 guifg=#019833
hi DevIconOpusAudioFile  ctermfg=24 guifg=#0075aa
hi DevIconDesktopEntry  ctermfg=54 guifg=#563d7c
hi DevIconMaterial  ctermfg=163 guifg=#b83998
hi DevIconLock     ctermfg=250 guifg=#bbbbbb
hi DevIconLicense  ctermfg=185 guifg=#cbcb41
hi DevIconIco      ctermfg=185 guifg=#cbcb41
hi DevIconKbx      ctermfg=243 guifg=#737672
hi DevIconHaxe     ctermfg=208 guifg=#ea8220
hi DevIconOrgMode  ctermfg=73 guifg=#77aa99
hi DevIconGodotProject  ctermfg=66 guifg=#6d8086
hi DevIconBinaryGLTF  ctermfg=214 guifg=#ffb13b
hi DevIconPy       ctermfg=214 guifg=#ffbc03
hi DevIconEjs      ctermfg=185 guifg=#cbcb41
hi DevIconDropbox  ctermfg=27 guifg=#0061fe
hi DevIconGitCommit  ctermfg=196 guifg=#f54d27
hi DevIconPyx      ctermfg=39 guifg=#5aa7e4
hi DevIconDrools   ctermfg=217 guifg=#ffafaf
hi DevIconCue      ctermfg=211 guifg=#ed95ae
hi DevIconOpenSCAD  ctermfg=220 guifg=#f9d72c
hi DevIconAPL      ctermfg=35 guifg=#24a148
hi DevIconPpt      ctermfg=160 guifg=#cb4a32
hi DevIconSql      ctermfg=188 guifg=#dad8d8
hi DevIconMli      ctermfg=166 guifg=#e37933
hi DevIconPsScriptModulefile  ctermfg=68 guifg=#6975c4
hi DevIconXInitrc  ctermfg=196 guifg=#e54d18
hi DevIconSettingsJson  ctermfg=98 guifg=#854cc7
hi DevIconClangConfig  ctermfg=66 guifg=#6d8086
hi DevIconNushell  ctermfg=36 guifg=#3aa675
hi DevIconTypoScript  ctermfg=208 guifg=#ff8700
hi DevIconAi       ctermfg=185 guifg=#cbcb41
hi DevIconIgs      ctermfg=101 guifg=#839463
hi DevIconIges     ctermfg=101 guifg=#839463
hi DevIconToml     ctermfg=124 guifg=#9c4221
hi DevIconIge      ctermfg=101 guifg=#839463
hi DevIconIfc      ctermfg=101 guifg=#839463
hi DevIconIfb      ctermfg=18 guifg=#2b2e83
hi DevIconNix      ctermfg=110 guifg=#7ebae4
hi DevIconNim      ctermfg=220 guifg=#f3d400
hi DevIconIcs      ctermfg=18 guifg=#2b2e83
hi DevIconPls      ctermfg=211 guifg=#ed95ae
hi DevIconIcalendar  ctermfg=18 guifg=#2b2e83
hi DevIconIcal     ctermfg=18 guifg=#2b2e83
hi DevIconArch     ctermfg=67 guifg=#0f94d2
hi DevIconCache    ctermfg=231 guifg=#ffffff
hi DevIconPhp      ctermfg=140 guifg=#a074c4
hi DevIconMustache  ctermfg=166 guifg=#e37933
hi DevIconHuff     ctermfg=56 guifg=#4242c7
hi DevIconClojureC  ctermfg=113 guifg=#8dc149
hi DevIconClojure  ctermfg=113 guifg=#8dc149
hi DevIconMojo     ctermfg=196 guifg=#ff4c1f
hi DevIconRazorPage  ctermfg=56 guifg=#512bd4
hi DevIconPdf      ctermfg=124 guifg=#b30b00
hi DevIconVala     ctermfg=91 guifg=#7b3db9
hi DevIconGz       ctermfg=214 guifg=#eca517
hi DevIconBackup   ctermfg=66 guifg=#6d8086
hi DevIconGTK      ctermfg=231 guifg=#ffffff
hi DevIconVoid     ctermfg=23 guifg=#295340
hi DevIconZig      ctermfg=172 guifg=#f69a1b
hi DevIconBazel    ctermfg=113 guifg=#89e051
hi DevIconCobol    ctermfg=25 guifg=#005ca5
hi DevIconCrdownload  ctermfg=43 guifg=#44cda8
hi DevIconTxt      ctermfg=113 guifg=#89e051
hi DevIconScalaScript  ctermfg=167 guifg=#cc3e44
hi DevIconBicepParameters  ctermfg=133 guifg=#9f74b3
hi DevIconBicep    ctermfg=74 guifg=#519aba
hi DevIconBibTeX   ctermfg=185 guifg=#cbcb41
hi DevIconProlog   ctermfg=179 guifg=#e4b854
hi DevIconLibreOfficeWriter  ctermfg=81 guifg=#2dcbfd
hi DevIconLibreOfficeCalc  ctermfg=119 guifg=#78fc4e
hi DevIconLibreOfficeImpress  ctermfg=215 guifg=#fe9c45
hi DevIconConfigRu  ctermfg=52 guifg=#701516
hi DevIconAstro    ctermfg=197 guifg=#e23f67
hi DevIconConda    ctermfg=34 guifg=#43b02a
hi DevIconFIGletFontFormat  ctermfg=255 guifg=#ececec
hi DevIconFIGletFontControl  ctermfg=255 guifg=#ececec
hi DevIconTypeScript  ctermfg=74 guifg=#519aba
hi DevIconFreeLosslessAudioCodec  ctermfg=24 guifg=#0075aa
hi DevIconTSConfig  ctermfg=74 guifg=#519aba
hi DevIconPrettierIgnore  ctermfg=33 guifg=#4285f4
hi DevIconGemfile  ctermfg=52 guifg=#701516
hi DevIconAppleScript  ctermfg=66 guifg=#6d8085
hi DevIconScss     ctermfg=204 guifg=#f55385
hi DevIconXorgConf  ctermfg=196 guifg=#e54d18
hi DevIconSig      ctermfg=166 guifg=#e37933
hi DevIconKsh      ctermfg=240 guifg=#4d5a5e
hi DevIconFreeCAD  ctermfg=160 guifg=#cb333b
hi DevIconScheme   ctermfg=255 guifg=#eeeeee
hi DevIconGPRBuildProject  ctermfg=66 guifg=#6d8086
hi DevIconAdaSpecification  ctermfg=140 guifg=#a074c4
hi DevIconBz       ctermfg=214 guifg=#eca517
hi DevIcon3DObjectFile  ctermfg=102 guifg=#888888
hi DevIconBoundaryRepresentation  ctermfg=101 guifg=#839463
hi DevIconBashrc   ctermfg=113 guifg=#89e051
hi DevIconPl       ctermfg=74 guifg=#519aba
hi DevIconGradleWrapperScript  ctermfg=24 guifg=#005f87
hi DevIconFusion360  ctermfg=101 guifg=#839463
hi DevIconSabayon  ctermfg=251 guifg=#c6c6c6
hi DevIconExe      ctermfg=124 guifg=#9f0500
hi DevIconMakefile  ctermfg=66 guifg=#6d8086
hi DevIconVagrantfile  ctermfg=27 guifg=#1563ff
hi DevIconBlade    ctermfg=203 guifg=#f05340
hi DevIconEpub     ctermfg=215 guifg=#eab16d
hi DevIconEmbeddedOpenTypeFont  ctermfg=255 guifg=#ececec
hi DevIconRaspberryPiOS  ctermfg=161 guifg=#be1848
hi DevIconElisp    ctermfg=97 guifg=#8172be
hi DevIconQubesOS  ctermfg=33 guifg=#3774d8
hi DevIconObjectiveCPlusPlus  ctermfg=74 guifg=#519aba
hi DevIconMd       ctermfg=253 guifg=#dddddd
hi DevIconMarkdown  ctermfg=253 guifg=#dddddd
hi DevIconAzureCli  ctermfg=32 guifg=#0078d4
hi DevIconpostmarketOS  ctermfg=28 guifg=#009900
hi DevIconBlender  ctermfg=208 guifg=#ea7600
hi DevIconObjectiveC  ctermfg=111 guifg=#599eff
hi DevIconAutoCADDxf  ctermfg=101 guifg=#839463
hi DevIconAutoCADDwg  ctermfg=101 guifg=#839463
hi DevIconParrot   ctermfg=45 guifg=#54deff
hi DevIconParabolaGNULinuxLibre  ctermfg=103 guifg=#797dac
hi DevIconopenSUSE  ctermfg=70 guifg=#6fb424
hi DevIconDockerIgnore  ctermfg=68 guifg=#458ee6
hi DevIconHtm      ctermfg=196 guifg=#e34c26
hi DevIconHtml     ctermfg=196 guifg=#e44d26
hi DevIconH        ctermfg=140 guifg=#a074c4
hi DevIconDconf    ctermfg=231 guifg=#ffffff
hi DevIconMXLinux  ctermfg=231 guifg=#ffffff
hi DevIconEx       ctermfg=140 guifg=#a074c4
hi DevIconManjaro  ctermfg=35 guifg=#33b959
hi DevIconTypeScriptDeclaration  ctermfg=172 guifg=#d59855
hi DevIconMageia   ctermfg=67 guifg=#2397d4
hi DevIconEdn      ctermfg=74 guifg=#519aba
hi DevIconD        ctermfg=124 guifg=#b03931
hi DevIconLocOS    ctermfg=214 guifg=#fab402
hi DevIconCPlusPlus  ctermfg=204 guifg=#f34b7d
hi DevIconCsh      ctermfg=240 guifg=#4d5a5e
hi DevIconCp       ctermfg=74 guifg=#519aba
hi DevIconKubuntu  ctermfg=32 guifg=#007ac2
hi DevIconKDEneon  ctermfg=37 guifg=#20a6a4
hi DevIconDb       ctermfg=188 guifg=#dad8d8
hi DevIconKali     ctermfg=69 guifg=#2777ff
hi DevIconIllumos  ctermfg=196 guifg=#ff430f
hi DevIconLinux    ctermfg=231 guifg=#fdfdfb
hi DevIconHyperbolaGNULinuxLibre  ctermfg=250 guifg=#c0c0c0
hi DevIconGuix     ctermfg=220 guifg=#ffcc00
hi DevIconGentoo   ctermfg=146 guifg=#b1abce
hi DevIconGarudaLinux  ctermfg=33 guifg=#2974e1
hi DevIconFreeBSD  ctermfg=160 guifg=#c90f02
hi DevIconVerilog  ctermfg=28 guifg=#019833
hi DevIconEndeavour  ctermfg=91 guifg=#7b3db9
hi DevIconElementary  ctermfg=67 guifg=#5890c2
hi DevIconDevuan   ctermfg=238 guifg=#404a52
hi DevIconDeepin   ctermfg=39 guifg=#2ca7f8
hi DevIconRb       ctermfg=52 guifg=#701516
hi DevIconDebian   ctermfg=88 guifg=#a80030
hi DevIconRmd      ctermfg=74 guifg=#519aba
hi DevIconCrystalLinux  ctermfg=129 guifg=#a900ff
hi DevIconGoMod    ctermfg=38 guifg=#00add8
hi DevIconLhs      ctermfg=140 guifg=#a074c4
hi DevIconLuaurc   ctermfg=75 guifg=#00a2ff
hi DevIconTex      ctermfg=22 guifg=#3d6117
hi DevIconUI       ctermfg=27 guifg=#015bf0
hi DevIconGitLogo  ctermfg=196 guifg=#f14c28
hi DevIconJustfile  ctermfg=66 guifg=#6d8086
hi DevIconGroovy   ctermfg=24 guifg=#4a687c
hi DevIconAsciinema  ctermfg=208 guifg=#fd971f
hi DevIconTerminal  ctermfg=34 guifg=#31b53e
hi DevIconPrettierConfig  ctermfg=33 guifg=#4285f4
hi DevIconNPMIgnore  ctermfg=197 guifg=#e8274b
hi DevIconSh       ctermfg=240 guifg=#4d5a5e
hi DevIconGitIgnore  ctermfg=196 guifg=#f54d27
hi DevIconGitAttributes  ctermfg=196 guifg=#f54d27
hi DevIconGitModules  ctermfg=196 guifg=#f54d27
hi DevIconXaml     ctermfg=56 guifg=#512bd4
hi DevIconBigLinux  ctermfg=38 guifg=#189fc8
hi DevIconTemplate  ctermfg=178 guifg=#dbbd30
hi DevIconTempl    ctermfg=178 guifg=#dbbd30
hi DevIconArtix    ctermfg=38 guifg=#41b4d7
hi DevIconArcoLinux  ctermfg=68 guifg=#6690eb
hi DevIconSub      ctermfg=214 guifg=#ffb713
hi DevIconConfiguration  ctermfg=66 guifg=#6d8086
hi DevIconDownload  ctermfg=43 guifg=#44cda8
hi DevIconArchlabs  ctermfg=238 guifg=#503f42
hi DevIconStorybookTsx  ctermfg=204 guifg=#ff4785
hi DevIconDump     ctermfg=188 guifg=#dad8d8
hi DevIconImportConfiguration  ctermfg=255 guifg=#ececec
hi DevIconArchcraft  ctermfg=108 guifg=#86bba3
hi DevIconYaml     ctermfg=66 guifg=#6d8086
hi DevIconGDScript  ctermfg=66 guifg=#6d8086
hi DevIconR        ctermfg=25 guifg=#2266ba
hi DevIconDocx     ctermfg=26 guifg=#185abd
hi DevIconApple    ctermfg=248 guifg=#a2aaad
hi DevIconMixLock  ctermfg=140 guifg=#a074c4
hi DevIconSystemVerilog  ctermfg=28 guifg=#019833
hi DevIconJWM      ctermfg=32 guifg=#0078cd
hi DevIconBashProfile  ctermfg=113 guifg=#89e051
hi DevIconAOSC     ctermfg=124 guifg=#c00000
hi DevIconSwift    ctermfg=166 guifg=#e37933
hi DevIconReScript  ctermfg=167 guifg=#cc3e44
hi DevIconSway     ctermfg=64 guifg=#68751c
hi DevIconAlpine   ctermfg=24 guifg=#0d597f
hi DevIconSvelte   ctermfg=196 guifg=#ff3e00
hi DevIconASM      ctermfg=25 guifg=#0071c5
hi DevIconAlmalinux  ctermfg=203 guifg=#ff4649
hi DevIconMl       ctermfg=166 guifg=#e37933
hi DevIconKdenlive  ctermfg=110 guifg=#83b8f2
hi DevIconMpv      ctermfg=53 guifg=#3b1342
hi DevIconStp      ctermfg=101 guifg=#839463
hi DevIconLog      ctermfg=253 guifg=#dddddd
hi DevIconJson5    ctermfg=185 guifg=#cbcb41
hi DevIconPackageJson  ctermfg=197 guifg=#e8274b
hi DevIconOggMultiplex  ctermfg=208 guifg=#fd971f
hi DevIconArduino  ctermfg=73 guifg=#56b6c2
hi DevIconAdaBody  ctermfg=111 guifg=#599eff
hi DevIconAss      ctermfg=214 guifg=#ffb713
hi DevIconSsa      ctermfg=214 guifg=#ffb713
hi DevIconSrt      ctermfg=214 guifg=#ffb713
hi DevIconBz3      ctermfg=214 guifg=#eca517
hi DevIconPyLintConfig  ctermfg=66 guifg=#6d8086
hi DevIconTypoScriptConfig  ctermfg=208 guifg=#ff8700
hi DevIconGoSum    ctermfg=38 guifg=#00add8
hi DevIconBzl      ctermfg=113 guifg=#89e051
hi DevIconXauthority  ctermfg=196 guifg=#e54d18
hi DevIconEbook    ctermfg=215 guifg=#eab16d
hi DevIconTerraform  ctermfg=93 guifg=#5f43e9
hi DevIconNPMrc    ctermfg=197 guifg=#e8274b
hi DevIconIxx      ctermfg=74 guifg=#519aba
hi DevIconMATE     ctermfg=113 guifg=#9bda5c
hi DevIconRproj    ctermfg=29 guifg=#358a5b
hi DevIconSpecTs   ctermfg=74 guifg=#519aba
hi DevIconLibreOfficeGraphics  ctermfg=227 guifg=#fffb57
hi DevIconHyprland  ctermfg=37 guifg=#00aaae
hi DevIconHypridle  ctermfg=37 guifg=#00aaae
hi DevIconLXDE     ctermfg=248 guifg=#a4a4a4
hi DevIconLibreOfficeFormula  ctermfg=204 guifg=#ff5a96
hi DevIconHyprlock  ctermfg=37 guifg=#00aaae
hi DevIconGNOME    ctermfg=231 guifg=#ffffff
hi DevIconGleam    ctermfg=219 guifg=#ffaff3
hi DevIconCinnamon  ctermfg=166 guifg=#dc682e
hi DevIconSln      ctermfg=98 guifg=#854cc7
hi DevIconOggVorbis  ctermfg=24 guifg=#0075aa
hi DevIconNodeModules  ctermfg=197 guifg=#e8274b
hi DevIconBudgie   ctermfg=240 guifg=#4e5361
hi DevIconNswag    ctermfg=112 guifg=#85ea2d
hi DevIconMint     ctermfg=108 guifg=#87c095
hi DevIconSml      ctermfg=166 guifg=#e37933
hi DevIconSignature  ctermfg=166 guifg=#e37933
hi DevIconVanillaOS  ctermfg=214 guifg=#fabd4d
hi DevIconIso      ctermfg=181 guifg=#d0bec8
hi DevIconSolidity  ctermfg=74 guifg=#519aba
hi DevIconPuppyLinux  ctermfg=145 guifg=#a2aeb9
hi DevIconHeex     ctermfg=140 guifg=#a074c4
hi DevIconDot      ctermfg=24 guifg=#30638e
hi DevIconConf     ctermfg=66 guifg=#6d8086
hi DevIconAvif     ctermfg=140 guifg=#a074c4
hi DevIconNfo      ctermfg=230 guifg=#ffffcd
hi DevIconRedhat   ctermfg=196 guifg=#ee0000
hi DevIconLeap     ctermfg=221 guifg=#fbc75d
hi DevIconZshrc    ctermfg=113 guifg=#89e051
hi DevIconZshprofile  ctermfg=113 guifg=#89e051
hi DevIconImg      ctermfg=181 guifg=#d0bec8
hi DevIconCpp      ctermfg=74 guifg=#519aba
hi DevIconZshenv   ctermfg=113 guifg=#89e051
hi DevIconRobotsTxt  ctermfg=60 guifg=#5d7096
hi DevIconInfo     ctermfg=230 guifg=#ffffcd
hi DevIconriver    ctermfg=16 guifg=#000000
hi DevIconMpp      ctermfg=74 guifg=#519aba
hi DevIconXeroLinux  ctermfg=104 guifg=#888fe2
hi DevIconAdaFile  ctermfg=111 guifg=#599eff
hi DevIconJava     ctermfg=167 guifg=#cc3e44
hi DevIconMPEGAudioLayerIII  ctermfg=39 guifg=#00afff
hi DevIconBabelrc  ctermfg=185 guifg=#cbcb41
hi DevIconMobi     ctermfg=215 guifg=#eab16d
hi DevIconHyprpaper  ctermfg=37 guifg=#00aaae
hi DevIconJpg      ctermfg=140 guifg=#a074c4
hi DevIconSlackware  ctermfg=61 guifg=#475fa9
hi DevIconDiff     ctermfg=239 guifg=#41535b
hi DevIconEnlightenment  ctermfg=231 guifg=#ffffff
hi DevIconRs       ctermfg=216 guifg=#dea584
hi DevIconNixOS    ctermfg=110 guifg=#7ab1db
hi DevIcondwm      ctermfg=31 guifg=#1177aa
hi DevIconJson     ctermfg=185 guifg=#cbcb41
hi DevIconVim      ctermfg=28 guifg=#019833
hi DevIconVHDL     ctermfg=28 guifg=#019833
hi DevIconawesome  ctermfg=59 guifg=#535d6c
hi DevIconSolus    ctermfg=239 guifg=#4b5163
hi DevIconTails    ctermfg=54 guifg=#56347c
hi DevIconGoWork   ctermfg=38 guifg=#00add8
hi DevIconMOV      ctermfg=208 guifg=#fd971f
hi DevIconAUTHORS  ctermfg=135 guifg=#a172ff
hi DevIconScala    ctermfg=167 guifg=#cc3e44
hi DevIconMd5      ctermfg=103 guifg=#8c86af
hi DevIconSass     ctermfg=204 guifg=#f55385
hi DevIconPrusaSlicer  ctermfg=202 guifg=#ec6b23
hi DevIconFreeCADConfig  ctermfg=160 guifg=#cb333b
hi DevIconPackagesProps  ctermfg=75 guifg=#00a2ff
hi DevIconBuildTargets  ctermfg=75 guifg=#00a2ff
hi DevIconMagnet   ctermfg=124 guifg=#a51b16
hi DevIconLua      ctermfg=74 guifg=#51a0cf
hi DevIconM3u      ctermfg=211 guifg=#ed95ae
hi DevIconM4V      ctermfg=208 guifg=#fd971f
hi DevIconHTTP     ctermfg=31 guifg=#008ec7
hi DevIconMPEG4    ctermfg=39 guifg=#00afff
hi DevIconcuda     ctermfg=113 guifg=#89e051
hi DevIconBlueprint  ctermfg=68 guifg=#5796e2
hi DevIconcudah    ctermfg=140 guifg=#a074c4
hi DevIconFeature  ctermfg=34 guifg=#00a818
hi DevIconLXLE     ctermfg=238 guifg=#474747
hi DevIconKiCad    ctermfg=231 guifg=#ffffff
hi DevIconNobaraLinux  ctermfg=231 guifg=#ffffff
hi DevIconCsv      ctermfg=113 guifg=#89e051
hi DevIconCss      ctermfg=91 guifg=#663399
hi DevIconPop_OS   ctermfg=73 guifg=#48b9c7
hi DevIconXfce     ctermfg=74 guifg=#00aadf
hi DevIconFsharp   ctermfg=74 guifg=#519aba
hi DevIconLXQt     ctermfg=32 guifg=#0191d2
hi DevIconPrisma   ctermfg=62 guifg=#5a67d8
hi DevIconCs       ctermfg=58 guifg=#596706
hi DevIconCrystal  ctermfg=251 guifg=#c8c8c8
hi DevIcon3gp      ctermfg=208 guifg=#fd971f
hi DevIconSvg      ctermfg=214 guifg=#ffb13b
hi DevIconJsx      ctermfg=45 guifg=#20c2e3
hi DevIconQtile    ctermfg=231 guifg=#ffffff
hi DevIconLibrecadFontFile  ctermfg=255 guifg=#ececec
hi DevIconCxxm     ctermfg=74 guifg=#519aba
hi DevIconCppm     ctermfg=74 guifg=#519aba
hi DevIconCPlusPlusModule  ctermfg=204 guifg=#f34b7d
hi DevIconHpp      ctermfg=140 guifg=#a074c4
hi DevIconHxx      ctermfg=140 guifg=#a074c4
hi DevIconRockyLinux  ctermfg=36 guifg=#0fb37d
hi DevIconCxx      ctermfg=74 guifg=#519aba
hi DevIconYml      ctermfg=66 guifg=#6d8086
hi DevIconKrita    ctermfg=201 guifg=#f245fb
hi DevIconHh       ctermfg=140 guifg=#a074c4
hi DevIconTcl      ctermfg=25 guifg=#1e5cb3
hi DevIconLinuxKernelObject  ctermfg=253 guifg=#dcddd6
hi DevIconNorg     ctermfg=32 guifg=#4878be
hi DevIconTor      ctermfg=74 guifg=#519aba
hi DevIconMaven    ctermfg=52 guifg=#7a0d21
hi DevIconGradleSettings  ctermfg=24 guifg=#005f87
hi DevIconKdbx     ctermfg=71 guifg=#529b34
hi DevIconClojureJS  ctermfg=74 guifg=#519aba
hi DevIconi3       ctermfg=255 guifg=#e8ebee
hi DevIconFluxbox  ctermfg=240 guifg=#555555
hi DevIconKdb      ctermfg=71 guifg=#529b34
hi DevIconCheckhealth  ctermfg=75 guifg=#75b4fb
hi DevIconBz2      ctermfg=214 guifg=#eca517
hi DevIconGradleBuildScript  ctermfg=24 guifg=#005f87
hi DevIconOut      ctermfg=124 guifg=#9f0500
hi DevIconBin      ctermfg=124 guifg=#9f0500
hi DevIconAudioInterchangeFileFormat  ctermfg=39 guifg=#00afff
hi DevIconPackedResource  ctermfg=66 guifg=#6d8086
hi DevIconHrl      ctermfg=163 guifg=#b83998
hi DevIconPreCommitConfig  ctermfg=214 guifg=#f8b424
hi DevIconPatch    ctermfg=239 guifg=#41535b
hi DevIconOpenBSD  ctermfg=220 guifg=#f2ca30
hi DevIconHexadecimal  ctermfg=27 guifg=#2e63ff
hi DevIconnode     ctermfg=71 guifg=#5fa04e
hi DevIconM3u8     ctermfg=211 guifg=#ed95ae
hi DevIconLrc      ctermfg=214 guifg=#ffb713
hi DevIconNuxtConfig  ctermfg=42 guifg=#00c58e
hi DevIconapk      ctermfg=35 guifg=#34a853
hi DevIconPsManifestfile  ctermfg=68 guifg=#6975c4
hi DevIconApp      ctermfg=124 guifg=#9f0500
hi DevIconCjs      ctermfg=185 guifg=#cbcb41
hi DevIconHurl     ctermfg=198 guifg=#ff0288
hi DevIconDoc      ctermfg=26 guifg=#185abd
hi DevIconMailmap  ctermfg=196 guifg=#f54d27
hi DevIconKotlin   ctermfg=99 guifg=#7f52ff
hi DevIconWindows  ctermfg=39 guifg=#00a4ef
hi DevIconJs       ctermfg=185 guifg=#cbcb41
hi DevIconGitlabCI  ctermfg=196 guifg=#e24329
hi DevIconStorybookMjs  ctermfg=204 guifg=#ff4785
hi DevIconCMake    ctermfg=254 guifg=#dce3eb
hi DevIconWavPack  ctermfg=39 guifg=#00afff
hi DevIconDart     ctermfg=25 guifg=#03589c
hi DevIconObjectFile  ctermfg=124 guifg=#9f0500
hi DevIconGitBlameIgnore  ctermfg=196 guifg=#f54d27
hi DevIconGo       ctermfg=38 guifg=#00add8
hi DevIconEnv      ctermfg=227 guifg=#faf743
hi DevIconPyo      ctermfg=222 guifg=#ffe291
hi DevIconPm       ctermfg=74 guifg=#519aba
hi DevIconSuo      ctermfg=98 guifg=#854cc7
hi DevIconDsStore  ctermfg=239 guifg=#41535b
hi DevIconsbt      ctermfg=167 guifg=#cc3e44
hi DevIconVercel   ctermfg=231 guifg=#ffffff
hi DevIconSRCINFO  ctermfg=67 guifg=#0f94d2
hi DevIconCSharpProject  ctermfg=56 guifg=#512bd4
hi DevIconCodespell  ctermfg=41 guifg=#35da60
hi DevIconPxi      ctermfg=39 guifg=#5aa7e4
hi DevIconPp       ctermfg=214 guifg=#ffa61a
hi DevIconPyi      ctermfg=214 guifg=#ffbc03
hi DevIconKdenliveLayoutsrc  ctermfg=110 guifg=#83b8f2
hi DevIconRake     ctermfg=52 guifg=#701516
hi DevIconGodotTextScene  ctermfg=66 guifg=#6d8086
hi DevIconGCode    ctermfg=32 guifg=#1471ad
hi DevIconTypst    ctermfg=37 guifg=#0dbcc0
hi DevIconErb      ctermfg=52 guifg=#701516
hi DevIconPyw      ctermfg=39 guifg=#5aa7e4
hi DevIconPulseCodeModulation  ctermfg=24 guifg=#0075aa
hi DevIconPart     ctermfg=43 guifg=#44cda8
hi DevIconSlnx     ctermfg=98 guifg=#854cc7
hi DevIconGentooBuild  ctermfg=60 guifg=#4c416e
hi DevIconCts      ctermfg=74 guifg=#519aba
hi DevIconReadme   ctermfg=255 guifg=#ededed
hi DevIconAwk      ctermfg=240 guifg=#4d5a5e
hi DevIconStyl     ctermfg=113 guifg=#8dc149
hi DevIconFennel   ctermfg=230 guifg=#fff3d7
hi DevIconSharedObject  ctermfg=253 guifg=#dcddd6
hi DevIconOggVideo  ctermfg=208 guifg=#fd971f
hi DevIconMdx      ctermfg=74 guifg=#519aba
hi DevIconFs       ctermfg=74 guifg=#519aba
hi DevIconTFVars   ctermfg=93 guifg=#5f43e9
hi DevIconZst      ctermfg=214 guifg=#eca517
hi DevIconSolidWorksAsm  ctermfg=101 guifg=#839463
hi DevIconMts      ctermfg=74 guifg=#519aba
hi DevIconCoffee   ctermfg=185 guifg=#cbcb41
hi DevIconClojureDart  ctermfg=74 guifg=#519aba
hi DevIconZip      ctermfg=214 guifg=#eca517
hi DevIconPsScriptfile  ctermfg=68 guifg=#4273ca
hi DevIconKalgebrarc  ctermfg=32 guifg=#1c99f3
hi DevIconLess     ctermfg=54 guifg=#563d7c
hi DevIconCowsayFile  ctermfg=130 guifg=#965824
hi DevIconXz       ctermfg=214 guifg=#eca517
hi DevIconTwig     ctermfg=113 guifg=#8dc149
hi DevIconBazelWorkspace  ctermfg=113 guifg=#89e051
hi DevIconXpi      ctermfg=196 guifg=#ff1b01
hi DevIconTsx      ctermfg=26 guifg=#1354bf
hi DevIconLogos    ctermfg=74 guifg=#519aba
hi DevIconTypeScriptReactTest  ctermfg=26 guifg=#1354bf
hi DevIconQuery    ctermfg=107 guifg=#90a850
hi DevIconZsh      ctermfg=113 guifg=#89e051
hi DevIconSha224   ctermfg=103 guifg=#8c86af
hi DevIconSha384   ctermfg=103 guifg=#8c86af
hi DevIconFsx      ctermfg=74 guifg=#519aba
hi DevIconXcLocalization  ctermfg=31 guifg=#2596be
hi DevIconTypeScriptReactSpec  ctermfg=26 guifg=#1354bf
hi DevIconEslintIgnore  ctermfg=56 guifg=#4b32c3
hi DevIconVlang    ctermfg=67 guifg=#5d87bf
hi DevIconGIMP     ctermfg=240 guifg=#635b46
hi DevIconEditorConfig  ctermfg=255 guifg=#fff2f2
hi DevIconUbuntu   ctermfg=196 guifg=#dd4814
hi DevIconBat      ctermfg=191 guifg=#c1f12e
hi DevIconCentos   ctermfg=132 guifg=#a2518d
hi DevIconBazelBuild  ctermfg=113 guifg=#89e051
hi DevIconWavPackCorrection  ctermfg=39 guifg=#00afff
hi DevIconGradle   ctermfg=24 guifg=#005f87
hi DevIconBash     ctermfg=113 guifg=#89e051
hi DevIconBuildProps  ctermfg=75 guifg=#00a2ff
hi DevIconTorrent  ctermfg=43 guifg=#44cda8
hi DevIconVRML     ctermfg=102 guifg=#888888
hi DevIconGodotTextResource  ctermfg=66 guifg=#6d8086
hi DevIconSlim     ctermfg=196 guifg=#e34c26
hi DevIconJpegXl   ctermfg=140 guifg=#a074c4
hi DevIconIndexTheme  ctermfg=35 guifg=#2db96f
hi DevIconWebOpenFontFormat  ctermfg=255 guifg=#ececec
hi DevIconLuau     ctermfg=75 guifg=#00a2ff
hi DevIconRakefile  ctermfg=52 guifg=#701516
hi DevIconWindowsMediaAudio  ctermfg=39 guifg=#00afff
hi DevIconC        ctermfg=111 guifg=#599eff
hi DevIconMonkeysAudio  ctermfg=39 guifg=#00afff
hi DevIconAndroid  ctermfg=35 guifg=#34a853
hi DevIconVue      ctermfg=113 guifg=#8dc149
hi DevIconWaveformAudioFile  ctermfg=39 guifg=#00afff
hi DevIconZigObjectNotation  ctermfg=172 guifg=#f69a1b
hi DevIconSte      ctermfg=101 guifg=#839463
hi DevIconPxd      ctermfg=39 guifg=#5aa7e4
hi DevIconJsonc    ctermfg=185 guifg=#cbcb41
hi DevIconXlsx     ctermfg=29 guifg=#207245
hi DevIconAdvancedAudioCoding  ctermfg=39 guifg=#00afff
hi DevIconCson     ctermfg=185 guifg=#cbcb41
hi DevIconCMakeLists  ctermfg=254 guifg=#dce3eb
hi DevIcon7z       ctermfg=214 guifg=#eca517
hi DevIconAsc      ctermfg=242 guifg=#576d7f
hi DevIconPptx     ctermfg=160 guifg=#cb4a32
hi DevIconPy.typed  ctermfg=214 guifg=#ffbc03
hi DevIconStaticLibraryArchive  ctermfg=253 guifg=#dcddd6
hi DevIconThunderbird  ctermfg=33 guifg=#137be1
hi DevIconSvelteConfig  ctermfg=196 guifg=#ff3e00
hi DevIconKDEPlasma  ctermfg=33 guifg=#1b89f4
hi DevIconXul      ctermfg=166 guifg=#e37933
hi DevIconRss      ctermfg=215 guifg=#fb9d3b
hi DevIconConfig   ctermfg=66 guifg=#6d8086
hi DevIconZorin    ctermfg=39 guifg=#14a1e8
hi DevIconPng      ctermfg=140 guifg=#a074c4
hi DevIconPlatformio  ctermfg=208 guifg=#f6822b
hi DevIconJpeg     ctermfg=140 guifg=#a074c4
hi DevIconGif      ctermfg=140 guifg=#a074c4
hi DevIconBmp      ctermfg=140 guifg=#a074c4
hi DevIconWebp     ctermfg=140 guifg=#a074c4
hi DevIconFish     ctermfg=240 guifg=#4d5a5e
hi DevIconFedora   ctermfg=17 guifg=#072a5e
hi DevIconPackageLockJson  ctermfg=52 guifg=#7a0d21
hi DevIconMp4      ctermfg=208 guifg=#fd971f
hi DevIconMkv      ctermfg=208 guifg=#fd971f
hi DevIconWebm     ctermfg=208 guifg=#fd971f
hi DevIconFsscript  ctermfg=74 guifg=#519aba
hi DevIconXsession  ctermfg=196 guifg=#e54d18
hi DevIconTumbleweed  ctermfg=37 guifg=#35b9ab
hi DevIconOdin     ctermfg=32 guifg=#3882d2
hi DevIconTrisquelGNULinux  ctermfg=25 guifg=#0f58b6
hi DevIconXresources  ctermfg=196 guifg=#e54d18
hi DevIconHs       ctermfg=140 guifg=#a074c4
hi DevIconLXQtConfigFile  ctermfg=32 guifg=#0192d3
hi DevIconGemspec  ctermfg=52 guifg=#701516
hi DevIconSha256   ctermfg=103 guifg=#8c86af
hi DevIconFdmdownload  ctermfg=43 guifg=#44cda8
hi DevIconLXDEConfigFile  ctermfg=246 guifg=#909090
hi DevIconReScriptInterface  ctermfg=204 guifg=#f55385
hi DevIconHbs      ctermfg=202 guifg=#f0772b
hi DevIconDll      ctermfg=52 guifg=#4d2c0b
hi DevIconKritarc  ctermfg=201 guifg=#f245fb
hi DevIconPKGBUILD  ctermfg=67 guifg=#0f94d2
hi DevIconHaml     ctermfg=255 guifg=#eaeae1
hi DevIconNano     ctermfg=54 guifg=#440077
hi DevIconIni      ctermfg=66 guifg=#6d8086
hi DevIconKritadisplayrc  ctermfg=201 guifg=#f245fb
hi DevIconGitConfig  ctermfg=196 guifg=#f54d27
hi DevIconKdenliverc  ctermfg=110 guifg=#83b8f2
hi CopilotSuggestion  ctermfg=244 guifg=#808080
hi link CopilotAnnotation  MoreMsg
hi link CodeCompanionChatHeader  @markup.heading.2.markdown
hi link CodeCompanionChatSeparator  @punctuation.special.markdown
hi link CodeCompanionChatTokens  Comment
hi link CodeCompanionChatTool  Special
hi link CodeCompanionChatToolGroup  Constant
hi link CodeCompanionChatVariable  Identifier
hi link CodeCompanionVirtualText  Comment
hi lualine_transparent  gui=nocombine guifg=#e4f0fb guibg=#1b1e28
hi lualine_b_insert  gui=nocombine guifg=#e4f0fb guibg=#303340
hi lualine_a_insert  gui=bold,nocombine guifg=#1b1e28 guibg=#89ddff
hi lualine_b_normal  gui=nocombine guifg=#e4f0fb guibg=#303340
hi lualine_a_normal  gui=bold,nocombine guifg=#1b1e28 guibg=#5de4c7
hi lualine_c_normal  gui=nocombine guifg=#a6accd
hi lualine_b_inactive  gui=nocombine guifg=#506477 guibg=#303340
hi lualine_a_inactive  gui=bold,nocombine guifg=#506477 guibg=#303340
hi lualine_c_inactive  gui=nocombine guifg=#506477
hi lualine_b_command  gui=nocombine guifg=#e4f0fb guibg=#303340
hi lualine_a_command  gui=bold,nocombine guifg=#1b1e28 guibg=#fffac2
hi lualine_b_visual  gui=nocombine guifg=#e4f0fb guibg=#303340
hi lualine_a_visual  gui=bold,nocombine guifg=#1b1e28 guibg=#fffac2
hi lualine_b_replace  gui=nocombine guifg=#e4f0fb guibg=#303340
hi lualine_a_replace  gui=bold,nocombine guifg=#1b1e28 guibg=#d0679d
hi lualine_b_diff_added_normal  gui=nocombine guifg=#5de4c7 guibg=#303340
hi lualine_b_diff_added_insert  gui=nocombine guifg=#5de4c7 guibg=#303340
hi lualine_b_diff_added_visual  gui=nocombine guifg=#5de4c7 guibg=#303340
hi lualine_b_diff_added_replace  gui=nocombine guifg=#5de4c7 guibg=#303340
hi lualine_b_diff_added_command  gui=nocombine guifg=#5de4c7 guibg=#303340
hi lualine_b_diff_added_terminal  gui=nocombine guifg=#5de4c7 guibg=#303340
hi lualine_b_diff_added_inactive  gui=nocombine guifg=#5de4c7 guibg=#303340
hi lualine_b_diff_modified_normal  gui=nocombine guifg=#add7ff guibg=#303340
hi lualine_b_diff_modified_insert  gui=nocombine guifg=#add7ff guibg=#303340
hi lualine_b_diff_modified_visual  gui=nocombine guifg=#add7ff guibg=#303340
hi lualine_b_diff_modified_replace  gui=nocombine guifg=#add7ff guibg=#303340
hi lualine_b_diff_modified_command  gui=nocombine guifg=#add7ff guibg=#303340
hi lualine_b_diff_modified_terminal  gui=nocombine guifg=#add7ff guibg=#303340
hi lualine_b_diff_modified_inactive  gui=nocombine guifg=#add7ff guibg=#303340
hi lualine_b_diff_removed_normal  gui=nocombine guifg=#d0679d guibg=#303340
hi lualine_b_diff_removed_insert  gui=nocombine guifg=#d0679d guibg=#303340
hi lualine_b_diff_removed_visual  gui=nocombine guifg=#d0679d guibg=#303340
hi lualine_b_diff_removed_replace  gui=nocombine guifg=#d0679d guibg=#303340
hi lualine_b_diff_removed_command  gui=nocombine guifg=#d0679d guibg=#303340
hi lualine_b_diff_removed_terminal  gui=nocombine guifg=#d0679d guibg=#303340
hi lualine_b_diff_removed_inactive  gui=nocombine guifg=#d0679d guibg=#303340
hi lualine_b_diagnostics_error_normal  gui=nocombine guifg=#d0679d guibg=#303340
hi lualine_b_diagnostics_error_insert  gui=nocombine guifg=#d0679d guibg=#303340
hi lualine_b_diagnostics_error_visual  gui=nocombine guifg=#d0679d guibg=#303340
hi lualine_b_diagnostics_error_replace  gui=nocombine guifg=#d0679d guibg=#303340
hi lualine_b_diagnostics_error_command  gui=nocombine guifg=#d0679d guibg=#303340
hi lualine_b_diagnostics_error_terminal  gui=nocombine guifg=#d0679d guibg=#303340
hi lualine_b_diagnostics_error_inactive  gui=nocombine guifg=#d0679d guibg=#303340
hi lualine_b_diagnostics_warn_normal  gui=nocombine guifg=#fffac2 guibg=#303340
hi lualine_b_diagnostics_warn_insert  gui=nocombine guifg=#fffac2 guibg=#303340
hi lualine_b_diagnostics_warn_visual  gui=nocombine guifg=#fffac2 guibg=#303340
hi lualine_b_diagnostics_warn_replace  gui=nocombine guifg=#fffac2 guibg=#303340
hi lualine_b_diagnostics_warn_command  gui=nocombine guifg=#fffac2 guibg=#303340
hi lualine_b_diagnostics_warn_terminal  gui=nocombine guifg=#fffac2 guibg=#303340
hi lualine_b_diagnostics_warn_inactive  gui=nocombine guifg=#fffac2 guibg=#303340
hi lualine_b_diagnostics_info_normal  gui=nocombine guifg=#91b4d5 guibg=#303340
hi lualine_b_diagnostics_info_insert  gui=nocombine guifg=#91b4d5 guibg=#303340
hi lualine_b_diagnostics_info_visual  gui=nocombine guifg=#91b4d5 guibg=#303340
hi lualine_b_diagnostics_info_replace  gui=nocombine guifg=#91b4d5 guibg=#303340
hi lualine_b_diagnostics_info_command  gui=nocombine guifg=#91b4d5 guibg=#303340
hi lualine_b_diagnostics_info_terminal  gui=nocombine guifg=#91b4d5 guibg=#303340
hi lualine_b_diagnostics_info_inactive  gui=nocombine guifg=#91b4d5 guibg=#303340
hi lualine_b_diagnostics_hint_normal  gui=nocombine guifg=#89ddff guibg=#303340
hi lualine_b_diagnostics_hint_insert  gui=nocombine guifg=#89ddff guibg=#303340
hi lualine_b_diagnostics_hint_visual  gui=nocombine guifg=#89ddff guibg=#303340
hi lualine_b_diagnostics_hint_replace  gui=nocombine guifg=#89ddff guibg=#303340
hi lualine_b_diagnostics_hint_command  gui=nocombine guifg=#89ddff guibg=#303340
hi lualine_b_diagnostics_hint_terminal  gui=nocombine guifg=#89ddff guibg=#303340
hi lualine_b_diagnostics_hint_inactive  gui=nocombine guifg=#89ddff guibg=#303340
hi link DebugPrintLine Debug
hi NeogitCommitViewHeader  guifg=#1b1e28 guibg=#8eb0d1
hi NeogitFilePath  cterm=italic gui=italic guifg=#e4f0fb
hi link NeogitPopupActionDisabled  NeogitSubtleText
hi link NeogitSubtleText  Comment
hi NeogitPopupActionKey  guifg=#a6accd
hi link NeogitPopupConfigDisabled  NeogitSubtleText
hi link NeogitPopupConfigEnabled  SpecialChar
hi NeogitPopupConfigKey  guifg=#a6accd
hi link NeogitPopupOptionDisabled  NeogitSubtleText
hi link NeogitPopupOptionEnabled  SpecialChar
hi NeogitPopupOptionKey  guifg=#a6accd
hi link NeogitPopupSwitchDisabled  NeogitSubtleText
hi link NeogitPopupSwitchEnabled  SpecialChar
hi NeogitPopupSwitchKey  guifg=#a6accd
hi NeogitPopupBold  cterm=bold gui=bold
hi link NeogitPopupBranchName  String
hi link NeogitPopupSectionTitle  Function
hi NeogitDiffDeleteCursor  guifg=#d0679d guibg=#1f222c
hi NeogitDiffDeleteHighlight  guifg=#d0679d guibg=#764363
hi NeogitDiffDelete  guifg=#ab5481 guibg=#764363
hi NeogitDiffDeletions  guifg=#ab5481
hi NeogitDiffAddCursor  guifg=#5de4c7 guibg=#1f222c
hi NeogitDiffAddHighlight  guifg=#5de4c7 guibg=#3c8178
hi NeogitDiffAdd   guifg=#4cbba3 guibg=#3c8178
hi NeogitDiffAdditions  guifg=#4cbba3
hi NeogitActiveItem  cterm=bold gui=bold guifg=#1b1e28 guibg=#626782
hi NeogitFloatHeaderHighlight  cterm=bold gui=bold guifg=#add7ff guibg=#2a2d36
hi NeogitFloatHeader  cterm=bold gui=bold guibg=#1b1e28
hi NeogitTagDistance  guifg=#add7ff
hi NeogitTagName   guifg=#e4f0fb
hi link NeogitReverting  NeogitSectionHeader
hi NeogitSectionHeader  cterm=bold gui=bold guifg=#888da8
hi link NeogitPicking   NeogitSectionHeader
hi link NeogitRebasing  NeogitSectionHeader
hi link NeogitBisecting  NeogitSectionHeader
hi link NeogitMerging   NeogitSectionHeader
hi link NeogitStashes   NeogitSectionHeader
hi link NeogitStagedchanges  NeogitSectionHeader
hi link NeogitRecentcommits  NeogitSectionHeader
hi link NeogitUnpushedchanges  NeogitSectionHeader
hi link NeogitUnpulledchanges  NeogitSectionHeader
hi link NeogitUnmergedchanges  NeogitSectionHeader
hi link NeogitUnstagedchanges  NeogitSectionHeader
hi link NeogitUntrackedfiles  NeogitSectionHeader
" hi NeogitSectionHeaderCount  cleared
hi NeogitChangeNewFile  cterm=bold,italic gui=bold,italic guifg=#4cbba3
hi NeogitChangeUnmerged  cterm=bold,italic gui=bold,italic guifg=#bdc7d0
hi NeogitChangeCopied  cterm=bold,italic gui=bold,italic guifg=#8eb0d1
hi NeogitChangeUpdated  cterm=bold,italic gui=bold,italic guifg=#626782
hi NeogitChangeRenamed  cterm=bold,italic gui=bold,italic guifg=#888da8
hi NeogitChangeDeleted  cterm=bold,italic gui=bold,italic guifg=#ab5481
hi NeogitChangeAdded  cterm=bold,italic gui=bold,italic guifg=#4cbba3
hi NeogitChangeModified  cterm=bold,italic gui=bold,italic guifg=#bbc5ce
" hi NeogitChangeUntrackedstaged  cleared
hi link NeogitChangeUAstaged  NeogitChangeUnmerged
hi link NeogitChangeAUstaged  NeogitChangeUnmerged
hi link NeogitChangeUDstaged  NeogitChangeUnmerged
hi link NeogitChangeDUstaged  NeogitChangeUnmerged
hi link NeogitChangeAAstaged  NeogitChangeUnmerged
hi link NeogitChangeUUstaged  NeogitChangeUnmerged
hi link NeogitChangeDDstaged  NeogitChangeUnmerged
hi link NeogitChangeTstaged  NeogitChangeUpdated
hi link NeogitChangeRstaged  NeogitChangeRenamed
hi link NeogitChangeUstaged  NeogitChangeUpdated
hi link NeogitChangeCstaged  NeogitChangeCopied
hi link NeogitChangeDstaged  NeogitChangeDeleted
hi link NeogitChangeNstaged  NeogitChangeNewFile
hi link NeogitChangeAstaged  NeogitChangeAdded
hi link NeogitChangeMstaged  NeogitChangeModified
" hi NeogitChangeUntrackedunstaged  cleared
hi link NeogitChangeUAunstaged  NeogitChangeUnmerged
hi link NeogitChangeAUunstaged  NeogitChangeUnmerged
hi link NeogitChangeUDunstaged  NeogitChangeUnmerged
hi link NeogitChangeDUunstaged  NeogitChangeUnmerged
hi link NeogitChangeAAunstaged  NeogitChangeUnmerged
hi link NeogitChangeUUunstaged  NeogitChangeUnmerged
hi link NeogitChangeDDunstaged  NeogitChangeUnmerged
hi NeogitGraphRed  guifg=#d0679d
hi link NeogitSignatureGoodExpiredKey  NeogitGraphYellow
hi NeogitGraphYellow  guifg=#e4f0fb
hi link NeogitSignatureGoodExpired  NeogitGraphOrange
hi NeogitGraphOrange  guifg=#767c9d
hi link NeogitSignatureGoodUnknown  NeogitGraphBlue
hi NeogitGraphBlue  guifg=#e4f0fb
hi link NeogitSignatureNone  NeogitSubtleText
hi link NeogitSignatureMissing  NeogitGraphPurple
hi NeogitGraphPurple  guifg=#a6accd
hi link NeogitSignatureBad  NeogitGraphBoldRed
hi NeogitGraphBoldRed  cterm=bold gui=bold guifg=#d0679d
hi link NeogitSignatureGood  NeogitGraphGreen
hi NeogitGraphGreen  guifg=#5de4c7
hi NeogitGraphBoldGray  cterm=bold gui=bold guifg=#76787e
hi NeogitGraphBoldPurple  cterm=bold gui=bold guifg=#a6accd
hi NeogitGraphBoldBlue  cterm=bold gui=bold guifg=#e4f0fb
hi NeogitGraphBoldCyan  cterm=bold gui=bold guifg=#add7ff
hi NeogitGraphBoldGreen  cterm=bold gui=bold guifg=#5de4c7
hi NeogitGraphBoldYellow  cterm=bold gui=bold guifg=#e4f0fb
hi NeogitGraphBoldWhite  cterm=bold gui=bold guifg=#fcfcfc
hi NeogitGraphBoldOrange  cterm=bold gui=bold guifg=#767c9d
hi NeogitGraphGray  guifg=#76787e
hi NeogitGraphCyan  guifg=#add7ff
hi NeogitGraphWhite  guifg=#fcfcfc
hi NeogitGraphAuthor  guifg=#767c9d
hi link itChangeTunstaged  NeogitChangeUpdated
hi link itSignatureGoodRevokedKey  NeogitGraphRed
hi link Line  CursorLine
hi NeogitHunkMergeHeader  cterm=bold gui=bold guifg=#2a2d36 guibg=#76787e
hi NeogitHunkMergeHeaderHighlight  cterm=bold gui=bold guifg=#1b1e28 guibg=#8eb0d1
hi NeogitHunkMergeHeaderCursor  cterm=bold gui=bold guifg=#1b1e28 guibg=#8eb0d1
hi NeogitHunkHeader  cterm=bold gui=bold guifg=#1b1e28 guibg=#76787e
hi NeogitHunkHeaderHighlight  cterm=bold gui=bold guifg=#1b1e28 guibg=#b6bbd6
hi NeogitHunkHeaderCursor  cterm=bold gui=bold guifg=#1b1e28 guibg=#b6bbd6
hi NeogitDiffContext  guibg=#1f222c
hi NeogitDiffContextHighlight  guibg=#2a2d36
hi NeogitDiffContextCursor  guibg=#1f222c
hi link NeogitChangeRunstaged  NeogitChangeRenamed
hi link NeogitChangeUunstaged  NeogitChangeUpdated
hi link NeogitChangeCunstaged  NeogitChangeCopied
hi link NeogitChangeDunstaged  NeogitChangeDeleted
hi link NeogitChangeNunstaged  NeogitChangeNewFile
hi link NeogitChangeAunstaged  NeogitChangeAdded
hi link NeogitChangeMunstaged  NeogitChangeModified
" hi NeogitChangeUntrackeduntracked  cleared
hi link NeogitChangeUAuntracked  NeogitChangeUnmerged
hi link NeogitChangeAUuntracked  NeogitChangeUnmerged
hi link NeogitChangeUDuntracked  NeogitChangeUnmerged
hi link NeogitChangeDUuntracked  NeogitChangeUnmerged
hi link NeogitChangeAAuntracked  NeogitChangeUnmerged
hi link NeogitChangeUUuntracked  NeogitChangeUnmerged
hi link NeogitChangeDDuntracked  NeogitChangeUnmerged
hi link NeogitChangeRuntracked  NeogitChangeRenamed
hi link NeogitChangeUuntracked  NeogitChangeUpdated
hi link NeogitChangeCuntracked  NeogitChangeCopied
hi link NeogitChangeDuntracked  NeogitChangeDeleted
hi link NeogitChangeNuntracked  NeogitChangeNewFile
hi link NeogitChangeAuntracked  NeogitChangeAdded
hi link NeogitChangeMuntracked  NeogitChangeModified
hi link NeogitWinSeparator  WinSeparator
" hi NeogitFold      cleared
hi link NeogitRebaseDone  NeogitSubtleText
hi link NeogitStash     NeogitSubtleText
hi link NeogitObjectId  NeogitSubtleText
" hi NeogitStatusHEAD  cleared
hi NeogitUnpulledFrom  cterm=bold gui=bold guifg=#888da8
hi NeogitUnpushedTo  cterm=bold gui=bold guifg=#888da8
hi NeogitUnmergedInto  cterm=bold gui=bold guifg=#888da8
hi NeogitRemote    cterm=bold gui=bold guifg=#5de4c7
hi NeogitBranchHead  cterm=bold,underline gui=bold,underline guifg=#e4f0fb
hi NeogitBranch    cterm=bold gui=bold guifg=#e4f0fb
hi link NeogitCommandCodeError  Error
hi link NeogitCommandCodeNormal  String
hi link NeogitCommandTime  NeogitSubtleText
hi link NeogitCommandText  NeogitSubtleText
hi NeogitDiffHeaderHighlight  cterm=bold gui=bold guifg=#767c9d guibg=#343740
hi NeogitDiffHeader  cterm=bold gui=bold guifg=#e4f0fb guibg=#343740
hi link NeogitCommitViewDescription  String
" hi DiagnosticSignInformation  cleared
" hi DiagnosticSignWarning  cleared
hi link SnacksInputTitle  DiagnosticInfo
hi link SnacksInputPrompt  SnacksInputTitle
hi link SnacksInputNormal  Normal
hi link SnacksInputBorder  DiagnosticInfo
hi link SnacksInputIcon  DiagnosticHint
hi link SnacksPickerGitStatusIgnored  NonText
hi link SnacksPickerGitStatusUntracked  NonText
hi link SnacksPickerGitStatus  Special
hi link SnacksPickerGitStatusCopied  SnacksPickerGitStatus
hi link SnacksPickerGitStatusRenamed  SnacksPickerGitStatus
hi link SnacksPickerGitStatusDeleted  Removed
hi link SnacksPickerGitStatusModified  DiagnosticWarn
hi link SnacksPickerGitStatusAdded  Added
hi link SnacksPickerGitScope  Italic
hi link SnacksPickerGitType  Title
hi link SnacksPickerGitIssue  Number
hi link SnacksPickerGitDate  Special
hi link SnacksPickerSearch  Search
hi link SnacksPickerGitBranch  Title
hi link SnacksPickerGitDetached  DiagnosticWarn
hi link SnacksPickerGitBreaking  Error
hi link SnacksPickerUndoSaved  Special
hi link SnacksPickerUndoCurrent  @variable.builtin
hi link SnacksPickerDir  NonText
hi link SnacksPickerUndoAdded  Added
hi link SnacksPickerKeymapRhs  NonText
hi link SnacksPickerBufFlags  NonText
hi link SnacksPickerDimmed  Conceal
hi link SnacksPickerPathHidden  NonText
hi link SnacksPickerPathIgnored  NonText
hi link SnacksPickerLinkBroken  DiagnosticError
hi link SnacksPickerLink  Comment
hi link SnacksPickerTotals  NonText
hi link SnacksPickerInputSearch  @keyword
hi link SnacksPickerMatch  Special
hi link SnacksPickerDelim  Delimiter
hi link SnacksPickerCode  @markup.raw.markdown_inline
hi link SnacksPickerPickWinCurrent  CurSearch
hi link SnacksPickerIconArray  @punctuation.bracket
hi link SnacksPickerIconVariable  @variable
hi link SnacksPickerIconPackage  @module
hi link SnacksPickerCmd  Function
hi link SnacksPickerIconTypeParameter  @lsp.type.typeParameter
hi link SnacksPickerSpinner  Special
hi link SnacksPickerIconBoolean  @boolean
hi link SnacksPickerIconStruct  @lsp.type.struct
hi link SnacksPickerRow  String
hi link SnacksPickerIconString  @string
hi link SnacksPickerIconProperty  @property
hi link SnacksPickerIconOperator  @operator
hi link SnacksPickerIconObject  @constant
hi link SnacksPickerIconNumber  @number
hi link SnacksPickerIconNull  @constant.builtin
hi link SnacksPickerIconNamespace  @module
hi link SnacksPickerIconModule  @module
hi link SnacksPickerIconMethod  @function.method
hi link SnacksPickerIconKey  @lsp.type.keyword
hi link SnacksPickerIconInterface  @lsp.type.interface
hi link SnacksPickerIconFunction  @function
hi link SnacksPickerIconFile  Normal
hi link SnacksPickerIconField  @variable.member
hi link SnacksPickerBold  Bold
" hi SnacksPickerFile  cleared
hi link SnacksPickerComment  Comment
hi link SnacksPickerCol  LineNr
hi link SnacksPickerDesc  Comment
hi link SnacksPickerTree  LineNr
hi link SnacksPickerSelected  Number
hi link SnacksPickerCmdBuiltin  @constructor
hi link SnacksPickerUnselected  NonText
hi link SnacksPickerIdx  Number
hi link SnacksPickerUndoRemoved  Removed
hi link SnacksPickerAuPattern  String
hi link SnacksPickerAuEvent  Constant
hi link SnacksPickerAuGroup  Type
hi link SnacksPickerDiagnosticCode  Special
hi link SnacksPickerRegister  Number
hi link SnacksPickerKeymapMode  Number
hi link SnacksPickerKeymapLhs  Special
hi link SnacksPickerTime  Special
hi link SnacksPickerKeymapNowait  @variable.builtin
hi link SnacksPickerBufNr  Number
hi link SnacksPickerToggle  DiagnosticVirtualTextInfo
hi link SnacksPickerItalic  Italic
hi link SnacksPickerGitBranchCurrent  Number
hi link SnacksPickerPrompt  Special
hi link SnacksPickerSpecial  Special
hi link SnacksPickerLabel  SnacksPickerSpecial
hi link SnacksPickerDiagnosticSource  Comment
hi link SnacksPickerDirectory  Directory
hi link SnacksPickerIconEvent  Special
hi link SnacksPickerIconEnumMember  @lsp.type.enumMember
hi link SnacksPickerGitCommit  @variable.builtin
hi link SnacksPickerIconEnum  @lsp.type.enum
hi link SnacksPickerLspUnavailable  DiagnosticError
hi link SnacksPickerIconConstructor  @constructor
hi link SnacksPickerIconConstant  @constant
hi link SnacksPickerIconClass  @type
hi link SnacksPickerIconCategory  @module
hi link SnacksPickerIconName  @keyword
hi link SnacksPickerIconSource  @constant
hi link SnacksPickerManPage  Special
hi link SnacksPickerIcon  Special
hi link SnacksPickerLspAttachedBuf  DiagnosticInfo
hi link SnacksPickerLspAttached  DiagnosticWarn
hi link SnacksPickerLspEnabled  Special
hi link SnacksPickerLspDisabled  DiagnosticWarn
hi link SnacksPickerPickWin  Search
hi link SnacksPickerManSection  Number
hi link SnacksPickerGitStatusStaged  DiagnosticHint
hi link SnacksPickerGitStatusUnmerged  DiagnosticError
hi link SnacksPickerToggleHidden  SnacksPickerToggle
hi link SnacksPickerToggleRegex  SnacksPickerToggle
hi link SnacksPickerToggleIgnored  SnacksPickerToggle
hi link SnacksPickerToggleFollow  SnacksPickerToggle
hi link SnacksPickerToggleModified  SnacksPickerToggle
hi lualine_transitional_lualine_a_normal_to_lualine_c_normal  gui=nocombine guifg=#5de4c7
hi lualine_transitional_lualine_b_normal_to_lualine_c_normal  gui=nocombine guifg=#303340
hi lualine_transitional_lualine_a_normal_to_lualine_b_normal  gui=nocombine guifg=#5de4c7 guibg=#303340
hi link Timber.Insert   Search
hi link Timber.AddToBatch  Search
hi link Timber.LogPlaceholderSnippet  DiagnosticVirtualTextInfo
hi Timber.LogPlaceholderTime  cterm=italic gui=italic
" hi Timber.FloatingWindowEntrySeparator  cleared
hi Timber.SummaryEntryHeader  guifg=#a6998f
hi link Timber.SummaryEntryBodyHighlighted  PmenuSel
hi link Timber.SummaryJumpToLine  Search
hi link DressingSelectIdx  Special
hi link RenderMarkdownMath  @markup.math
hi link RenderMarkdownH4  @markup.heading.4.markdown
hi link RenderMarkdownTodo  @markup.raw
hi link RenderMarkdownH5  @markup.heading.5.markdown
hi link RenderMarkdownH6  @markup.heading.6.markdown
hi link RenderMarkdownH1Bg  DiffText
hi link RenderMarkdownH2Bg  DiffAdd
hi link RenderMarkdownH3Bg  DiffChange
hi link RenderMarkdownH4Bg  DiffDelete
hi link RenderMarkdownH5Bg  Visual
hi link RenderMarkdownH6Bg  CursorColumn
hi link RenderMarkdownSuccess  DiagnosticOk
hi link RenderMarkdownTableFill  Conceal
hi link RenderMarkdownError  DiagnosticError
hi link RenderMarkdownTableHead  @markup.heading
hi link RenderMarkdownQuote  @markup.quote
hi link RenderMarkdownQuote2  RenderMarkdownQuote
hi link RenderMarkdownChecked  @markup.list.checked
hi link RenderMarkdownHint  DiagnosticHint
hi link RenderMarkdownUnchecked  @markup.list.unchecked
hi link RenderMarkdownH3  @markup.heading.3.markdown
hi link RenderMarkdownLink  @markup.link.label.markdown_inline
hi link RenderMarkdownWikiLink  RenderMarkdownLink
hi link RenderMarkdownHtmlComment  @comment
hi link RenderMarkdownCode  ColorColumn
hi link RenderMarkdownCodeInline  RenderMarkdownCode
hi link RenderMarkdownCodeFallback  Normal
hi link RenderMarkdownCodeBorder  RenderMarkdownCode
hi link RenderMarkdownSign  SignColumn
hi link RenderMarkdownWarn  DiagnosticWarn
hi link RenderMarkdownInfo  DiagnosticInfo
hi link RenderMarkdownInlineHighlight  RenderMarkdownCodeInline
hi link RenderMarkdownQuote6  RenderMarkdownQuote
hi link RenderMarkdownQuote5  RenderMarkdownQuote
hi link RenderMarkdownH1  @markup.heading.1.markdown
hi link RenderMarkdownH2  @markup.heading.2.markdown
hi link RenderMarkdownQuote1  RenderMarkdownQuote
hi link RenderMarkdownQuote3  RenderMarkdownQuote
hi link RenderMarkdownQuote4  RenderMarkdownQuote
hi link RenderMarkdownBullet  Normal
hi link RenderMarkdownDash  LineNr
hi link RenderMarkdownTableRow  Normal
hi link RenderMarkdownIndent  Whitespace
hi AvanteButtonPrimaryHover  guifg=#1e222a guibg=#56b6c2
hi AvanteButtonPrimary  guifg=#1e222a guibg=#abb2bf
hi AvanteButtonDefaultHover  guifg=#1e222a guibg=#a9cf8a
hi AvanteButtonDefault  guifg=#1e222a guibg=#abb2bf
hi AvanteConfirmTitle  guifg=#1e222a guibg=#e06c75
hi AvanteToBeDeletedWOStrikethrough  guibg=#562c30
hi AvanteToBeDeleted  cterm=strikethrough gui=strikethrough guibg=#ffcccc
hi link AvanteInlineHint  Keyword
hi link AvantePopupHint  NormalFloat
hi link AvanteAnnotation  Comment
hi link AvanteSuggestion  Comment
hi AvanteSidebarWinSeparator  guifg=#282828 guibg=#282828
hi AvanteStateSpinnerCompacting  guifg=#1e222a guibg=#c678dd
hi AvanteStateSpinnerThinking  guifg=#1e222a guibg=#c678dd
hi link AvanteSidebarNormal  NormalFloat
hi AvanteStateSpinnerSucceeded  guifg=#1e222a guibg=#98c379
hi AvanteStateSpinnerFailed  guifg=#1e222a guibg=#e06c75
hi AvanteSidebarWinHorizontalSeparator  guifg=#e4f0fb guibg=#282828
hi AvanteStateSpinnerToolCalling  guifg=#1e222a guibg=#56b6c2
hi AvanteTitle     guifg=#1e222a guibg=#98c379
hi AvanteStateSpinnerGenerating  guifg=#1e222a guibg=#ab9df2
hi AvanteReversedNormal  guifg=#1b1e28 guibg=#e4f0fb
hi AvanteThirdTitle  guifg=#abb2bf guibg=#353b45
hi AvanteCommentFg  guifg=#a6998f
hi AvanteReversedTitle  guifg=#98c379
hi AvanteStateSpinnerSearching  guifg=#1e222a guibg=#c678dd
hi AvanteReversedSubtitle  guifg=#56b6c2
hi link AvantePromptInputBorder  NormalFloat
hi AvanteSubtitle  guifg=#1e222a guibg=#56b6c2
" hi AvantePromptInput  cleared
hi AvanteButtonDangerHover  guifg=#1e222a guibg=#e06c75
hi AvanteReversedThirdTitle  guifg=#353b45
hi AvanteButtonDanger  guifg=#1e222a guibg=#abb2bf
hi AvanteConflictCurrent  cterm=bold gui=bold guibg=#562c30
hi AvanteConflictIncomingLabel  guibg=#3f5c6b
hi AvanteConflictCurrentLabel  guibg=#6f393e
hi AvanteConflictIncoming  cterm=bold gui=bold guibg=#314753
hi link NvimSurroundHighlight  Visual
hi link BlinkCmpLabel CmpItemAbbr
hi link BlinkCmpLabelMatch CmpItemAbbrMatch
hi link BlinkCmpLabelDeprecated CmpItemAbbrDeprecated
" hi CmpItemMenu     cleared
hi link BlinkCmpLabelDetail  CmpItemMenu
hi link BlinkCmpLabelDescription  CmpItemMenu
hi link BlinkCmpSource  CmpItemMenu
hi link BlinkCmpKind    CmpItemKind
" hi CmpItemKindText  cleared
hi link BlinkCmpKindText  CmpItemKindText
hi link BlinkCmpKindMethod  CmpItemKindMethod
hi link BlinkCmpKindFunction  CmpItemKindFunction
" hi CmpItemKindConstructor  cleared
hi link BlinkCmpKindConstructor  CmpItemKindConstructor
" hi CmpItemKindField  cleared
hi link BlinkCmpKindField  CmpItemKindField
hi link BlinkCmpKindVariable  CmpItemKindVariable
hi link BlinkCmpKindClass  CmpItemKindClass
hi link BlinkCmpKindInterface  CmpItemKindInterface
" hi CmpItemKindModule  cleared
hi link BlinkCmpKindModule  CmpItemKindModule
" hi CmpItemKindProperty  cleared
hi link BlinkCmpKindProperty  CmpItemKindProperty
" hi CmpItemKindUnit  cleared
hi link BlinkCmpKindUnit  CmpItemKindUnit
" hi CmpItemKindValue  cleared
hi link BlinkCmpKindValue  CmpItemKindValue
" hi CmpItemKindEnum  cleared
hi link BlinkCmpKindEnum  CmpItemKindEnum
" hi CmpItemKindKeyword  cleared
hi link BlinkCmpKindKeyword  CmpItemKindKeyword
hi link BlinkCmpKindSnippet  CmpItemKindSnippet
" hi CmpItemKindColor  cleared
hi link BlinkCmpKindColor  CmpItemKindColor
" hi CmpItemKindFile  cleared
hi link BlinkCmpKindFile  CmpItemKindFile
" hi CmpItemKindReference  cleared
hi link BlinkCmpKindReference  CmpItemKindReference
" hi CmpItemKindFolder  cleared
hi link BlinkCmpKindFolder  CmpItemKindFolder
" hi CmpItemKindEnumMember  cleared
hi link BlinkCmpKindEnumMember  CmpItemKindEnumMember
" hi CmpItemKindConstant  cleared
hi link BlinkCmpKindConstant  CmpItemKindConstant
" hi CmpItemKindStruct  cleared
hi link BlinkCmpKindStruct  CmpItemKindStruct
" hi CmpItemKindEvent  cleared
hi link BlinkCmpKindEvent  CmpItemKindEvent
" hi CmpItemKindOperator  cleared
hi link BlinkCmpKindOperator  CmpItemKindOperator
" hi CmpItemKindTypeParameter  cleared
hi link BlinkCmpKindTypeParameter  CmpItemKindTypeParameter
hi link BlinkCmpScrollBarThumb  PmenuThumb
hi link BlinkCmpScrollBarGutter  PmenuSbar
hi link BlinkCmpGhostText  NonText
hi link BlinkCmpMenu    Pmenu
hi link BlinkCmpMenuBorder  Pmenu
hi link BlinkCmpMenuSelection  PmenuSel
hi link BlinkCmpDoc     NormalFloat
hi link BlinkCmpDocBorder  NormalFloat
hi link BlinkCmpDocSeparator  NormalFloat
hi link BlinkCmpDocCursorLine  Visual
hi link BlinkCmpSignatureHelp  NormalFloat
hi link BlinkCmpSignatureHelpBorder  NormalFloat
hi link BlinkCmpSignatureHelpActiveParameter  LspSignatureActiveParameter
hi lualine_transitional_lualine_a_command_to_lualine_c_normal  gui=nocombine guifg=#fffac2
hi lualine_transitional_lualine_b_command_to_lualine_c_normal  gui=nocombine guifg=#303340
hi lualine_transitional_lualine_a_command_to_lualine_b_command  gui=nocombine guifg=#fffac2 guibg=#303340
