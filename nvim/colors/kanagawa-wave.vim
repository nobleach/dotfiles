"########################################
"# Settings.                            #
"########################################

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "kanagawa-wave"

hi SpecialKey      guifg=#938aa9
hi EndOfBuffer     guifg=#1f1f28
hi TermCursor      cterm=reverse gui=reverse
hi NonText         guifg=#54546d
hi Directory       guifg=#7e9cd8
hi ErrorMsg        guifg=#e82424
hi IncSearch       guifg=#223249 guibg=#ff9e3b
hi Search          guifg=#dcd7ba guibg=#2d4f67
hi CurSearch       cterm=bold gui=bold guifg=#dcd7ba guibg=#2d4f67
hi MoreMsg         guifg=#658594
hi ModeMsg         cterm=bold gui=bold guifg=#ff9e3b
hi LineNr          guifg=#54546d guibg=#2a2a37
hi link LineNrAbove     LineNr
hi link LineNrBelow     LineNr
hi CursorLineNr    cterm=bold gui=bold guifg=#ff9e3b guibg=#2a2a37
hi link CursorLineSign  SignColumn
hi link CursorLineFold  FoldColumn
hi link Question        MoreMsg
hi StatusLine      guifg=#c8c093 guibg=#16161d
hi StatusLineNC    guifg=#54546d guibg=#16161d
hi WinSeparator    guifg=#16161d
hi link VertSplit       WinSeparator
hi Title           cterm=bold gui=bold guifg=#7e9cd8
hi Visual          guibg=#223249
" hi VisualNC        cleared
hi WarningMsg      guifg=#ff9e3b
hi link WildMenu        Pmenu
hi Folded          guifg=#938aa9 guibg=#2a2a37
hi FoldColumn      guifg=#54546d guibg=#2a2a37
hi DiffAdd         guibg=#2b3328
hi DiffChange      guibg=#252535
hi DiffDelete      guifg=#c34043 guibg=#43242b
hi DiffText        guibg=#49443c
hi SignColumn      guifg=#938aa9 guibg=#2a2a37
hi Conceal         cterm=bold gui=bold guifg=#938aa9
hi SpellBad        cterm=undercurl gui=undercurl guisp=#e82424
hi SpellCap        cterm=undercurl gui=undercurl guisp=#ff9e3b
hi SpellRare       cterm=undercurl gui=undercurl guisp=#ff9e3b
hi SpellLocal      cterm=undercurl gui=undercurl guisp=#ff9e3b
hi Pmenu           guifg=#dcd7ba guibg=#223249
hi PmenuSel        guibg=#2d4f67
hi PmenuMatch      cterm=bold gui=bold
hi PmenuMatchSel   cterm=bold gui=bold
hi PmenuKind       guifg=#c8c093 guibg=#223249
hi PmenuKindSel    guifg=#c8c093 guibg=#2d4f67
hi PmenuExtra      guifg=#938aa9 guibg=#223249
hi PmenuExtraSel   guifg=#938aa9 guibg=#2d4f67
hi PmenuSbar       guibg=#223249
hi PmenuThumb      guibg=#2d4f67
hi TabLine         guifg=#938aa9 guibg=#16161d
hi TabLineSel      guifg=#c8c093 guibg=#2a2a37
hi TabLineFill     guibg=#1f1f28
hi link CursorColumn    CursorLine
hi CursorLine      guibg=#363646
hi ColorColumn     guibg=#2a2a37
hi QuickFixLine    guibg=#2a2a37
hi Whitespace      guifg=#54546d
hi link NormalNC        Normal
hi MsgSeparator    guibg=#16161d
hi NormalFloat     guifg=#c8c093 guibg=#16161d
hi MsgArea         guifg=#c8c093
hi FloatBorder     guifg=#54546d guibg=#16161d
hi WinBar          guifg=#c8c093
hi WinBarNC        guifg=#c8c093
hi Cursor          guifg=#1f1f28 guibg=#dcd7ba
hi FloatTitle      cterm=bold gui=bold guifg=#938aa9 guibg=#16161d
hi FloatFooter     guifg=#54546d guibg=#16161d
hi link StatusLineTerm  StatusLine
hi link StatusLineTermNC  StatusLineNC
hi RedrawDebugNormal  cterm=reverse gui=reverse
hi Underlined      cterm=underline gui=underline guifg=#7fb4ca
hi link lCursor         Cursor
hi link CursorIM        Cursor
" hi ComplMatchIns   cleared
hi Substitute      guifg=#dcd7ba guibg=#c34043
hi link VisualNOS       Visual
hi Normal          guifg=#dcd7ba guibg=#1f1f28
hi link Character       String
hi Constant        guifg=#ffa066
hi Number          guifg=#d27e99
hi Boolean         cterm=bold gui=bold guifg=#ffa066
hi link Float           Number
hi link Conditional     Statement
hi Statement       cterm=bold gui=bold guifg=#957fb8
hi link Repeat          Statement
hi link Label           Statement
hi Keyword         cterm=italic gui=italic guifg=#957fb8
hi Exception       guifg=#e46876
hi link Include         PreProc
hi PreProc         guifg=#e46876
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi Type            guifg=#7aa89f
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi Special         guifg=#7fb4ca
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special
hi link Ignore          NonText
hi LspCodeLens     guifg=#727169
hi link LspCodeLensSeparator  LspCodeLens
hi link LspInlayHint    NonText
hi link LspReferenceRead  LspReferenceText
hi LspReferenceText  guibg=#49443c
hi LspReferenceWrite  cterm=underline gui=underline guibg=#49443c
hi link LspReferenceTarget  LspReferenceText
hi LspSignatureActiveParameter  guifg=#ff9e3b
hi link SnippetTabstop  Visual
hi DiagnosticFloatingError  guifg=#e82424
hi DiagnosticError  guifg=#e82424
hi DiagnosticFloatingWarn  guifg=#ff9e3b
hi DiagnosticWarn  guifg=#ff9e3b
hi DiagnosticFloatingInfo  guifg=#658594
hi DiagnosticInfo  guifg=#658594
hi DiagnosticFloatingHint  guifg=#6a9589
hi DiagnosticHint  guifg=#6a9589
hi DiagnosticFloatingOk  guifg=#98bb6c
hi DiagnosticOk    guifg=#98bb6c
hi link DiagnosticVirtualTextError  DiagnosticError
hi link DiagnosticVirtualTextWarn  DiagnosticWarn
hi link DiagnosticVirtualTextInfo  DiagnosticInfo
hi link DiagnosticVirtualTextHint  DiagnosticHint
hi link DiagnosticVirtualTextOk  DiagnosticOk
hi link DiagnosticVirtualLinesError  DiagnosticError
hi link DiagnosticVirtualLinesWarn  DiagnosticWarn
hi link DiagnosticVirtualLinesInfo  DiagnosticInfo
hi link DiagnosticVirtualLinesHint  DiagnosticHint
hi link DiagnosticVirtualLinesOk  DiagnosticOk
hi DiagnosticSignError  guifg=#e82424 guibg=#2a2a37
hi DiagnosticSignWarn  guifg=#ff9e3b guibg=#2a2a37
hi DiagnosticSignInfo  guifg=#658594 guibg=#2a2a37
hi DiagnosticSignHint  guifg=#6a9589 guibg=#2a2a37
hi link DiagnosticSignOk  DiagnosticOk
hi link DiagnosticUnnecessary  Comment
hi Comment         cterm=italic gui=italic guifg=#727169
hi @variable       guifg=#dcd7ba
hi @variable.builtin  cterm=italic gui=italic guifg=#e46876
hi @variable.parameter  guifg=#b8b4d0
hi link @variable.parameter.builtin  Special
hi link @constant       Constant
hi link @constant.builtin  Special
hi link @module         Structure
hi link @module.builtin  Special
hi link @label          Label
hi link @string         String
hi String          guifg=#98bb6c
hi @string.regexp  guifg=#c0a36e
hi link @string.special  SpecialChar
hi @string.escape  cterm=bold gui=bold guifg=#c0a36e
hi @string.special.url  cterm=undercurl gui=undercurl guifg=#7fb4ca
hi link @character      Character
hi link @character.special  SpecialChar
hi link @boolean        Boolean
hi link @number         Number
hi link @number.float   Float
hi link @type           Type
hi link @type.builtin   Special
hi link @attribute      Constant
hi link @attribute.builtin  Special
hi link @property       Identifier
hi Identifier      guifg=#e6c384
hi link @function       Function
hi Function        guifg=#7e9cd8
hi link @function.builtin  Special
hi @constructor    guifg=#7fb4ca
hi link @operator       Operator
hi Operator        guifg=#c0a36e
hi link @keyword        Keyword
hi link @punctuation    Delimiter
hi Delimiter       guifg=#9cabca
hi @punctuation.special  guifg=#7fb4ca
hi link @comment        Comment
hi @comment.error  cterm=bold gui=bold guifg=#dcd7ba guibg=#e82424
hi @comment.warning  cterm=bold gui=bold guifg=#223249 guibg=#ff9e3b
hi @comment.note   cterm=bold gui=bold guifg=#223249 guibg=#6a9589
hi link @comment.todo   Todo
hi Todo            cterm=bold gui=bold guifg=#223249 guibg=#658594
hi link @markup         Special
hi @markup.strong  cterm=bold gui=bold
hi @markup.italic  cterm=italic gui=italic
hi @markup.strikethrough  cterm=strikethrough gui=strikethrough
hi @markup.underline  cterm=underline gui=underline
hi link @markup.heading  Function
hi link @markup.link    Underlined
" hi @diff           cleared
hi @diff.plus      guifg=#76946a
hi Added           ctermfg=10 guifg=NvimLightGreen
hi @diff.minus     guifg=#c34043
hi Removed         ctermfg=9 guifg=NvimLightRed
hi @diff.delta     guifg=#dca561
hi Changed         ctermfg=14 guifg=NvimLightCyan
hi link @tag            Tag
hi link @tag.builtin    Special
hi @markup.heading.1.delimiter.vimdoc  cterm=underdouble,nocombine gui=underdouble,nocombine guifg=bg guibg=bg guisp=fg
hi @markup.heading.2.delimiter.vimdoc  cterm=underline,nocombine gui=underline,nocombine guifg=bg guibg=bg guisp=fg
" hi @lsp            cleared
hi link @lsp.type.class  @type
hi link @lsp.type.comment  Comment
hi link @lsp.type.decorator  @attribute
hi link @lsp.type.enum  @type
hi link @lsp.type.enumMember  @constant
hi link @lsp.type.event  @type
hi link @lsp.type.function  @function
hi link @lsp.type.interface  @type
hi link @lsp.type.keyword  @keyword
hi link @lsp.type.macro  Macro
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
" hi @lsp.type.variable  cleared
hi link @lsp.mod.deprecated  DiagnosticDeprecated
hi DiagnosticDeprecated  cterm=strikethrough gui=strikethrough guisp=NvimLightRed
hi FloatShadow     ctermbg=0 guibg=NvimDarkGrey4 blend=80
hi FloatShadowThrough  ctermbg=0 guibg=NvimDarkGrey4 blend=100
hi MatchParen      cterm=bold gui=bold guifg=#ff9e3b
hi RedrawDebugClear  ctermfg=0 ctermbg=11 guibg=NvimDarkYellow
hi RedrawDebugComposed  ctermfg=0 ctermbg=10 guibg=NvimDarkGreen
hi RedrawDebugRecompose  ctermfg=0 ctermbg=9 guibg=NvimDarkRed
hi Error           guifg=#e82424
hi DiagnosticUnderlineError  cterm=undercurl gui=undercurl guisp=#e82424
hi DiagnosticUnderlineWarn  cterm=undercurl gui=undercurl guisp=#ff9e3b
hi DiagnosticUnderlineInfo  cterm=undercurl gui=undercurl guisp=#658594
hi DiagnosticUnderlineHint  cterm=undercurl gui=undercurl guisp=#6a9589
hi DiagnosticUnderlineOk  cterm=underline gui=underline guisp=NvimLightGreen
hi NvimInternalError  ctermfg=9 ctermbg=9 guifg=Red guibg=Red
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
hi CopilotSuggestion  ctermfg=244 guifg=#808080
hi link CopilotAnnotation  MoreMsg
hi NvimTreeFolderArrowClosed  guifg=#3fc5ff
hi NvimTreeFolderArrowOpen  guifg=#3fc5ff
hi NvimTreeFolderIcon  ctermfg=12 guifg=#8094b4
hi NvimTreeWindowPicker  cterm=bold gui=bold guifg=#7fb4ca guibg=#1a1a22
hi link NvimTreeGitDeletedIcon  Statement
hi NvimTreeGitDeleted  guifg=#c34043
hi link NvimTreeGitStagedIcon  Constant
hi NvimTreeGitStaged  guifg=#76946a
hi link NvimTreeOpenedHL  Special
hi NvimTreeOpenedFile  cterm=italic gui=italic guifg=#7fb4ca
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
hi link NvimTreeDiagnosticWarnIcon  DiagnosticWarn
" hi NvimTreeLspDiagnosticsWarning  cleared
hi link NvimTreeDiagnosticInfoFileHL  DiagnosticUnderlineInfo
" hi NvimTreeLspDiagnosticsInformationText  cleared
hi link NvimTreeDiagnosticErrorIcon  DiagnosticError
" hi NvimTreeLspDiagnosticsError  cleared
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
hi link NvimTreeGitFileStagedHL  NvimTreeGitStagedIcon
" hi NvimTreeFileStaged  cleared
hi link NvimTreeGitFileRenamedHL  NvimTreeGitRenamedIcon
" hi NvimTreeFileRenamed  cleared
hi link NvimTreeGitRenamedIcon  PreProc
" hi NvimTreeGitRenamed  cleared
hi link NvimTreeGitFileNewHL  NvimTreeGitNewIcon
" hi NvimTreeFileNew  cleared
hi link NvimTreeGitNewIcon  PreProc
hi NvimTreeGitNew  guifg=#76946a
hi link NvimTreeGitFileMergeHL  NvimTreeGitMergeIcon
" hi NvimTreeFileMerge  cleared
hi link NvimTreeGitMergeIcon  Constant
" hi NvimTreeGitMerge  cleared
hi link NvimTreeGitFileIgnoredHL  NvimTreeGitIgnoredIcon
" hi NvimTreeFileIgnored  cleared
hi link NvimTreeGitIgnoredIcon  Comment
" hi NvimTreeGitIgnored  cleared
hi link NvimTreeGitFileDirtyHL  NvimTreeGitDirtyIcon
" hi NvimTreeFileDirty  cleared
hi link NvimTreeGitDirtyIcon  Statement
hi NvimTreeGitDirty  guifg=#dca561
hi link NvimTreeGitFileDeletedHL  NvimTreeGitDeletedIcon
" hi NvimTreeFileDeleted  cleared
hi link NvimTreeNormal  Normal
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
hi NvimTreeExecFile  cterm=bold gui=bold guifg=#98bb6c
hi NvimTreeImageFile  guifg=#e46876
hi NvimTreeSpecialFile  guifg=#7fb4ca
hi link NvimTreeSymlink  Type
hi NvimTreeRootFolder  cterm=bold gui=bold guifg=#e6c384
hi link NvimTreeFolderName  Directory
hi link NvimTreeEmptyFolderName  Directory
hi link NvimTreeOpenedFolderName  Directory
hi link NvimTreeSymlinkFolderName  Directory
hi link NvimTreeFileIcon  NvimTreeNormal
hi link NvimTreeSymlinkIcon  NvimTreeNormal
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
hi DevIconAPL      ctermfg=35 guifg=#24a148
hi DevIconPpt      ctermfg=160 guifg=#cb4a32
hi DevIconLicense  ctermfg=185 guifg=#cbcb41
hi DevIconVagrantfile  ctermfg=27 guifg=#1563ff
hi DevIconLibreOfficeGraphics  ctermfg=227 guifg=#fffb57
hi DevIconSql      ctermfg=188 guifg=#dad8d8
hi DevIconXlsx     ctermfg=29 guifg=#207245
hi DevIconPrettierConfig  ctermfg=33 guifg=#4285f4
hi DevIconMaven    ctermfg=52 guifg=#7a0d21
hi DevIcon3DObjectFile  ctermfg=102 guifg=#888888
hi DevIconPlatformio  ctermfg=208 guifg=#f6822b
hi DevIconKDEneon  ctermfg=37 guifg=#20a6a4
hi DevIconPackageJson  ctermfg=197 guifg=#e8274b
hi DevIconKali     ctermfg=69 guifg=#2777ff
hi DevIconPackageLockJson  ctermfg=52 guifg=#7a0d21
hi DevIconIllumos  ctermfg=196 guifg=#ff430f
hi DevIconNuxtConfig  ctermfg=42 guifg=#00c58e
hi DevIconToml     ctermfg=124 guifg=#9c4221
hi DevIconGuix     ctermfg=220 guifg=#ffcc00
hi DevIconGentoo   ctermfg=146 guifg=#b1abce
hi DevIconGarudaLinux  ctermfg=33 guifg=#2974e1
hi DevIconLXQtConfigFile  ctermfg=32 guifg=#0192d3
hi DevIconFreeBSD  ctermfg=160 guifg=#c90f02
hi DevIconLXDEConfigFile  ctermfg=246 guifg=#909090
hi DevIconFedora   ctermfg=17 guifg=#072a5e
hi DevIconXSettingsdConf  ctermfg=196 guifg=#e54d18
hi DevIconKritarc  ctermfg=201 guifg=#f245fb
hi DevIconxmonad   ctermfg=203 guifg=#fd4d5d
hi DevIconElementary  ctermfg=67 guifg=#5890c2
hi DevIconKritadisplayrc  ctermfg=201 guifg=#f245fb
hi DevIconKdenliverc  ctermfg=110 guifg=#83b8f2
hi DevIconTex      ctermfg=22 guifg=#3d6117
hi DevIconKdenliveLayoutsrc  ctermfg=110 guifg=#83b8f2
hi DevIconKDEglobals  ctermfg=32 guifg=#1c99f3
hi DevIconKalgebrarc  ctermfg=32 guifg=#1c99f3
hi DevIconGitModules  ctermfg=196 guifg=#f54d27
hi DevIconGitConfig  ctermfg=196 guifg=#f54d27
hi DevIconIndexTheme  ctermfg=35 guifg=#2db96f
hi DevIconSolidWorksAsm  ctermfg=101 guifg=#839463
hi DevIconSketchUp  ctermfg=101 guifg=#839463
hi DevIconi3       ctermfg=255 guifg=#e8ebee
hi DevIconI18nConfig  ctermfg=104 guifg=#7986cb
hi DevIconSignature  ctermfg=166 guifg=#e37933
hi DevIconSha384   ctermfg=103 guifg=#8c86af
hi DevIconDconf    ctermfg=231 guifg=#ffffff
hi DevIconSha1     ctermfg=103 guifg=#8c86af
hi DevIconHyprlandd  ctermfg=37 guifg=#00aaae
hi DevIconTypeScriptDeclaration  ctermfg=172 guifg=#d59855
hi DevIconGulpfile  ctermfg=167 guifg=#cc3e44
hi DevIconMixLock  ctermfg=140 guifg=#a074c4
hi DevIconSh       ctermfg=240 guifg=#4d5a5e
hi DevIconEditorConfig  ctermfg=255 guifg=#fff2f2
hi DevIconGruntfile  ctermfg=166 guifg=#e37933
hi DevIconGradleWrapperScript  ctermfg=24 guifg=#005f87
hi DevIconCrdownload  ctermfg=43 guifg=#44cda8
hi DevIconGradleWrapperProperties  ctermfg=24 guifg=#005f87
hi DevIconPyLintConfig  ctermfg=66 guifg=#6d8086
hi DevIconGoMod    ctermfg=38 guifg=#00add8
hi DevIconCowsayFile  ctermfg=130 guifg=#965824
hi DevIconYaml     ctermfg=66 guifg=#6d8086
hi DevIconKiCadFootprintTable  ctermfg=231 guifg=#ffffff
hi DevIconKiCadCache  ctermfg=231 guifg=#ffffff
hi DevIconConfigRu  ctermfg=52 guifg=#701516
hi DevIconFavicon  ctermfg=185 guifg=#cbcb41
hi DevIconConda    ctermfg=34 guifg=#43b02a
hi DevIconQt       ctermfg=77 guifg=#40cd52
hi DevIconTypoScriptSetup  ctermfg=208 guifg=#ff8700
hi DevIconLocalization  ctermfg=31 guifg=#2596be
hi DevIconClojureDart  ctermfg=74 guifg=#519aba
hi DevIconEslintrc  ctermfg=56 guifg=#4b32c3
hi DevIconImage    ctermfg=181 guifg=#d0bec8
hi DevIconPub      ctermfg=222 guifg=#e3c58e
hi DevIconDockerfile  ctermfg=68 guifg=#458ee6
hi DevIconCommitlintConfig  ctermfg=30 guifg=#2b9689
hi DevIconPng      ctermfg=140 guifg=#a074c4
hi DevIconJpg      ctermfg=140 guifg=#a074c4
hi DevIconConf     ctermfg=66 guifg=#6d8086
hi DevIconGif      ctermfg=140 guifg=#a074c4
hi DevIconWebp     ctermfg=140 guifg=#a074c4
hi DevIconSln      ctermfg=98 guifg=#854cc7
hi DevIconCodeOfConduct  ctermfg=161 guifg=#e41662
hi DevIconCpp      ctermfg=74 guifg=#519aba
hi DevIconPptx     ctermfg=160 guifg=#cb4a32
hi DevIconSml      ctermfg=166 guifg=#e37933
hi DevIconCMakeLists  ctermfg=254 guifg=#dce3eb
hi DevIconSolidity  ctermfg=74 guifg=#519aba
hi DevIconPulseCodeModulation  ctermfg=24 guifg=#0075aa
hi DevIconJava     ctermfg=167 guifg=#cc3e44
hi DevIconPart     ctermfg=43 guifg=#44cda8
hi DevIconOut      ctermfg=124 guifg=#9f0500
hi DevIconRakefile  ctermfg=52 guifg=#701516
hi DevIconOggMultiplex  ctermfg=208 guifg=#fd971f
hi DevIconOggVideo  ctermfg=208 guifg=#fd971f
hi DevIconOggVorbis  ctermfg=24 guifg=#0075aa
hi DevIconLibreOfficeWriter  ctermfg=81 guifg=#2dcbfd
hi DevIconHurl     ctermfg=198 guifg=#ff0288
hi DevIconLibreOfficeCalc  ctermfg=119 guifg=#78fc4e
hi DevIconLibreOfficeImpress  ctermfg=215 guifg=#fe9c45
hi DevIconM3u8     ctermfg=211 guifg=#ed95ae
hi DevIconM3u      ctermfg=211 guifg=#ed95ae
hi DevIconcuda     ctermfg=113 guifg=#89e051
hi DevIconcudah    ctermfg=140 guifg=#a074c4
hi DevIconLibreOfficeFormula  ctermfg=204 guifg=#ff5a96
hi DevIconCsv      ctermfg=113 guifg=#89e051
hi DevIconCss      ctermfg=91 guifg=#663399
hi DevIconRazorPage  ctermfg=56 guifg=#512bd4
hi DevIconNswag    ctermfg=112 guifg=#85ea2d
hi DevIconImportConfiguration  ctermfg=255 guifg=#ececec
hi DevIconTcl      ctermfg=25 guifg=#1e5cb3
hi DevIconTerraform  ctermfg=93 guifg=#5f43e9
hi DevIconTmux     ctermfg=34 guifg=#14ba19
hi DevIconIso      ctermfg=181 guifg=#d0bec8
hi DevIconQuery    ctermfg=107 guifg=#90a850
hi DevIconTerminal  ctermfg=34 guifg=#31b53e
hi DevIconClangConfig  ctermfg=66 guifg=#6d8086
hi DevIconCache    ctermfg=231 guifg=#ffffff
hi DevIconZshrc    ctermfg=113 guifg=#89e051
hi DevIconZshprofile  ctermfg=113 guifg=#89e051
hi DevIconZshenv   ctermfg=113 guifg=#89e051
hi DevIconVoid     ctermfg=23 guifg=#295340
hi DevIconDevuan   ctermfg=238 guifg=#404a52
hi DevIconDeepin   ctermfg=39 guifg=#2ca7f8
hi DevIconDebian   ctermfg=88 guifg=#a80030
hi DevIconCrystalLinux  ctermfg=129 guifg=#a900ff
hi DevIconBigLinux  ctermfg=38 guifg=#189fc8
hi DevIconTsx      ctermfg=26 guifg=#1354bf
hi DevIconArtix    ctermfg=38 guifg=#41b4d7
hi DevIconArcoLinux  ctermfg=68 guifg=#6690eb
hi DevIconArchlabs  ctermfg=238 guifg=#503f42
hi DevIconArchcraft  ctermfg=108 guifg=#86bba3
hi DevIconVlang    ctermfg=67 guifg=#5d87bf
hi DevIconApple    ctermfg=248 guifg=#a2aaad
hi DevIconCantorrc  ctermfg=32 guifg=#1c99f3
hi DevIconAOSC     ctermfg=124 guifg=#c00000
hi DevIconBunLockfile  ctermfg=253 guifg=#eadcd1
hi DevIconAlpine   ctermfg=24 guifg=#0d597f
hi DevIconZigObjectNotation  ctermfg=172 guifg=#f69a1b
hi DevIconAlmalinux  ctermfg=203 guifg=#ff4649
hi DevIconGradleBuildScript  ctermfg=24 guifg=#005f87
hi DevIconBSPWM    ctermfg=236 guifg=#2f2f2f
hi DevIconVimrc    ctermfg=28 guifg=#019833
hi DevIconVHDL     ctermfg=28 guifg=#019833
hi DevIconGvimrc   ctermfg=28 guifg=#019833
hi DevIconVRML     ctermfg=102 guifg=#888888
hi DevIconXfce     ctermfg=74 guifg=#00aadf
hi DevIconVue      ctermfg=113 guifg=#8dc149
hi DevIconKDEPlasma  ctermfg=33 guifg=#1b89f4
hi DevIconMATE     ctermfg=113 guifg=#9bda5c
hi DevIconLocOS    ctermfg=214 guifg=#fab402
hi DevIconLXQt     ctermfg=32 guifg=#0191d2
hi DevIconGitLogo  ctermfg=196 guifg=#f14c28
hi DevIconPsManifestfile  ctermfg=68 guifg=#6975c4
hi DevIconLXDE     ctermfg=248 guifg=#a4a4a4
hi DevIconDrools   ctermfg=217 guifg=#ffafaf
hi DevIconHTTP     ctermfg=31 guifg=#008ec7
hi DevIconGNOME    ctermfg=231 guifg=#ffffff
hi DevIconThunderbird  ctermfg=33 guifg=#137be1
hi DevIconCinnamon  ctermfg=166 guifg=#dc682e
hi DevIconLiquid   ctermfg=106 guifg=#95bf47
hi DevIconMakefile  ctermfg=66 guifg=#6d8086
hi DevIconXul      ctermfg=166 guifg=#e37933
hi DevIconBudgie   ctermfg=240 guifg=#4e5361
hi DevIconXsession  ctermfg=196 guifg=#e54d18
hi DevIconRss      ctermfg=215 guifg=#fb9d3b
hi DevIconXInitrc  ctermfg=196 guifg=#e54d18
hi DevIconCSharpProject  ctermfg=56 guifg=#512bd4
hi DevIconRaspberryPiOS  ctermfg=161 guifg=#be1848
hi DevIconBinaryGLTF  ctermfg=214 guifg=#ffb13b
hi DevIconRar      ctermfg=214 guifg=#eca517
hi DevIconTails    ctermfg=54 guifg=#56347c
hi DevIconPrettierIgnore  ctermfg=33 guifg=#4285f4
hi DevIconSolus    ctermfg=239 guifg=#4b5163
hi DevIconPreCommitConfig  ctermfg=214 guifg=#f8b424
hi DevIconSlim     ctermfg=196 guifg=#e34c26
hi DevIconDockerIgnore  ctermfg=68 guifg=#458ee6
hi DevIconSlackware  ctermfg=61 guifg=#475fa9
hi DevIconnode     ctermfg=71 guifg=#5fa04e
hi DevIconRb       ctermfg=52 guifg=#701516
hi DevIconSsa      ctermfg=214 guifg=#ffb713
hi DevIconSabayon  ctermfg=251 guifg=#c6c6c6
hi DevIconLess     ctermfg=54 guifg=#563d7c
hi DevIconNano     ctermfg=54 guifg=#440077
hi DevIconQtile    ctermfg=231 guifg=#ffffff
hi DevIconpostmarketOS  ctermfg=28 guifg=#009900
hi DevIconNixOS    ctermfg=110 guifg=#7ab1db
hi DevIconBz3      ctermfg=214 guifg=#eca517
hi DevIconHyprland  ctermfg=37 guifg=#00aaae
hi DevIconFluxbox  ctermfg=240 guifg=#555555
hi DevIconLuaurc   ctermfg=75 guifg=#00a2ff
hi DevIconBz       ctermfg=214 guifg=#eca517
hi DevIconGTK      ctermfg=231 guifg=#ffffff
hi DevIconEnlightenment  ctermfg=231 guifg=#ffffff
hi DevIconGitlabCI  ctermfg=196 guifg=#e24329
hi DevIconConfig   ctermfg=66 guifg=#6d8086
hi DevIcondwm      ctermfg=31 guifg=#1177aa
hi DevIconMint     ctermfg=108 guifg=#87c095
hi DevIconMOV      ctermfg=208 guifg=#fd971f
hi DevIconPuppyLinux  ctermfg=145 guifg=#a2aeb9
hi DevIconawesome  ctermfg=59 guifg=#535d6c
hi DevIconBlender  ctermfg=208 guifg=#ea7600
hi DevIconEslintIgnore  ctermfg=56 guifg=#4b32c3
hi DevIconPyi      ctermfg=214 guifg=#ffbc03
hi DevIconEnv      ctermfg=227 guifg=#faf743
hi DevIconAUTHORS  ctermfg=135 guifg=#a172ff
hi DevIconBuildProps  ctermfg=75 guifg=#00a2ff
hi DevIconXauthority  ctermfg=196 guifg=#e54d18
hi DevIconPop_OS   ctermfg=73 guifg=#48b9c7
hi DevIconBuildTargets  ctermfg=75 guifg=#00a2ff
hi DevIconPrusaSlicer  ctermfg=202 guifg=#ec6b23
hi DevIconDsStore  ctermfg=239 guifg=#41535b
hi DevIconFreeCADConfig  ctermfg=160 guifg=#cb333b
hi DevIconXresources  ctermfg=196 guifg=#e54d18
hi DevIconPackagesProps  ctermfg=75 guifg=#00a2ff
hi DevIconSRCINFO  ctermfg=67 guifg=#0f94d2
hi DevIconEdn      ctermfg=74 guifg=#519aba
hi DevIconCodespell  ctermfg=41 guifg=#35da60
hi DevIconopenSUSE  ctermfg=70 guifg=#6fb424
hi DevIconPsScriptModulefile  ctermfg=68 guifg=#6975c4
hi DevIconAzureCli  ctermfg=32 guifg=#0078d4
hi DevIconJustfile  ctermfg=66 guifg=#6d8086
hi DevIconWebmanifest  ctermfg=185 guifg=#f1e05a
hi DevIconGroovy   ctermfg=24 guifg=#4a687c
hi DevIconLuau     ctermfg=75 guifg=#00a2ff
hi DevIconNobaraLinux  ctermfg=231 guifg=#ffffff
hi DevIconPsb      ctermfg=74 guifg=#519aba
hi DevIconPyc      ctermfg=222 guifg=#ffe291
hi DevIconBabelrc  ctermfg=185 guifg=#cbcb41
hi DevIconAsc      ctermfg=242 guifg=#576d7f
hi DevIconMXLinux  ctermfg=231 guifg=#ffffff
hi DevIconHyprpaper  ctermfg=37 guifg=#00aaae
hi DevIconAi       ctermfg=185 guifg=#cbcb41
hi DevIconLeap     ctermfg=221 guifg=#fbc75d
hi DevIconManjaro  ctermfg=35 guifg=#33b959
hi DevIconIonic    ctermfg=33 guifg=#4f8ff7
hi DevIconApp      ctermfg=124 guifg=#9f0500
hi DevIconSub      ctermfg=214 guifg=#ffb713
hi DevIconMageia   ctermfg=67 guifg=#2397d4
hi DevIconMonkeysAudio  ctermfg=39 guifg=#00afff
hi DevIconLXLE     ctermfg=238 guifg=#474747
hi DevIconPrisma   ctermfg=62 guifg=#5a67d8
hi DevIconGoWork   ctermfg=38 guifg=#00add8
hi DevIconBoundaryRepresentation  ctermfg=101 guifg=#839463
hi DevIconPls      ctermfg=211 guifg=#ed95ae
hi DevIconGz       ctermfg=214 guifg=#eca517
hi DevIconGoSum    ctermfg=38 guifg=#00add8
hi DevIconConfiguration  ctermfg=66 guifg=#6d8086
hi DevIconStorybookMjs  ctermfg=204 guifg=#ff4785
hi DevIconGitIgnore  ctermfg=196 guifg=#f54d27
hi DevIconAdvancedAudioCoding  ctermfg=39 guifg=#00afff
hi DevIconGitAttributes  ctermfg=196 guifg=#f54d27
hi DevIconStorybookJavaScript  ctermfg=204 guifg=#ff4785
hi DevIcon7z       ctermfg=214 guifg=#eca517
hi DevIconStep     ctermfg=101 guifg=#839463
hi DevIconPhp      ctermfg=140 guifg=#a074c4
hi DevIconAwk      ctermfg=240 guifg=#4d5a5e
hi DevIconXcPlayground  ctermfg=166 guifg=#e37933
hi DevIconLogos    ctermfg=74 guifg=#519aba
hi DevIconRlib     ctermfg=216 guifg=#dea584
hi DevIconNodeModules  ctermfg=197 guifg=#e8274b
hi DevIconZig      ctermfg=172 guifg=#f69a1b
hi DevIconLog      ctermfg=253 guifg=#dddddd
hi DevIconOggSpeexAudio  ctermfg=24 guifg=#0075aa
hi DevIconAvif     ctermfg=140 guifg=#a074c4
hi DevIconMp4      ctermfg=208 guifg=#fd971f
hi DevIconTypeScriptReactSpec  ctermfg=26 guifg=#1354bf
hi DevIconSpecTs   ctermfg=74 guifg=#519aba
hi DevIconWebm     ctermfg=208 guifg=#fd971f
hi DevIconJavaScriptReactSpec  ctermfg=45 guifg=#20c2e3
hi DevIconYml      ctermfg=66 guifg=#6d8086
hi DevIconSpecJs   ctermfg=185 guifg=#cbcb41
hi DevIconPyo      ctermfg=222 guifg=#ffe291
hi DevIconXeroLinux  ctermfg=104 guifg=#888fe2
hi DevIconMd       ctermfg=253 guifg=#dddddd
hi DevIconOpenTypeFont  ctermfg=255 guifg=#ececec
hi DevIconMarkdown  ctermfg=253 guifg=#dddddd
hi DevIconDart     ctermfg=25 guifg=#03589c
hi DevIconSolveSpace  ctermfg=101 guifg=#839463
hi DevIconStorybookTypeScript  ctermfg=204 guifg=#ff4785
hi DevIconObjectiveC  ctermfg=111 guifg=#599eff
hi DevIconTailwindConfig  ctermfg=45 guifg=#20c2e3
hi DevIconGraphQL  ctermfg=199 guifg=#e535ab
hi DevIconSolidWorksPrt  ctermfg=101 guifg=#839463
hi DevIconCobol    ctermfg=25 guifg=#005ca5
hi DevIconEmbeddedOpenTypeFont  ctermfg=255 guifg=#ececec
hi DevIconStp      ctermfg=101 guifg=#839463
hi DevIconTumbleweed  ctermfg=37 guifg=#35b9ab
hi DevIconStyl     ctermfg=113 guifg=#8dc149
hi DevIconPyw      ctermfg=39 guifg=#5aa7e4
hi DevIconAudioInterchangeFileFormat  ctermfg=39 guifg=#00afff
hi DevIconTrisquelGNULinux  ctermfg=25 guifg=#0f58b6
hi DevIconAdaFile  ctermfg=111 guifg=#599eff
hi DevIconExe      ctermfg=124 guifg=#9f0500
hi DevIconVala     ctermfg=91 guifg=#7b3db9
hi DevIconScss     ctermfg=204 guifg=#f55385
hi DevIconPxd      ctermfg=39 guifg=#5aa7e4
hi DevIconCoffee   ctermfg=185 guifg=#cbcb41
hi DevIconHtm      ctermfg=196 guifg=#e34c26
hi DevIconJpeg     ctermfg=140 guifg=#a074c4
hi DevIconSecurity  ctermfg=251 guifg=#bec4c9
hi DevIconScheme   ctermfg=255 guifg=#eeeeee
hi DevIconArch     ctermfg=67 guifg=#0f94d2
hi DevIconDump     ctermfg=188 guifg=#dad8d8
hi DevIconEx       ctermfg=140 guifg=#a074c4
hi DevIconScala    ctermfg=167 guifg=#cc3e44
hi DevIconsbt      ctermfg=167 guifg=#cc3e44
hi DevIconSass     ctermfg=204 guifg=#f55385
hi DevIconClojure  ctermfg=113 guifg=#8dc149
hi DevIconMkv      ctermfg=208 guifg=#fd971f
hi DevIconObjectiveCPlusPlus  ctermfg=74 guifg=#519aba
hi DevIconRs       ctermfg=216 guifg=#dea584
hi DevIconKubuntu  ctermfg=32 guifg=#007ac2
hi DevIconRake     ctermfg=52 guifg=#701516
hi DevIconGemspec  ctermfg=52 guifg=#701516
hi DevIconPl       ctermfg=74 guifg=#519aba
hi DevIconD        ctermfg=124 guifg=#b03931
hi DevIconPsScriptfile  ctermfg=68 guifg=#4273ca
hi DevIconZorin    ctermfg=39 guifg=#14a1e8
hi DevIconParrot   ctermfg=45 guifg=#54deff
hi DevIconFeature  ctermfg=34 guifg=#00a818
hi DevIconHyprlock  ctermfg=37 guifg=#00aaae
hi DevIconAstro    ctermfg=197 guifg=#e23f67
hi DevIconHyperbolaGNULinuxLibre  ctermfg=250 guifg=#c0c0c0
hi DevIconCPlusPlus  ctermfg=204 guifg=#f34b7d
hi DevIconCsh      ctermfg=240 guifg=#4d5a5e
hi DevIconIfb      ctermfg=18 guifg=#2b2e83
hi DevIconEndeavour  ctermfg=91 guifg=#7b3db9
hi DevIconWavPack  ctermfg=39 guifg=#00afff
hi DevIcon3gp      ctermfg=208 guifg=#fd971f
hi DevIconIge      ctermfg=101 guifg=#839463
hi DevIconGIMP     ctermfg=240 guifg=#635b46
hi DevIconLeex     ctermfg=140 guifg=#a074c4
hi DevIconFs       ctermfg=74 guifg=#519aba
hi DevIconQubesOS  ctermfg=33 guifg=#3774d8
hi DevIconHexadecimal  ctermfg=27 guifg=#2e63ff
hi DevIconStaticLibraryArchive  ctermfg=253 guifg=#dcddd6
hi DevIconDb       ctermfg=188 guifg=#dad8d8
hi DevIconExs      ctermfg=140 guifg=#a074c4
hi DevIconJsonc    ctermfg=185 guifg=#cbcb41
hi DevIconPackedResource  ctermfg=66 guifg=#6d8086
hi DevIconUbuntu   ctermfg=196 guifg=#dd4814
hi DevIconHeex     ctermfg=140 guifg=#a074c4
hi DevIconCentos   ctermfg=132 guifg=#a2518d
hi DevIconPKGBUILD  ctermfg=67 guifg=#0f94d2
hi DevIconBlueprint  ctermfg=68 guifg=#5796e2
hi DevIconASM      ctermfg=25 guifg=#0071c5
hi DevIconZst      ctermfg=214 guifg=#eca517
hi DevIconUI       ctermfg=27 guifg=#015bf0
hi DevIconBazel    ctermfg=113 guifg=#89e051
hi DevIconVerilog  ctermfg=28 guifg=#019833
hi DevIconSha256   ctermfg=103 guifg=#8c86af
hi DevIconSvelte   ctermfg=196 guifg=#ff3e00
hi DevIconSvg      ctermfg=214 guifg=#ffb13b
hi DevIconSway     ctermfg=64 guifg=#68751c
hi DevIconReadme   ctermfg=255 guifg=#ededed
hi DevIconHs       ctermfg=140 guifg=#a074c4
hi DevIconKotlin   ctermfg=99 guifg=#7f52ff
hi DevIconKotlinScript  ctermfg=99 guifg=#7f52ff
hi DevIconZip      ctermfg=214 guifg=#eca517
hi DevIconXpi      ctermfg=196 guifg=#ff1b01
hi DevIconSwift    ctermfg=166 guifg=#e37933
hi DevIconReScriptInterface  ctermfg=204 guifg=#f55385
hi DevIconGo       ctermfg=38 guifg=#00add8
hi DevIconHbs      ctermfg=202 guifg=#f0772b
hi DevIconJl       ctermfg=133 guifg=#a270ba
hi DevIconReScript  ctermfg=167 guifg=#cc3e44
hi DevIconCue      ctermfg=211 guifg=#ed95ae
hi DevIconOpenBSD  ctermfg=220 guifg=#f2ca30
hi DevIconHaml     ctermfg=255 guifg=#eaeae1
hi DevIconBmp      ctermfg=140 guifg=#a074c4
hi DevIconJson5    ctermfg=185 guifg=#cbcb41
hi DevIconMojo     ctermfg=196 guifg=#ff4c1f
hi DevIconXcLocalization  ctermfg=31 guifg=#2596be
hi DevIconSystemVerilog  ctermfg=28 guifg=#019833
hi DevIconSha224   ctermfg=103 guifg=#8c86af
hi DevIconParabolaGNULinuxLibre  ctermfg=103 guifg=#797dac
hi DevIconGitBlameIgnore  ctermfg=196 guifg=#f54d27
hi DevIconBzl      ctermfg=113 guifg=#89e051
hi DevIconProlog   ctermfg=179 guifg=#e4b854
hi DevIconNotebook  ctermfg=208 guifg=#f57d01
hi DevIconGradle   ctermfg=24 guifg=#005f87
hi DevIconSlnx     ctermfg=98 guifg=#854cc7
hi DevIconXaml     ctermfg=56 guifg=#512bd4
hi DevIconMPEGAudioLayerIII  ctermfg=39 guifg=#00afff
hi DevIconRmd      ctermfg=74 guifg=#519aba
hi DevIconScalaScript  ctermfg=167 guifg=#cc3e44
hi DevIconWavPackCorrection  ctermfg=39 guifg=#00afff
hi DevIconGradleProperties  ctermfg=24 guifg=#005f87
hi DevIconRockyLinux  ctermfg=36 guifg=#0fb37d
hi DevIconVanillaOS  ctermfg=214 guifg=#fabd4d
hi DevIconAutoCADDwg  ctermfg=101 guifg=#839463
hi DevIconJsx      ctermfg=45 guifg=#20c2e3
hi DevIconCjs      ctermfg=185 guifg=#cbcb41
hi DevIconLhs      ctermfg=140 guifg=#a074c4
hi DevIconJs       ctermfg=185 guifg=#cbcb41
hi DevIconMjs      ctermfg=185 guifg=#f1e05a
hi DevIconWebOpenFontFormat  ctermfg=255 guifg=#ececec
hi DevIconGleam    ctermfg=219 guifg=#ffaff3
hi DevIconAutoCADDxf  ctermfg=101 guifg=#839463
hi DevIconWindowsMediaAudio  ctermfg=39 guifg=#00afff
hi DevIconMailmap  ctermfg=196 guifg=#f54d27
hi DevIconTemplate  ctermfg=178 guifg=#dbbd30
hi DevIconKbx      ctermfg=243 guifg=#737672
hi DevIconDll      ctermfg=52 guifg=#4d2c0b
hi DevIconGDScript  ctermfg=66 guifg=#6d8086
hi DevIconRedhat   ctermfg=196 guifg=#ee0000
hi DevIconGodotTextResource  ctermfg=66 guifg=#6d8086
hi DevIconStorybookSvelte  ctermfg=204 guifg=#ff4785
hi DevIconOrgMode  ctermfg=73 guifg=#77aa99
hi DevIconMotoko   ctermfg=135 guifg=#9772fb
hi DevIconLib      ctermfg=52 guifg=#4d2c0b
hi DevIconElisp    ctermfg=97 guifg=#8172be
hi DevIconTypoScript  ctermfg=208 guifg=#ff8700
hi DevIconFsx      ctermfg=74 guifg=#519aba
hi DevIconBin      ctermfg=124 guifg=#9f0500
hi DevIconFsi      ctermfg=74 guifg=#519aba
hi DevIconSte      ctermfg=101 guifg=#839463
hi DevIconVsix     ctermfg=98 guifg=#854cc7
hi DevIconTFVars   ctermfg=93 guifg=#5f43e9
hi DevIconOpenSCAD  ctermfg=220 guifg=#f9d72c
hi DevIconNorg     ctermfg=32 guifg=#4878be
hi DevIconXz       ctermfg=214 guifg=#eca517
hi DevIconLabView  ctermfg=220 guifg=#fec60a
hi DevIconOdin     ctermfg=32 guifg=#3882d2
hi DevIconPy       ctermfg=214 guifg=#ffbc03
hi DevIconStorybookVue  ctermfg=204 guifg=#ff4785
hi DevIconNfo      ctermfg=230 guifg=#ffffcd
hi DevIconMli      ctermfg=166 guifg=#e37933
hi DevIconKiCad    ctermfg=231 guifg=#ffffff
hi DevIconHh       ctermfg=140 guifg=#a074c4
hi DevIconNPMrc    ctermfg=197 guifg=#e8274b
hi DevIconFortran  ctermfg=97 guifg=#734f96
hi DevIconMts      ctermfg=74 guifg=#519aba
hi DevIconCts      ctermfg=74 guifg=#519aba
hi DevIconGitCommit  ctermfg=196 guifg=#f54d27
hi DevIconMpp      ctermfg=74 guifg=#519aba
hi DevIconWranglerConfig  ctermfg=208 guifg=#f48120
hi DevIconFish     ctermfg=240 guifg=#4d5a5e
hi DevIconTxz      ctermfg=214 guifg=#eca517
hi DevIconMobi     ctermfg=215 guifg=#eab16d
hi DevIconBlade    ctermfg=203 guifg=#f05340
hi DevIconFennel   ctermfg=230 guifg=#fff3d7
hi DevIconTrueTypeFont  ctermfg=255 guifg=#ececec
hi DevIconWeston   ctermfg=214 guifg=#ffbb01
hi DevIconPyx      ctermfg=39 guifg=#5aa7e4
hi DevIconSvgz     ctermfg=214 guifg=#ffb13b
hi DevIconBazelBuild  ctermfg=113 guifg=#89e051
hi DevIconNix      ctermfg=110 guifg=#7ebae4
hi DevIconTypoScriptConfig  ctermfg=208 guifg=#ff8700
hi DevIconKrita    ctermfg=201 guifg=#f245fb
hi DevIconNim      ctermfg=220 guifg=#f3d400
hi DevIconTSConfig  ctermfg=74 guifg=#519aba
hi DevIconVLC      ctermfg=208 guifg=#ee7a00
hi DevIconMdx      ctermfg=74 guifg=#519aba
hi DevIconCPlusPlusModule  ctermfg=204 guifg=#f34b7d
hi DevIconTorrent  ctermfg=43 guifg=#44cda8
hi DevIconVercel   ctermfg=231 guifg=#ffffff
hi DevIconMd5      ctermfg=103 guifg=#8c86af
hi DevIconTypeScriptReactTest  ctermfg=26 guifg=#1354bf
hi DevIconCxxm     ctermfg=74 guifg=#519aba
hi DevIconGodotTextScene  ctermfg=66 guifg=#6d8086
hi DevIconJson     ctermfg=185 guifg=#cbcb41
hi DevIconPdf      ctermfg=124 guifg=#b30b00
hi DevIconLinux    ctermfg=231 guifg=#fdfdfb
hi DevIconMustache  ctermfg=166 guifg=#e37933
hi DevIconMagnet   ctermfg=124 guifg=#a51b16
hi DevIconTgz      ctermfg=214 guifg=#eca517
hi DevIconFreeCAD  ctermfg=160 guifg=#cb333b
hi DevIconM4V      ctermfg=208 guifg=#fd971f
hi DevIconMPEG4    ctermfg=39 guifg=#00afff
hi DevIconFIGletFontFormat  ctermfg=255 guifg=#ececec
hi DevIconCs       ctermfg=58 guifg=#596706
hi DevIconTestJs   ctermfg=185 guifg=#cbcb41
hi DevIconLua      ctermfg=74 guifg=#51a0cf
hi DevIconFIGletFontControl  ctermfg=255 guifg=#ececec
hi DevIconTestTs   ctermfg=74 guifg=#519aba
hi DevIconFreeLosslessAudioCodec  ctermfg=24 guifg=#0075aa
hi DevIconJavaScriptReactTest  ctermfg=45 guifg=#20c2e3
hi DevIconR        ctermfg=25 guifg=#2266ba
hi DevIconXml      ctermfg=166 guifg=#e37933
hi DevIconFdmdownload  ctermfg=43 guifg=#44cda8
hi DevIconDiff     ctermfg=239 guifg=#41535b
hi DevIconPxi      ctermfg=39 guifg=#5aa7e4
hi DevIconZsh      ctermfg=113 guifg=#89e051
hi DevIconLibrecadFontFile  ctermfg=255 guifg=#ececec
hi DevIconVim      ctermfg=28 guifg=#019833
hi DevIconCrystal  ctermfg=251 guifg=#c8c8c8
hi DevIconLock     ctermfg=250 guifg=#bbbbbb
hi DevIconMl       ctermfg=166 guifg=#e37933
hi DevIconSharedObject  ctermfg=253 guifg=#dcddd6
hi DevIconRobotsTxt  ctermfg=60 guifg=#5d7096
hi DevIconFusion360  ctermfg=101 guifg=#839463
hi DevIconCppm     ctermfg=74 guifg=#519aba
hi DevIconHpp      ctermfg=140 guifg=#a074c4
hi DevIconHxx      ctermfg=140 guifg=#a074c4
hi DevIconLinuxKernelObject  ctermfg=253 guifg=#dcddd6
hi DevIconCxx      ctermfg=74 guifg=#519aba
hi DevIconEpub     ctermfg=215 guifg=#eab16d
hi DevIconBackup   ctermfg=66 guifg=#6d8086
hi DevIconKdenlive  ctermfg=110 guifg=#83b8f2
hi DevIconStorybookTsx  ctermfg=204 guifg=#ff4785
hi DevIconKdbx     ctermfg=71 guifg=#529b34
hi DevIconPm       ctermfg=74 guifg=#519aba
hi DevIconXorgConf  ctermfg=196 guifg=#e54d18
hi DevIconKdb      ctermfg=71 guifg=#529b34
hi DevIconBz2      ctermfg=214 guifg=#eca517
hi DevIconEbook    ctermfg=215 guifg=#eab16d
hi DevIconTempl    ctermfg=178 guifg=#dbbd30
hi DevIconClojureJS  ctermfg=74 guifg=#519aba
hi DevIconClojureC  ctermfg=113 guifg=#8dc149
hi DevIconJWM      ctermfg=32 guifg=#0078cd
hi DevIconInfo     ctermfg=230 guifg=#ffffcd
hi DevIconTxt      ctermfg=113 guifg=#89e051
hi DevIconBashrc   ctermfg=113 guifg=#89e051
hi DevIconriver    ctermfg=16 guifg=#000000
hi DevIconPatch    ctermfg=239 guifg=#41535b
hi DevIconPp       ctermfg=214 guifg=#ffa61a
hi DevIconSettingsJson  ctermfg=98 guifg=#854cc7
hi DevIconIxx      ctermfg=74 guifg=#519aba
hi DevIconNPMIgnore  ctermfg=197 guifg=#e8274b
hi DevIconTypeScript  ctermfg=74 guifg=#519aba
hi DevIconErb      ctermfg=52 guifg=#701516
hi DevIconTor      ctermfg=74 guifg=#519aba
hi DevIconBashProfile  ctermfg=113 guifg=#89e051
hi DevIconHrl      ctermfg=163 guifg=#b83998
hi DevIconErl      ctermfg=163 guifg=#b83998
hi DevIconEpp      ctermfg=214 guifg=#ffa61a
hi DevIconTypst    ctermfg=37 guifg=#0dbcc0
hi DevIconPsd      ctermfg=74 guifg=#519aba
hi DevIconSig      ctermfg=166 guifg=#e37933
hi DevIconKsh      ctermfg=240 guifg=#4d5a5e
hi DevIconImg      ctermfg=181 guifg=#d0bec8
hi DevIconElm      ctermfg=74 guifg=#519aba
hi DevIconGentooBuild  ctermfg=60 guifg=#4c416e
hi DevIconIgs      ctermfg=101 guifg=#839463
hi DevIconElf      ctermfg=124 guifg=#9f0500
hi DevIconIges     ctermfg=101 guifg=#839463
hi DevIconBicepParameters  ctermfg=133 guifg=#9f74b3
hi DevIconBicep    ctermfg=74 guifg=#519aba
hi DevIconBibTeX   ctermfg=185 guifg=#cbcb41
hi DevIconIfc      ctermfg=101 guifg=#839463
hi DevIconNushell  ctermfg=36 guifg=#3aa675
hi DevIconAdaBody  ctermfg=111 guifg=#599eff
hi DevIconAndroid  ctermfg=35 guifg=#34a853
hi DevIconAsciinema  ctermfg=208 guifg=#fd971f
hi DevIconapk      ctermfg=35 guifg=#34a853
hi DevIconIcs      ctermfg=18 guifg=#2b2e83
hi DevIconMpv      ctermfg=53 guifg=#3b1342
hi DevIconTwig     ctermfg=113 guifg=#8dc149
hi DevIconIcalendar  ctermfg=18 guifg=#2b2e83
hi DevIconIcal     ctermfg=18 guifg=#2b2e83
hi DevIconH        ctermfg=140 guifg=#a074c4
hi DevIconEex      ctermfg=140 guifg=#a074c4
hi DevIconArduino  ctermfg=73 guifg=#56b6c2
hi DevIconStorybookJsx  ctermfg=204 guifg=#ff4785
hi DevIconAppleScript  ctermfg=66 guifg=#6d8085
hi DevIconGv       ctermfg=24 guifg=#30638e
hi DevIconDot      ctermfg=24 guifg=#30638e
hi DevIconHtml     ctermfg=196 guifg=#e44d26
hi DevIconIni      ctermfg=66 guifg=#6d8086
hi DevIconHuff     ctermfg=56 guifg=#4242c7
hi DevIconDownload  ctermfg=43 guifg=#44cda8
hi DevIconBat      ctermfg=191 guifg=#c1f12e
hi DevIconHypridle  ctermfg=37 guifg=#00aaae
hi DevIconGPRBuildProject  ctermfg=66 guifg=#6d8086
hi DevIconAdaSpecification  ctermfg=140 guifg=#a074c4
hi DevIconDesktopEntry  ctermfg=54 guifg=#563d7c
hi DevIconBrewfile  ctermfg=52 guifg=#701516
hi DevIconJpegXl   ctermfg=140 guifg=#a074c4
hi DevIconCheckhealth  ctermfg=75 guifg=#75b4fb
hi DevIconGemfile  ctermfg=52 guifg=#701516
hi DevIconBazelWorkspace  ctermfg=113 guifg=#89e051
hi DevIconCp       ctermfg=74 guifg=#519aba
hi DevIconObjectFile  ctermfg=124 guifg=#9f0500
hi DevIconAss      ctermfg=214 guifg=#ffb713
hi DevIconSrt      ctermfg=214 guifg=#ffb713
hi DevIconKiCadSymbolTable  ctermfg=231 guifg=#ffffff
hi DevIconCMake    ctermfg=254 guifg=#dce3eb
hi DevIconXls      ctermfg=29 guifg=#207245
hi DevIconWebpack  ctermfg=74 guifg=#519aba
hi DevIconWasm     ctermfg=62 guifg=#5c4cdb
hi DevIconSuo      ctermfg=98 guifg=#854cc7
hi DevIconSublime  ctermfg=166 guifg=#e37933
hi DevIconSvelteConfig  ctermfg=196 guifg=#ff3e00
hi DevIconRproj    ctermfg=29 guifg=#358a5b
hi DevIconPyd      ctermfg=222 guifg=#ffe291
hi DevIconLrc      ctermfg=214 guifg=#ffb713
hi DevIconGradleSettings  ctermfg=24 guifg=#005f87
hi DevIconProcfile  ctermfg=140 guifg=#a074c4
hi DevIconFsharp   ctermfg=74 guifg=#519aba
hi DevIconOpusAudioFile  ctermfg=24 guifg=#0075aa
hi DevIconMaterial  ctermfg=163 guifg=#b83998
hi DevIconSha512   ctermfg=103 guifg=#8c86af
hi DevIconIco      ctermfg=185 guifg=#cbcb41
hi DevIconWindows  ctermfg=39 guifg=#00a4ef
hi DevIconHaxe     ctermfg=208 guifg=#ea8220
hi DevIconWaveformAudioFile  ctermfg=39 guifg=#00afff
hi DevIconC        ctermfg=111 guifg=#599eff
hi DevIconGodotProject  ctermfg=66 guifg=#6d8086
hi DevIconFsscript  ctermfg=74 guifg=#519aba
hi DevIconEjs      ctermfg=185 guifg=#cbcb41
hi DevIconDropbox  ctermfg=27 guifg=#0061fe
hi DevIconGCode    ctermfg=32 guifg=#1471ad
hi DevIconPy.typed  ctermfg=214 guifg=#ffbc03
hi DevIconDocx     ctermfg=26 guifg=#185abd
hi DevIconDoc      ctermfg=26 guifg=#185abd
hi DevIconCson     ctermfg=185 guifg=#cbcb41
hi DevIconBash     ctermfg=113 guifg=#89e051
hi NeotestPassed   guifg=#98bb6c
hi NeotestFailed   guifg=#e82424
hi NeotestRunning  guifg=#dca561
hi NeotestSkipped  guifg=#7fb4ca
hi NeotestTest     guifg=#c8c093
hi NeotestNamespace  guifg=#7e9cd8
hi NeotestFocused  cterm=bold,underline gui=bold,underline
hi NeotestFile     guifg=#7e9cd8
hi NeotestDir      guifg=#7e9cd8
hi NeotestIndent   cterm=bold gui=bold guifg=#938aa9
hi NeotestExpandMarker  cterm=bold gui=bold guifg=#9cabca
hi NeotestAdapterName  guifg=#ff5d62
hi NeotestWinSelect  guifg=#6a9589
hi NeotestMarked   cterm=italic gui=italic guifg=#ff9e3b
hi NeotestTarget   guifg=#ff5d62
hi NeotestWatching  guifg=#dca561
hi NeotestUnknown  guifg=#717c7c
hi link DebugPrintLine  Debug
hi link TelescopeResultsComment  Comment
hi link TelescopeResultsNumber  Number
hi link TelescopeResultsIdentifier  Identifier
hi link TelescopeResultsLineNr  LineNr
hi link TelescopeResultsVariable  @variable
hi link TelescopePreviewLink  Special
hi link TelescopePreviewBlock  Constant
hi link TelescopePreviewDirectory  Directory
hi link TelescopePreviewCharDev  Constant
hi link TelescopePreviewPipe  Constant
hi link TelescopePreviewMatch  Search
hi link TelescopePreviewLine  Visual
hi link TelescopePromptPrefix  Identifier
hi link TelescopeMatching  Special
hi link TelescopePromptCounter  NonText
hi TelescopeTitle  guifg=#938aa9
hi link TelescopePreviewTitle  TelescopeTitle
hi TelescopeBorder  guifg=#54546d guibg=#1f1f28
hi link TelescopeResultsTitle  TelescopeTitle
hi link TelescopePromptTitle  TelescopeTitle
hi link TelescopeNormal  Normal
hi link TelescopePreviewBorder  TelescopeBorder
hi link TelescopeResultsBorder  TelescopeBorder
hi link TelescopePromptBorder  TelescopeBorder
hi link TelescopeResultsNormal  TelescopeNormal
hi link TelescopePromptNormal  TelescopeNormal
hi link TelescopeMultiIcon  Identifier
hi link TelescopeMultiSelection  Type
hi link TelescopeSelection  CursorLine
hi link TelescopeSelectionCaret  CursorLineNr
hi link TelescopePreviewSocket  Statement
hi link TelescopePreviewRead  Constant
hi link TelescopePreviewWrite  Statement
hi link TelescopePreviewExecute  String
hi link TelescopePreviewHyphen  NonText
hi link TelescopeResultsDiffAdd  DiffAdd
hi link TelescopePreviewSize  String
" hi Struct          cleared
hi link TelescopeResultsStruct  Structure
hi link TelescopePreviewGroup  Constant
hi link TelescopeResultsOperator  Operator
" hi Method          cleared
hi link TelescopeResultsMethod  Function
hi link TelescopePreviewMessage  TelescopePreviewNormal
hi link TelescopePreviewMessageFillchar  TelescopePreviewMessage
hi link TelescopeResultsConstant  Constant
hi link TelescopeResultsFunction  Function
hi link TelescopeResultsField  @field
hi link TelescopeResultsDiffUntracked  NonText
hi link TelescopeResultsClass  Structure
hi link TelescopeResultsDiffDelete  DiffDelete
hi link TelescopePreviewNormal  TelescopeNormal
hi link TelescopePreviewDate  Directory
hi link TelescopeResultsDiffChange  DiffChange
hi link TelescopePreviewUser  Constant
hi link TelescopeResultsSpecialComment  SpecialComment
hi link TelescopePreviewSticky  Keyword
hi link ArrowFileIndex  CursorLineNr
hi link ArrowCurrentFile  SpecialChar
hi link ArrowAction     Character
hi link ArrowDeleteMode  DiagnosticError
hi lualine_transparent  gui=nocombine guifg=#dcd7ba guibg=#1f1f28
" hi lualine_b_terminal  cleared
" hi lualine_c_terminal  cleared
" hi lualine_a_terminal  cleared
hi lualine_b_visual  gui=nocombine guifg=#957fb8 guibg=#1f1f28
" hi lualine_c_visual  cleared
hi lualine_a_visual  gui=nocombine guifg=#1f1f28 guibg=#957fb8
hi lualine_b_replace  gui=nocombine guifg=#ffa066 guibg=#1f1f28
" hi lualine_c_replace  cleared
hi lualine_a_replace  gui=nocombine guifg=#1f1f28 guibg=#ffa066
hi lualine_b_inactive  gui=bold,nocombine guifg=#c8c093 guibg=#16161d
hi lualine_c_inactive  gui=nocombine guifg=#c8c093 guibg=#16161d
hi lualine_a_inactive  gui=nocombine guifg=#c8c093 guibg=#16161d
hi lualine_b_command  gui=nocombine guifg=#c0a36e guibg=#1f1f28
" hi lualine_c_command  cleared
hi lualine_a_command  gui=nocombine guifg=#1f1f28 guibg=#c0a36e
hi lualine_b_insert  gui=nocombine guifg=#98bb6c guibg=#1f1f28
" hi lualine_c_insert  cleared
hi lualine_a_insert  gui=nocombine guifg=#1f1f28 guibg=#98bb6c
hi lualine_b_normal  gui=nocombine guifg=#7e9cd8 guibg=#252535
hi lualine_c_normal  gui=nocombine guifg=#dcd7ba guibg=#2a2a37
hi lualine_a_normal  gui=nocombine guifg=#16161d guibg=#7e9cd8
hi lualine_b_diff_added_normal  gui=nocombine guifg=#76946a guibg=#252535
hi lualine_b_diff_added_insert  gui=nocombine guifg=#76946a guibg=#1f1f28
hi lualine_b_diff_added_visual  gui=nocombine guifg=#76946a guibg=#1f1f28
hi lualine_b_diff_added_replace  gui=nocombine guifg=#76946a guibg=#1f1f28
hi lualine_b_diff_added_command  gui=nocombine guifg=#76946a guibg=#1f1f28
hi lualine_b_diff_added_terminal  gui=nocombine guifg=#76946a guibg=#252535
hi lualine_b_diff_added_inactive  gui=nocombine guifg=#76946a guibg=#16161d
hi lualine_b_diff_modified_normal  gui=nocombine guifg=#dca561 guibg=#252535
hi lualine_b_diff_modified_insert  gui=nocombine guifg=#dca561 guibg=#1f1f28
hi lualine_b_diff_modified_visual  gui=nocombine guifg=#dca561 guibg=#1f1f28
hi lualine_b_diff_modified_replace  gui=nocombine guifg=#dca561 guibg=#1f1f28
hi lualine_b_diff_modified_command  gui=nocombine guifg=#dca561 guibg=#1f1f28
hi lualine_b_diff_modified_terminal  gui=nocombine guifg=#dca561 guibg=#252535
hi lualine_b_diff_modified_inactive  gui=nocombine guifg=#dca561 guibg=#16161d
hi lualine_b_diff_removed_normal  gui=nocombine guifg=#c34043 guibg=#252535
hi lualine_b_diff_removed_insert  gui=nocombine guifg=#c34043 guibg=#1f1f28
hi lualine_b_diff_removed_visual  gui=nocombine guifg=#c34043 guibg=#1f1f28
hi lualine_b_diff_removed_replace  gui=nocombine guifg=#c34043 guibg=#1f1f28
hi lualine_b_diff_removed_command  gui=nocombine guifg=#c34043 guibg=#1f1f28
hi lualine_b_diff_removed_terminal  gui=nocombine guifg=#c34043 guibg=#252535
hi lualine_b_diff_removed_inactive  gui=nocombine guifg=#c34043 guibg=#16161d
hi lualine_b_diagnostics_error_normal  gui=nocombine guifg=#e82424 guibg=#252535
hi lualine_b_diagnostics_error_insert  gui=nocombine guifg=#e82424 guibg=#1f1f28
hi lualine_b_diagnostics_error_visual  gui=nocombine guifg=#e82424 guibg=#1f1f28
hi lualine_b_diagnostics_error_replace  gui=nocombine guifg=#e82424 guibg=#1f1f28
hi lualine_b_diagnostics_error_command  gui=nocombine guifg=#e82424 guibg=#1f1f28
hi lualine_b_diagnostics_error_terminal  gui=nocombine guifg=#e82424 guibg=#252535
hi lualine_b_diagnostics_error_inactive  gui=nocombine guifg=#e82424 guibg=#16161d
hi lualine_b_diagnostics_warn_normal  gui=nocombine guifg=#ff9e3b guibg=#252535
hi lualine_b_diagnostics_warn_insert  gui=nocombine guifg=#ff9e3b guibg=#1f1f28
hi lualine_b_diagnostics_warn_visual  gui=nocombine guifg=#ff9e3b guibg=#1f1f28
hi lualine_b_diagnostics_warn_replace  gui=nocombine guifg=#ff9e3b guibg=#1f1f28
hi lualine_b_diagnostics_warn_command  gui=nocombine guifg=#ff9e3b guibg=#1f1f28
hi lualine_b_diagnostics_warn_terminal  gui=nocombine guifg=#ff9e3b guibg=#252535
hi lualine_b_diagnostics_warn_inactive  gui=nocombine guifg=#ff9e3b guibg=#16161d
hi lualine_b_diagnostics_info_normal  gui=nocombine guifg=#658594 guibg=#252535
hi lualine_b_diagnostics_info_insert  gui=nocombine guifg=#658594 guibg=#1f1f28
hi lualine_b_diagnostics_info_visual  gui=nocombine guifg=#658594 guibg=#1f1f28
hi lualine_b_diagnostics_info_replace  gui=nocombine guifg=#658594 guibg=#1f1f28
hi lualine_b_diagnostics_info_command  gui=nocombine guifg=#658594 guibg=#1f1f28
hi lualine_b_diagnostics_info_terminal  gui=nocombine guifg=#658594 guibg=#252535
hi lualine_b_diagnostics_info_inactive  gui=nocombine guifg=#658594 guibg=#16161d
hi lualine_b_diagnostics_hint_normal  gui=nocombine guifg=#6a9589 guibg=#252535
hi lualine_b_diagnostics_hint_insert  gui=nocombine guifg=#6a9589 guibg=#1f1f28
hi lualine_b_diagnostics_hint_visual  gui=nocombine guifg=#6a9589 guibg=#1f1f28
hi lualine_b_diagnostics_hint_replace  gui=nocombine guifg=#6a9589 guibg=#1f1f28
hi lualine_b_diagnostics_hint_command  gui=nocombine guifg=#6a9589 guibg=#1f1f28
hi lualine_b_diagnostics_hint_terminal  gui=nocombine guifg=#6a9589 guibg=#252535
hi lualine_b_diagnostics_hint_inactive  gui=nocombine guifg=#6a9589 guibg=#16161d
" hi GlanceNone      cleared
hi GlanceWinBarTitle  guifg=#e0e2ea guibg=#27292f
hi GlanceWinBarFilepath  guifg=#a5a6ae guibg=#27292f
hi GlanceWinBarFilename  guifg=#e0e2ea guibg=#27292f
hi GlanceListFilepath  guifg=#a5a6ae
hi GlanceListNormal  guifg=#e0e2ea guibg=#24262b
hi GlanceListCursorLine  guibg=#3d3f44
hi GlancePreviewSignColumn  guifg=#1e2025
hi GlancePreviewLineNr  guifg=#5b5e64
hi GlancePreviewCursorLine  guibg=#37393e
hi GlancePreviewNormal  guibg=#1e2025
hi GlancePreviewBorderBottom  guibg=#1e2025
hi GlanceListBorderBottom  guibg=#24262b
hi GlanceBorderTop  guibg=#27292f
hi GlancePreviewEndOfBuffer  guifg=#1e2025 guibg=#1e2025
hi GlanceListEndOfBuffer  guifg=#24262b guibg=#24262b
hi GlanceFoldIcon  guifg=#a5a6ae
hi GlanceIndent    guifg=#585b61
hi GlancePreviewMatch  guifg=#eef1f8 guibg=#6b5300
hi link GlanceListCount  Number
hi link GlanceListFilename  Directory
hi link GlanceListMatch  Search
hi PackageInfoOutdatedVersion  guifg=#d19a66
hi PackageInfoUpToDateVersion  guifg=#3c4048
hi link CodeCompanionChatHeader  @markup.heading.2.markdown
hi link CodeCompanionChatSeparator  @punctuation.special.markdown
hi link CodeCompanionChatTokens  Comment
hi link CodeCompanionChatTool  Special
hi link CodeCompanionChatToolGroup  Constant
hi link CodeCompanionChatVariable  Identifier
hi link CodeCompanionVirtualText  Comment
hi debugPC         guibg=#43242b
hi link DapUINormal     Normal
hi link DapUIVariable   Normal
hi link DapUIScope      Special
hi link DapUIType       Type
hi link DapUIValue      Normal
hi DapUIModifiedValue  cterm=bold gui=bold guifg=#7fb4ca
hi DapUIDecoration  guifg=#54546d
hi DapUIThread     guifg=#e6c384
hi DapUIStoppedThread  guifg=#7fb4ca
hi link DapUIFrameName  Normal
hi DapUISource     guifg=#e46876
hi DapUILineNumber  guifg=#7fb4ca
hi link DapUIFloatNormal  NormalFloat
hi DapUIFloatBorder  guifg=#54546d
hi DapUIWatchesEmpty  guifg=#e82424
hi DapUIWatchesValue  guifg=#e6c384
hi DapUIWatchesError  guifg=#e82424
hi link DapUIBreakpointsPath  Directory
hi DapUIBreakpointsInfo  guifg=#658594
hi DapUIBreakpointsCurrentLine  cterm=bold gui=bold guifg=#e6c384
hi link DapUIBreakpointsLine  DapUILineNumber
hi link DapUIBreakpointsDisabledLine  Comment
hi link DapUICurrentFrameName  DapUIBreakpointsCurrentLine
hi DapUIStepOver   guifg=#7fb4ca
hi DapUIStepInto   guifg=#7fb4ca
hi DapUIStepBack   guifg=#7fb4ca
hi DapUIStepOut    guifg=#7fb4ca
hi DapUIStop       guifg=#e82424
hi DapUIPlayPause  guifg=#98bb6c
hi DapUIRestart    guifg=#98bb6c
hi DapUIUnavailable  guifg=#727169
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
hi MiniStarterSection  guifg=#98bb6c
hi MiniStarterItemPrefix  guifg=#ff9e3b
hi link MiniStarterItemBullet  Delimiter
hi link MiniStarterItem  Normal
hi link MiniStarterInactive  Comment
hi link MiniStarterHeader  Title
hi MiniStarterFooter  guifg=#717c7c
hi MiniStarterCurrent  cterm=nocombine gui=nocombine
hi MiniPickPrompt  guifg=#7e9cd8 guibg=#16161d
hi link MiniPickPreviewRegion  IncSearch
hi link MiniPickPreviewLine  CursorLine
hi link MiniPickNormal  NormalFloat
hi link MiniPickMatchRanges  DiagnosticFloatingHint
hi link MiniPickMatchMarked  Visual
hi link MiniPickMatchCurrent  CursorLine
hi link MiniPickHeader  DiagnosticFloatingHint
hi link MiniPickIconFile  MiniPickNormal
hi link MiniPickIconDirectory  Directory
hi link MiniPickBorderText  FloatTitle
hi link MiniPickBorderBusy  DiagnosticFloatingWarn
hi link MiniPickBorder  FloatBorder
hi link MiniOperatorsExchangeFrom  IncSearch
hi link MiniNotifyTitle  FloatTitle
hi link MiniNotifyNormal  NormalFloat
hi link MiniNotifyBorder  FloatBorder
hi link MiniMapSymbolView  Delimiter
hi link MiniMapSymbolLine  Title
hi link MiniMapSymbolCount  Special
hi link MiniMapNormal   NormalFloat
hi MiniJump2dSpotUnique  cterm=bold,nocombine gui=bold,nocombine guifg=#7fb4ca
hi MiniJump2dSpotAhead  cterm=nocombine gui=nocombine guifg=#6a9589 guibg=#181820
hi MiniJump2dSpot  cterm=bold,nocombine gui=bold,nocombine guifg=#ffa066
hi link MiniJump2dDim   Comment
hi link MiniJump        SpellRare
hi MiniIndentscopePrefix  cterm=nocombine gui=nocombine
hi MiniIndentscopeSymbol  guifg=#7fb4ca
hi MiniIconsYellow  guifg=#e6c384
hi MiniIconsRed    guifg=#ff5d62
hi MiniIconsPurple  guifg=#957fb8
hi MiniIconsOrange  guifg=#ffa066
hi MiniIconsGrey   guifg=#dcd7ba
hi MiniIconsGreen  guifg=#98bb6c
hi MiniIconsAzure  guifg=#7fb4ca
hi MiniFilesTitleFocused  cterm=bold gui=bold guifg=#dcd7ba guibg=#16161d
hi link MiniFilesDirectory  Directory
hi link MiniFilesCursorLine  CursorLine
hi link MiniFilesBorderModified  DiagnosticFloatingWarn
hi link MiniFilesBorder  FloatBorder
hi link MiniDiffOverDelete  DiffDelete
hi link MiniDiffOverContext  DiffChange
hi link MiniDiffOverChange  DiffText
hi link MiniDiffOverAdd  DiffAdd
hi MiniDiffSignDelete  guifg=#c34043 guibg=#2a2a37
hi MiniDiffSignChange  guifg=#dca561 guibg=#2a2a37
hi MiniDiffSignAdd  guifg=#76946a guibg=#2a2a37
hi link MiniDepsTitleUpdate  DiffAdd
hi link MiniDepsTitleSame  DiffText
hi link MiniDepsTitleError  DiffDelete
hi link MiniDepsTitle   Title
hi link MiniDepsPlaceholder  Comment
hi MiniDepsMsgBreaking  guifg=#ff9e3b
hi MiniDepsInfo    guifg=#658594
hi MiniDepsHint    guifg=#6a9589
hi diffRemoved     guifg=#c34043
hi link MiniDepsChangeRemoved  diffRemoved
hi diffAdded       guifg=#76946a
hi link MiniDepsChangeAdded  diffAdded
hi MiniCursorwordCurrent  cterm=underline gui=underline
hi MiniCursorword  cterm=underline gui=underline
hi MiniCompletionActiveParameter  cterm=underline gui=underline
hi link MiniClueTitle   FloatTitle
hi link MiniClueSeparator  DiagnosticFloatingInfo
hi link MiniClueNextKeyWithPostkeys  DiagnosticFloatingError
hi link MiniClueNextKey  DiagnosticFloatingHint
hi link MiniClueDescSingle  NormalFloat
hi link MiniClueDescGroup  DiagnosticFloatingWarn
hi link MiniClueBorder  FloatBorder
hi link MiniAnimateNormalFloat  NormalFloat
hi MiniAnimateCursor  cterm=reverse,nocombine gui=reverse,nocombine
hi link AerialTypeParameterIcon  Type
hi BlinkCmpKind    guifg=#c8c093
hi link AerialEventIcon  Structure
hi link AerialStructIcon  Structure
hi link AerialEnumMemberIcon  Constant
hi link AerialNullIcon  Type
hi link AerialKeyIcon   Identifier
hi link AerialObjectIcon  Type
hi link AerialArrayIcon  Type
hi link AerialBooleanIcon  Boolean
hi link AerialNumberIcon  Number
hi link AerialStringIcon  String
hi link AerialConstantIcon  Constant
hi link AerialVariableIcon  @variable
hi @variable.member  guifg=#e6c384
hi link NavicIconsField  @variable.member
hi link AerialInterfaceIcon  Type
hi link AerialEnumIcon  Type
hi link NavicIconsNamespace  @module
hi link NavicIconsFile  Directory
hi TroublePos      guifg=#938aa9
hi TroubleIndent   guifg=#54546d
hi link AerialNamespaceIcon  @module
hi IblScope        guifg=#938aa9
hi IblWhitespace   guifg=#54546d
hi IblIndent       guifg=#54546d
hi IndentBlanklineContextStart  cterm=underline gui=underline guisp=#938aa9
hi IndentBlanklineContextChar  guifg=#938aa9
hi IndentBlanklineSpaceCharBlankline  guifg=#54546d
hi IndentBlanklineSpaceChar  guifg=#54546d
hi link BlinkCmpKindOperator  Operator
hi link BlinkCmpKindEvent  Type
hi link BlinkCmpKindConstant  Constant
hi link BlinkCmpKindFolder  Directory
hi link BlinkCmpKindColor  Special
hi link BlinkCmpKindSnippet  Special
hi link BlinkCmpKindKeyword  Keyword
hi link BlinkCmpKindEnum  Type
hi link BlinkCmpKindValue  String
hi link BlinkCmpKindUnit  Number
hi link BlinkCmpKindProperty  @property
hi link BlinkCmpKindModule  @module
hi link BlinkCmpKindClass  Type
hi link BlinkCmpKindFunction  Function
hi BlinkCmpKindText  guifg=#dcd7ba
hi link BlinkCmpSignatureHelpBorder  FloatBorder
hi link BlinkCmpDocCursorLine  Visual
hi link BlinkCmpDoc     NormalFloat
hi BlinkCmpLabelDetails  guifg=#727169
hi link BlinkCmpScrollBarGutter  PmenuSbar
hi BlinkCmpMenuBorder  guifg=#2d4f67 guibg=#223249
hi link CmpItemKindTypeParameter  Type
hi link CmpItemKindStruct  Type
hi link CmpItemKindEnumMember  Constant
hi link CmpItemKindFolder  Directory
hi link CmpItemKindReference  Special
hi link CmpItemKindFile  Directory
hi link CmpItemKindColor  Special
hi link CmpItemKindSnippet  Special
hi link CmpItemKindKeyword  Keyword
hi link CmpItemKindEnum  Type
hi link CmpItemKindValue  String
hi link CmpItemKindUnit  Number
hi link CmpItemKindProperty  @property
hi link CmpItemKindModule  @module
hi link CmpItemKindInterface  Type
hi link CmpItemKindClass  Type
hi CmpItemKindVariable  guifg=#c8c093
hi link CmpItemKindField  @variable.member
hi link CmpItemKindConstructor  @constructor
hi link CmpItemKindMethod  @function.method
hi CmpItemKindText  guifg=#dcd7ba
hi CmpGhostText    guifg=#727169
hi CmpItemMenu     guifg=#c8c093
hi CmpItemKindDefault  guifg=#c8c093
hi CmpItemAbbrMatch  guifg=#7e9cd8
hi link CmpItemAbbrMatchFuzzy  CmpItemAbbrMatch
hi CmpItemAbbrDeprecated  cterm=strikethrough gui=strikethrough guifg=#727169
hi CmpItemAbbr     guifg=#dcd7ba
hi link CmpCompletionSbar  PmenuSbar
hi link CmpCompletionThumb  PmenuThumb
hi CmpCompletionBorder  guifg=#2d4f67 guibg=#223249
hi link CmpCompletionSel  PmenuSel
hi link CmpCompletion   Pmenu
hi link CmpDocumentationBorder  FloatBorder
hi link CmpDocumentation  NormalFloat
hi healthWarning   guifg=#ff9e3b
hi healthSuccess   guifg=#98bb6c
hi healthError     guifg=#e82424
hi FloatermBorder  guifg=#54546d guibg=#1f1f28
hi link NotifyTRACETitle  Comment
hi link NotifyDEBUGTitle  Debug
hi link NotifyHINTTitle  DiagnosticHint
hi link NotifyINFOTitle  DiagnosticInfo
hi link NotifyWARNTitle  DiagnosticWarn
hi link NotifyERRORTitle  DiagnosticError
hi link NotifyTRACEIcon  Comment
hi link NotifyDEBUGIcon  Debug
hi link NotifyHINTIcon  DiagnosticHint
hi link NotifyINFOIcon  DiagnosticInfo
hi diffNewFile     guifg=#76946a
hi diffOldFile     guifg=#c34043
hi BlinkCmpLabel   guifg=#dcd7ba
hi BlinkCmpLabelDeprecated  cterm=strikethrough gui=strikethrough guifg=#727169
hi diffChanged     guifg=#dca561
hi diffDeleted     guifg=#c34043
" hi markdownEscape  cleared
hi markdownCodeBlock  guifg=#98bb6c
hi markdownCode    guifg=#98bb6c
hi link qfFileName      Directory
hi link qfLineNr        LineNr
hi Italic          cterm=italic gui=italic
hi GitSignsAdd     guifg=#76946a guibg=#2a2a37
hi GitSignsChange  guifg=#dca561 guibg=#2a2a37
hi GitSignsDelete  guifg=#c34043 guibg=#2a2a37
hi @tag.delimiter  guifg=#9cabca
hi @tag.attribute  guifg=#e6c384
hi link @markup.raw     String
hi link @markup.link.url  @string.special.url
hi link @markup.environment  Keyword
hi link @markup.math    Constant
hi link @markup.quote   @variable.parameter
hi @punctuation.bracket  guifg=#9cabca
hi @punctuation.delimiter  guifg=#9cabca
hi link @keyword.luap   @string.regex
hi @keyword.return  cterm=italic gui=italic guifg=#ff5d62
hi link @keyword.import  PreProc
hi @keyword.operator  cterm=bold gui=bold guifg=#c0a36e
hi @constructor.lua  guifg=#957fb8
hi @string.special.symbol  guifg=#e6c384
hi link AerialFunctionIcon  Function
hi link NavicIconsProperty  @property
hi link NavicIconsMethod  @function.method
hi link NavicIconsClass  Type
hi link NavicIconsPackage  @module
hi IndentBlanklineChar  guifg=#54546d
hi link AerialPropertyIcon  @property
hi link BlinkCmpKindCopilot  String
hi link BlinkCmpKindTypeParameter  Type
hi link BlinkCmpKindStruct  Type
hi link BlinkCmpKindEnumMember  Constant
hi link BlinkCmpKindReference  Special
hi link BlinkCmpKindFile  Directory
hi link NotifyERRORIcon  DiagnosticError
hi link NotifyTRACEBorder  Comment
hi link NotifyDEBUGBorder  Debug
hi link NotifyHINTBorder  DiagnosticHint
hi link NotifyINFOBorder  DiagnosticInfo
hi link NotifyWARNBorder  DiagnosticWarn
hi link NotifyERRORBorder  DiagnosticError
hi NotifyBackground  guibg=#1f1f28
hi DashboardIcon   guifg=#938aa9
hi DashboardKey    guifg=#7fb4ca
hi DashboardDesc   guifg=#e6c384
hi DashboardFooter  guifg=#727169
hi DashboardCenter  guifg=#e6c384
hi DashboardHeader  guifg=#c34043
hi DashboardShortCut  guifg=#7fb4ca
hi link NeoTreeIndentMarker  NonText
hi NeoTreeGitModified  guifg=#dca561
hi link NeoTreeGitUnstaged  NeoTreeGitModified
hi link NeoTreeGitUntracked  NeoTreeGitModified
hi NeoTreeGitConflict  guifg=#e82424
hi NeoTreeGitStaged  guifg=#76946a
hi NeoTreeGitDeleted  guifg=#c34043
hi NeoTreeGitAdded  guifg=#76946a
hi link NeoTreeModified  String
hi NeoTreeRootName  cterm=bold gui=bold guifg=#e6c384
hi link NeoTreeTabActive  TabLineSel
hi link NeoTreeTabSeparatorActive  NeoTreeTabActive
hi link NeoTreeTabInactive  TabLine
hi link NeoTreeTabSeparatorInactive  NeoTreeTabInactive
" hi @field          cleared
hi link CmpItemKindEvent  Type
hi TreesitterContextLineNumber  guifg=#938aa9 guibg=#2a2a37
hi link TreesitterContext  Folded
hi NeogitDiffDeleteHighlight  guibg=#43242b
hi NeogitDiffAddHighlight  guibg=#2b3328
hi NeogitHunkHeaderHighlight  guifg=#ffa066 guibg=#252535
hi NeogitHunkHeader  guifg=#7e9cd8
hi NeogitDiffContextHighlight  guibg=#252535
hi link NotifyWARNIcon  DiagnosticWarn
hi link NavicIconsConstant  Constant
hi link NavicIconsVariable  @variable
hi link NavicIconsFunction  Function
hi link BlinkCmpMenu    Pmenu
hi LazyProgressTodo  guifg=#54546d
hi MiniIconsCyan   guifg=#7aa89f
hi MiniIconsBlue   guifg=#7e9cd8
hi MiniHipatternsTodo  cterm=bold gui=bold guifg=#1f1f28 guibg=#6a9589
hi MiniHipatternsNote  cterm=bold gui=bold guifg=#1f1f28 guibg=#658594
hi MiniHipatternsHack  cterm=bold gui=bold guifg=#1f1f28 guibg=#ff9e3b
hi MiniHipatternsFixme  cterm=bold gui=bold guifg=#1f1f28 guibg=#e82424
hi MiniFilesTitle  cterm=bold gui=bold guifg=#938aa9 guibg=#16161d
hi link MiniFilesNormal  NormalFloat
hi MiniFilesFile   guifg=#dcd7ba
hi link AerialOperatorIcon  Operator
hi link NavicIconsBoolean  Boolean
hi link NavicIconsNumber  Number
hi link NavicIconsString  String
hi Bold            cterm=bold gui=bold
hi link NavicIconsInterface  Type
hi link NavicIconsEnum  Type
hi link NavicIconsKey   Identifier
hi link NavicIconsConstructor  @constructor
hi @keyword.exception  cterm=bold gui=bold guifg=#ff5d62
hi link CmpItemKindConstant  Constant
hi debugBreakpoint  guifg=#7fb4ca guibg=#2a2a37
hi BlinkCmpKindVariable  guifg=#c8c093
hi link BlinkCmpKindInterface  Type
hi link NavicIconsArray  Type
hi link NavicIconsObject  Type
hi link NavicIconsNull  Type
hi link NavicIconsEnumMember  Constant
hi link NavicIconsStruct  Structure
hi link NavicIconsEvent  Structure
hi link NavicIconsOperator  Operator
hi link NavicIconsTypeParameter  Type
hi NavicText       guifg=#dcd7ba
hi NavicSeparator  guifg=#dcd7ba
hi link AerialFileIcon  Directory
hi link AerialModuleIcon  @module
hi link AerialPackageIcon  @module
hi link AerialClassIcon  Type
hi link AerialMethodIcon  @function.method
hi link AerialFieldIcon  @variable.member
hi link AerialConstructorIcon  @constructor
hi @lsp.typemod.function.readonly  cterm=bold gui=bold guifg=#7e9cd8
hi link @lsp.typemod.variable.injected  @variable
hi link @lsp.typemod.method.defaultLibrary  @function.builtin
hi link NavicIconsModule  @module
hi link @lsp.typemod.function.defaultLibrary  @function.builtin
hi link @lsp.typemod.function.builtin  @function.builtin
hi link @lsp.typemod.variable.defaultLibrary  Special
hi link @lsp.typemod.variable.static  Constant
hi link @lsp.typemod.variable.global  Constant
hi link @lsp.type.decorator.rust  PreProc
hi link @lsp.typemod.keyword.documentation  Special
hi link @lsp.type.lifetime  Operator
hi link @lsp.typemod.operator.controlFlow  @keyword.exception
hi link @lsp.mod.typeHint  Type
hi link @lsp.mod.readonly  Constant
hi link @lsp.type.magicFunction  @function.builtin
hi link @lsp.type.builtinConstant  @constant.builtin
hi link @lsp.type.selfParameter  @variable.builtin
hi link @lsp.type.punctuation  Delimiter
hi link @lsp.type.bitwise  Operator
hi link @lsp.type.comparison  Operator
hi link @lsp.type.const  Constant
hi link BlinkCmpKindField  @variable.member
hi link BlinkCmpKindConstructor  @constructor
hi link BlinkCmpKindMethod  @function.method
hi link BlinkCmpSignatureHelpActiveParameter  LspSignatureActiveParameter
hi link BlinkCmpSignatureHelp  NormalFloat
hi link BlinkCmpDocBorder  FloatBorder
hi BlinkCmpGhostText  guifg=#727169
hi link BlinkCmpScrollBarThumb  PmenuThumb
hi link BlinkCmpMenuSelection  PmenuSel
hi link CmpItemKindCopilot  String
hi link CmpItemKindOperator  Operator
hi link CmpItemKindFunction  Function
hi BlinkCmpLabelMatch  guifg=#7e9cd8
hi MiniTrailspace  guibg=#c34043
hi MiniTestPass    cterm=bold gui=bold guifg=#98bb6c
hi MiniTestFail    cterm=bold gui=bold guifg=#e82424
hi MiniTestEmphasis  cterm=bold gui=bold
hi MiniTablineVisible  cterm=bold gui=bold guifg=#938aa9 guibg=#16161d
hi MiniTablineTabpagesection  cterm=bold gui=bold guifg=#dcd7ba guibg=#2d4f67
hi MiniTablineModifiedVisible  cterm=bold gui=bold guifg=#16161d guibg=#938aa9
hi MiniTablineModifiedHidden  guifg=#16161d guibg=#938aa9
hi MiniTablineModifiedCurrent  cterm=bold gui=bold guifg=#2a2a37 guibg=#c8c093
hi MiniTablineHidden  guifg=#938aa9 guibg=#16161d
hi link MiniTablineFill  TabLineFill
hi MiniTablineCurrent  cterm=bold gui=bold guifg=#c8c093 guibg=#2a2a37
hi link MiniSurround    IncSearch
hi MiniStatuslineModeVisual  cterm=bold gui=bold guifg=#1f1f28 guibg=#957fb8
hi MiniStatuslineModeReplace  cterm=bold gui=bold guifg=#1f1f28 guibg=#ffa066
hi MiniStatuslineModeOther  cterm=bold gui=bold guifg=#1f1f28 guibg=#7aa89f
hi MiniStatuslineModeNormal  cterm=bold gui=bold guifg=#16161d guibg=#7e9cd8
hi MiniStatuslineModeInsert  cterm=bold gui=bold guifg=#1f1f28 guibg=#98bb6c
hi MiniStatuslineModeCommand  cterm=bold gui=bold guifg=#1f1f28 guibg=#c0a36e
hi link MiniStatuslineInactive  StatusLineNC
hi MiniStatuslineFilename  guifg=#c8c093 guibg=#181820
hi MiniStatuslineFileinfo  guifg=#c8c093 guibg=#2a2a37
hi MiniStatuslineDevinfo  guifg=#c8c093 guibg=#2a2a37
hi MiniStarterQuery  guifg=#658594
hi link TabLineProject  Pmenu
hi TabLineProjectEdge  guibg=#16161d
hi TabLineEdge     guifg=#16161d guibg=#16161d
hi TabLineSelEdge  guifg=#16161d guibg=#2a2a37
hi TabLineIconModified  ctermfg=2 guifg=#cf6a4c guibg=#16161d
hi TabLineIconModifiedSel  ctermfg=2 guifg=#cf6a4c guibg=#2a2a37
hi NeogitUnpulledFrom  cterm=bold gui=bold guifg=#bb5561
hi NeogitUnpushedTo  cterm=bold gui=bold guifg=#bb5561
hi NeogitUnmergedInto  cterm=bold gui=bold guifg=#bb5561
hi NeogitRemote    cterm=bold gui=bold guifg=#98bb6c
hi NeogitBranchHead  cterm=bold,underline gui=bold,underline guifg=#e46876
hi NeogitBranch    cterm=bold gui=bold guifg=#e46876
hi link NeogitCommandCodeError  Error
hi link NeogitCommandCodeNormal  String
hi link NeogitCommandTime  NeogitSubtleText
hi link NeogitSubtleText  Comment
hi link NeogitCommandText  NeogitSubtleText
hi NeogitDiffHeaderHighlight  cterm=bold gui=bold guifg=#7fb4ca guibg=#383840
hi NeogitDiffHeader  cterm=bold gui=bold guifg=#e46876 guibg=#383840
hi link NeogitCommitViewDescription  String
hi NeogitCommitViewHeader  guifg=#1f1f28 guibg=#9d865a
hi NeogitFilePath  cterm=italic gui=italic guifg=#e46876
hi link NeogitPopupActionDisabled  NeogitSubtleText
hi NeogitPopupActionKey  guifg=#e46876
hi link NeogitPopupConfigDisabled  NeogitSubtleText
hi link NeogitPopupConfigEnabled  SpecialChar
hi NeogitPopupConfigKey  guifg=#e46876
hi link NeogitPopupOptionDisabled  NeogitSubtleText
hi link NeogitPopupOptionEnabled  SpecialChar
hi NeogitPopupOptionKey  guifg=#e46876
hi link NeogitPopupSwitchDisabled  NeogitSubtleText
hi link NeogitPopupSwitchEnabled  SpecialChar
hi NeogitPopupSwitchKey  guifg=#e46876
hi NeogitPopupBold  cterm=bold gui=bold
hi link NeogitPopupBranchName  String
hi link NeogitPopupSectionTitle  Function
hi NeogitDiffDeleteCursor  guifg=#e82424 guibg=#23232c
hi NeogitDiffDelete  guifg=#be1e1e guibg=#43242b
hi NeogitDiffDeletions  guifg=#be1e1e
hi NeogitDiffAddCursor  guifg=#98bb6c guibg=#23232c
hi NeogitDiffAdd   guifg=#7d9959 guibg=#2b3328
hi NeogitDiffAdditions  guifg=#7d9959
hi NeogitDiffContextCursor  guibg=#23232c
hi NeogitDiffContext  guibg=#23232c
hi NeogitHunkHeaderCursor  cterm=bold gui=bold guifg=#1f1f28 guibg=#e9838f
hi NeogitHunkMergeHeaderCursor  cterm=bold gui=bold guifg=#1f1f28 guibg=#9d865a
hi NeogitHunkMergeHeaderHighlight  cterm=bold gui=bold guifg=#1f1f28 guibg=#9d865a
hi NeogitHunkMergeHeader  cterm=bold gui=bold guifg=#2e2e36 guibg=#79797e
hi link NeogitCursorLine  CursorLine
hi link NeogitSignatureGoodRevokedKey  NeogitGraphRed
hi NeogitGraphRed  guifg=#e82424
hi link NeogitSignatureGoodExpiredKey  NeogitGraphYellow
hi NeogitGraphYellow  guifg=#e46876
hi link NeogitSignatureGoodExpired  NeogitGraphOrange
hi NeogitGraphOrange  guifg=#7fb4ca
hi link NeogitSignatureGoodUnknown  NeogitGraphBlue
hi NeogitGraphBlue  guifg=#e46876
hi link NeogitSignatureNone  NeogitSubtleText
hi link NeogitSignatureMissing  NeogitGraphPurple
hi NeogitGraphPurple  guifg=#e46876
hi link NeogitSignatureBad  NeogitGraphBoldRed
hi NeogitGraphBoldRed  cterm=bold gui=bold guifg=#e82424
hi link NeogitSignatureGood  NeogitGraphGreen
hi NeogitGraphGreen  guifg=#98bb6c
hi NeogitGraphBoldGray  cterm=bold gui=bold guifg=#79797e
hi NeogitGraphBoldPurple  cterm=bold gui=bold guifg=#e46876
hi NeogitGraphBoldBlue  cterm=bold gui=bold guifg=#e46876
hi NeogitGraphBoldCyan  cterm=bold gui=bold guifg=#c0a36e
hi NeogitGraphBoldGreen  cterm=bold gui=bold guifg=#98bb6c
hi NeogitGraphBoldYellow  cterm=bold gui=bold guifg=#e46876
hi NeogitGraphBoldWhite  cterm=bold gui=bold guifg=#fcfcfc
hi NeogitGraphBoldOrange  cterm=bold gui=bold guifg=#7fb4ca
hi NeogitGraphGray  guifg=#79797e
hi NeogitGraphCyan  guifg=#c0a36e
hi NeogitGraphWhite  guifg=#fcfcfc
hi NeogitGraphAuthor  guifg=#7fb4ca
hi NeogitActiveItem  cterm=bold gui=bold guifg=#1f1f28 guibg=#6995a8
hi NeogitFloatHeaderHighlight  cterm=bold gui=bold guifg=#c0a36e guibg=#2e2e36
hi NeogitFloatHeader  cterm=bold gui=bold guibg=#1f1f28
hi NeogitTagDistance  guifg=#c0a36e
hi NeogitTagName   guifg=#e46876
hi link NeogitReverting  NeogitSectionHeader
hi NeogitSectionHeader  cterm=bold gui=bold guifg=#bb5561
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
hi NeogitChangeNewFile  cterm=bold,italic gui=bold,italic guifg=#7d9959
hi NeogitChangeUnmerged  cterm=bold,italic gui=bold,italic guifg=#bd5662
hi NeogitChangeCopied  cterm=bold,italic gui=bold,italic guifg=#9d865a
hi NeogitChangeUpdated  cterm=bold,italic gui=bold,italic guifg=#6995a8
hi NeogitChangeRenamed  cterm=bold,italic gui=bold,italic guifg=#bb5561
hi NeogitChangeDeleted  cterm=bold,italic gui=bold,italic guifg=#be1e1e
hi NeogitChangeAdded  cterm=bold,italic gui=bold,italic guifg=#7d9959
hi NeogitChangeModified  cterm=bold,italic gui=bold,italic guifg=#bb5561
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
hi link NeogitChangeTunstaged  NeogitChangeUpdated
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
" hi DiagnosticSignInformation  cleared
" hi DiagnosticSignWarning  cleared
hi link SnacksInputTitle  DiagnosticInfo
hi link SnacksInputPrompt  SnacksInputTitle
hi link SnacksInputIcon  DiagnosticHint
hi link SnacksInputBorder  DiagnosticInfo
hi link SnacksInputNormal  Normal
hi link SnacksPickerCmd  Function
hi link SnacksPickerSelected  Number
hi link SnacksPickerSpinner  Special
hi link SnacksPickerDesc  Comment
hi link SnacksPickerCol  LineNr
hi link SnacksPickerRow  String
hi link SnacksPickerDirectory  Directory
hi link SnacksPickerDir  NonText
hi link SnacksPickerIconFunction  @function
hi link SnacksPickerTree  LineNr
hi link SnacksPickerIconFile  Normal
hi link SnacksPickerToggle  DiagnosticVirtualTextInfo
hi link SnacksPickerIconField  @variable.member
hi link SnacksPickerItalic  Italic
hi link SnacksPickerIconConstructor  @constructor
hi link SnacksPickerIconConstant  @constant
hi link SnacksPickerIconClass  @type
hi link SnacksPickerTime  Special
hi link SnacksPickerIconName  @keyword
hi link SnacksPickerIcon  Special
hi link SnacksPickerIconSource  @constant
hi link SnacksPickerRegister  Number
hi link SnacksPickerKeymapMode  Number
hi link SnacksPickerGitCommit  @variable.builtin
hi link SnacksPickerKeymapLhs  Special
hi link SnacksPickerGitStatus  Special
hi link SnacksPickerGitStatusRenamed  SnacksPickerGitStatus
" hi SnacksPickerFile  cleared
hi link SnacksPickerBufNr  Number
hi link SnacksPickerBufFlags  NonText
hi link SnacksPickerKeymapRhs  NonText
hi link SnacksPickerUndoAdded  Added
hi link SnacksPickerGitType  Title
hi link SnacksPickerUndoCurrent  @variable.builtin
hi link SnacksPickerUndoSaved  Special
hi link SnacksPickerGitBreaking  Error
hi link SnacksPickerGitDetached  DiagnosticWarn
hi link SnacksPickerDimmed  Conceal
hi link SnacksPickerPathHidden  NonText
hi link SnacksPickerPathIgnored  NonText
hi link SnacksPickerLinkBroken  DiagnosticError
hi link SnacksPickerLink  Comment
hi link SnacksPickerTotals  NonText
hi link SnacksPickerInputSearch  @keyword
hi link SnacksPickerGitBranch  Title
hi link SnacksPickerMatch  Special
hi link SnacksPickerDelim  Delimiter
hi link SnacksPickerSpecial  Special
hi link SnacksPickerLabel  SnacksPickerSpecial
hi link SnacksPickerSearch  Search
hi link SnacksPickerPickWinCurrent  CurSearch
hi link SnacksPickerIconArray  @punctuation.bracket
hi link SnacksPickerIconVariable  @variable
hi link SnacksPickerIconPackage  @module
hi link SnacksPickerIconTypeParameter  @lsp.type.typeParameter
hi link SnacksPickerGitBranchCurrent  Number
hi link SnacksPickerIconBoolean  @boolean
hi link SnacksPickerGitDate  Special
hi link SnacksPickerIconStruct  @lsp.type.struct
hi link SnacksPickerGitIssue  Number
hi link SnacksPickerIconString  @string
hi link SnacksPickerComment  Comment
hi link SnacksPickerIconProperty  @property
hi link SnacksPickerDiagnosticSource  Comment
hi link SnacksPickerIconOperator  @operator
hi link SnacksPickerIconObject  @constant
hi link SnacksPickerIconEnumMember  @lsp.type.enumMember
hi link SnacksPickerIconNumber  @number
hi link SnacksPickerIconEnum  @lsp.type.enum
hi link SnacksPickerIconNull  @constant.builtin
hi link SnacksPickerIconNamespace  @module
hi link SnacksPickerIconModule  @module
hi link SnacksPickerIconMethod  @function.method
hi link SnacksPickerIconKey  @lsp.type.keyword
hi link SnacksPickerIconCategory  @module
hi link SnacksPickerIconInterface  @lsp.type.interface
hi link SnacksPickerPrompt  Special
hi link SnacksPickerManPage  Special
hi link SnacksPickerLspUnavailable  DiagnosticError
hi link SnacksPickerLspAttachedBuf  DiagnosticInfo
hi link SnacksPickerLspAttached  DiagnosticWarn
hi link SnacksPickerLspEnabled  Special
hi link SnacksPickerLspDisabled  DiagnosticWarn
hi link SnacksPickerPickWin  Search
hi link SnacksPickerManSection  Number
hi link SnacksPickerGitStatusStaged  DiagnosticHint
hi link SnacksPickerGitStatusUnmerged  DiagnosticError
hi link SnacksPickerGitStatusIgnored  NonText
hi link SnacksPickerGitStatusUntracked  NonText
hi link SnacksPickerGitStatusCopied  SnacksPickerGitStatus
hi link SnacksPickerUndoRemoved  Removed
hi link SnacksPickerGitStatusDeleted  Removed
hi link SnacksPickerGitStatusModified  DiagnosticWarn
hi link SnacksPickerGitStatusAdded  Added
hi link SnacksPickerKeymapNowait  @variable.builtin
hi link SnacksPickerGitScope  Italic
hi link SnacksPickerBold  Bold
hi link SnacksPickerDiagnosticCode  Special
hi link SnacksPickerAuGroup  Type
hi link SnacksPickerAuEvent  Constant
hi link SnacksPickerAuPattern  String
hi link SnacksPickerCode  @markup.raw.markdown_inline
hi link SnacksPickerIconEvent  Special
hi link SnacksPickerIdx  Number
hi link SnacksPickerUnselected  NonText
hi link SnacksPickerCmdBuiltin  @constructor
hi link SnacksPickerToggleIgnored  SnacksPickerToggle
hi link SnacksPickerToggleFollow  SnacksPickerToggle
hi link SnacksPickerToggleModified  SnacksPickerToggle
hi link SnacksPickerToggleRegex  SnacksPickerToggle
hi link SnacksPickerToggleHidden  SnacksPickerToggle
hi lualine_transitional_lualine_a_normal_to_lualine_b_normal  gui=nocombine guifg=#7e9cd8 guibg=#252535
hi lualine_transitional_lualine_b_normal_to_lualine_c_normal  gui=nocombine guifg=#252535 guibg=#2a2a37
hi link Timber.Insert   Search
hi link Timber.AddToBatch  Search
hi link Timber.LogPlaceholderSnippet  DiagnosticVirtualTextInfo
hi Timber.LogPlaceholderTime  cterm=italic gui=italic
" hi Timber.FloatingWindowEntrySeparator  cleared
hi Timber.SummaryEntryHeader  guifg=#54546d
hi link Timber.SummaryEntryBodyHighlighted  PmenuSel
hi link Timber.SummaryJumpToLine  Search
hi link DressingSelectIdx  Special
hi link RenderMarkdownCode  ColorColumn
hi link RenderMarkdownCodeBorder  RenderMarkdownCode
hi link RenderMarkdownHint  DiagnosticHint
hi link RenderMarkdownSign  SignColumn
hi link RenderMarkdownDash  LineNr
hi link RenderMarkdownBullet  Normal
hi link RenderMarkdownCodeInline  RenderMarkdownCode
hi link RenderMarkdownInlineHighlight  RenderMarkdownCodeInline
hi link RenderMarkdownQuote  @markup.quote
hi link RenderMarkdownQuote6  RenderMarkdownQuote
hi link RenderMarkdownQuote5  RenderMarkdownQuote
hi link RenderMarkdownQuote4  RenderMarkdownQuote
hi link RenderMarkdownQuote3  RenderMarkdownQuote
hi link RenderMarkdownQuote2  RenderMarkdownQuote
hi link RenderMarkdownWarn  DiagnosticWarn
hi link RenderMarkdownInfo  DiagnosticInfo
hi link RenderMarkdownH3  @markup.heading.3.markdown
hi link RenderMarkdownH2  @markup.heading.2.markdown
hi link RenderMarkdownH1  @markup.heading.1.markdown
hi link RenderMarkdownIndent  Whitespace
hi link RenderMarkdownMath  @markup.math
hi link RenderMarkdownH4  @markup.heading.4.markdown
hi link RenderMarkdownH5  @markup.heading.5.markdown
hi link RenderMarkdownH6  @markup.heading.6.markdown
hi link RenderMarkdownTodo  @markup.raw
hi link RenderMarkdownH1Bg  DiffText
hi link RenderMarkdownH2Bg  DiffAdd
hi link RenderMarkdownH3Bg  DiffChange
hi link RenderMarkdownH4Bg  DiffDelete
hi link RenderMarkdownH5Bg  Visual
hi link RenderMarkdownH6Bg  CursorColumn
hi link RenderMarkdownSuccess  DiagnosticOk
hi link RenderMarkdownTableFill  Conceal
hi link RenderMarkdownTableRow  Normal
hi link RenderMarkdownTableHead  @markup.heading
hi link RenderMarkdownChecked  @markup.list.checked
hi link RenderMarkdownUnchecked  @markup.list.unchecked
hi link RenderMarkdownQuote1  RenderMarkdownQuote
hi link RenderMarkdownLink  @markup.link.label.markdown_inline
hi link RenderMarkdownWikiLink  RenderMarkdownLink
hi link RenderMarkdownHtmlComment  @comment
hi link RenderMarkdownError  DiagnosticError
hi link RenderMarkdownCodeFallback  Normal
hi AvanteReversedTitle  guifg=#98c379
hi AvanteTitle     guifg=#1e222a guibg=#98c379
hi AvanteButtonPrimaryHover  guifg=#1e222a guibg=#56b6c2
hi AvanteReversedThirdTitle  guifg=#353b45
hi AvanteThirdTitle  guifg=#abb2bf guibg=#353b45
hi AvanteButtonDefaultHover  guifg=#1e222a guibg=#a9cf8a
hi AvanteButtonDefault  guifg=#1e222a guibg=#abb2bf
hi AvanteReversedSubtitle  guifg=#56b6c2
hi AvanteSubtitle  guifg=#1e222a guibg=#56b6c2
hi AvanteToBeDeletedWOStrikethrough  guibg=#562c30
hi AvanteToBeDeleted  cterm=strikethrough gui=strikethrough guibg=#ffcccc
hi link AvanteInlineHint  Keyword
hi link AvantePopupHint  NormalFloat
hi link AvanteAnnotation  Comment
hi link AvanteSuggestion  Comment
hi AvanteStateSpinnerThinking  guifg=#1e222a guibg=#c678dd
hi AvanteStateSpinnerSearching  guifg=#1e222a guibg=#c678dd
hi AvanteStateSpinnerSucceeded  guifg=#1e222a guibg=#98c379
hi AvanteStateSpinnerFailed  guifg=#1e222a guibg=#e06c75
hi AvanteStateSpinnerToolCalling  guifg=#1e222a guibg=#56b6c2
hi AvanteStateSpinnerCompacting  guifg=#1e222a guibg=#c678dd
hi AvanteStateSpinnerGenerating  guifg=#1e222a guibg=#ab9df2
hi AvanteConfirmTitle  guifg=#1e222a guibg=#e06c75
hi AvanteReversedNormal  guifg=#1f1f28 guibg=#dcd7ba
hi AvanteSidebarWinSeparator  guifg=#16161d guibg=#16161d
hi AvanteCommentFg  guifg=#727169
hi link AvanteSidebarNormal  NormalFloat
hi AvanteSidebarWinHorizontalSeparator  guifg=#16161d guibg=#16161d
hi AvanteTaskCompleted  guifg=#98c379 guibg=#1f1f28
hi AvanteButtonPrimary  guifg=#1e222a guibg=#abb2bf
hi link AvantePromptInputBorder  NormalFloat
hi AvanteButtonDanger  guifg=#1e222a guibg=#abb2bf
" hi AvantePromptInput  cleared
hi AvanteButtonDangerHover  guifg=#1e222a guibg=#e06c75
hi AvanteConflictIncomingLabel  guibg=#3f5c6b
hi AvanteConflictCurrentLabel  guibg=#6f393e
hi AvanteConflictIncoming  cterm=bold gui=bold guibg=#314753
hi AvanteConflictCurrent  cterm=bold gui=bold guibg=#562c30
hi link NvimSurroundHighlight  Visual
hi link BlinkCmpLabelDetail  CmpItemMenu
hi link BlinkCmpLabelDescription  CmpItemMenu
hi link BlinkCmpSource  CmpItemMenu
" hi CmpItemKind     cleared
hi link BlinkCmpDocSeparator  NormalFloat
hi TodoBgHACK      gui=bold guifg=#1f1f28 guibg=#ff9e3b
hi TodoFgHACK      guifg=#ff9e3b
hi TodoSignHACK    guifg=#ff9e3b guibg=#2a2a37
hi TodoBgPERF      gui=bold guifg=#1f1f28 guibg=#e6c384
hi TodoFgPERF      guifg=#e6c384
hi TodoSignPERF    guifg=#e6c384 guibg=#2a2a37
hi TodoBgWARN      gui=bold guifg=#1f1f28 guibg=#ff9e3b
hi TodoFgWARN      guifg=#ff9e3b
hi TodoSignWARN    guifg=#ff9e3b guibg=#2a2a37
hi TodoBgTEST      gui=bold guifg=#1f1f28 guibg=#e6c384
hi TodoFgTEST      guifg=#e6c384
hi TodoSignTEST    guifg=#e6c384 guibg=#2a2a37
hi TodoBgTODO      gui=bold guifg=#1f1f28 guibg=#658594
hi TodoFgTODO      guifg=#658594
hi TodoSignTODO    guifg=#658594 guibg=#2a2a37
hi TodoBgFIX       gui=bold guifg=#1f1f28 guibg=#e82424
hi TodoFgFIX       guifg=#e82424
hi TodoSignFIX     guifg=#e82424 guibg=#2a2a37
hi TodoBgNOTE      gui=bold guifg=#1f1f28 guibg=#6a9589
hi TodoFgNOTE      guifg=#6a9589
hi TodoSignNOTE    guifg=#6a9589 guibg=#2a2a37
hi link GitSignsChangedelete  GitSignsChange
hi link GitSignsTopdelete  GitSignsDelete
hi link GitSignsUntracked  GitSignsAdd
hi link GitSignsAddNr   GitSignsAdd
" hi GitGutterAddLineNr  cleared
hi link GitSignsChangeNr  GitSignsChange
" hi GitGutterChangeLineNr  cleared
hi link GitSignsDeleteNr  GitSignsDelete
" hi GitGutterDeleteLineNr  cleared
hi link GitSignsChangedeleteNr  GitSignsChangeNr
hi link GitSignsTopdeleteNr  GitSignsDeleteNr
hi link GitSignsUntrackedNr  GitSignsAddNr
hi link GitSignsAddLn   DiffAdd
" hi GitGutterAddLine  cleared
" hi SignifyLineAdd  cleared
hi link GitSignsChangeLn  DiffChange
" hi GitGutterChangeLine  cleared
" hi SignifyLineChange  cleared
hi link GitSignsChangedeleteLn  GitSignsChangeLn
hi link GitSignsTopdeleteLn  GitSignsDeleteLn
" hi GitSignsDeleteLn  cleared
hi link GitSignsUntrackedLn  GitSignsAddLn
hi link GitSignsAddCul  GitSignsAdd
hi link GitSignsChangeCul  GitSignsChange
hi link GitSignsDeleteCul  GitSignsDelete
hi link GitSignsChangedeleteCul  GitSignsChangeCul
hi link GitSignsTopdeleteCul  GitSignsDeleteCul
hi link GitSignsUntrackedCul  GitSignsAddCul
hi GitSignsStagedAdd  guifg=#3b4a35 guibg=#2a2a37
hi GitSignsStagedChange  guifg=#6e5230 guibg=#2a2a37
hi GitSignsStagedDelete  guifg=#612021 guibg=#2a2a37
hi GitSignsStagedChangedelete  guifg=#6e5230 guibg=#2a2a37
hi GitSignsStagedTopdelete  guifg=#612021 guibg=#2a2a37
hi GitSignsStagedUntracked  guifg=#3b4a35 guibg=#2a2a37
hi GitSignsStagedAddNr  guifg=#3b4a35 guibg=#2a2a37
hi GitSignsStagedChangeNr  guifg=#6e5230 guibg=#2a2a37
hi GitSignsStagedDeleteNr  guifg=#612021 guibg=#2a2a37
hi GitSignsStagedChangedeleteNr  guifg=#6e5230 guibg=#2a2a37
hi GitSignsStagedTopdeleteNr  guifg=#612021 guibg=#2a2a37
hi GitSignsStagedUntrackedNr  guifg=#3b4a35 guibg=#2a2a37
hi GitSignsStagedAddLn  guibg=#2b3328
hi GitSignsStagedChangeLn  guibg=#252535
hi GitSignsStagedChangedeleteLn  guibg=#252535
" hi GitSignsStagedTopdeleteLn  cleared
hi GitSignsStagedUntrackedLn  guibg=#2b3328
hi GitSignsStagedAddCul  guifg=#3b4a35 guibg=#2a2a37
hi GitSignsStagedChangeCul  guifg=#6e5230 guibg=#2a2a37
hi GitSignsStagedDeleteCul  guifg=#612021 guibg=#2a2a37
hi GitSignsStagedChangedeleteCul  guifg=#6e5230 guibg=#2a2a37
hi GitSignsStagedTopdeleteCul  guifg=#612021 guibg=#2a2a37
hi GitSignsStagedUntrackedCul  guifg=#3b4a35 guibg=#2a2a37
hi link GitSignsAddPreview  DiffAdd
hi link GitSignsDeletePreview  DiffDelete
" hi GitGutterDeleteLine  cleared
" hi SignifyLineDelete  cleared
hi link GitSignsCurrentLineBlame  NonText
hi link GitSignsAddInline  TermCursor
hi link GitSignsDeleteInline  TermCursor
hi link GitSignsChangeInline  TermCursor
hi link GitSignsAddLnInline  GitSignsAddInline
hi link GitSignsChangeLnInline  GitSignsChangeInline
hi link GitSignsDeleteLnInline  GitSignsDeleteInline
hi link GitSignsDeleteVirtLn  DiffDelete
hi link GitSignsDeleteVirtLnInLine  GitSignsDeleteLnInline
hi link GitSignsVirtLnum  GitSignsDeleteVirtLn
hi link SnacksIndent5   DiagnosticInfo
hi link SnacksIndent4   DiagnosticError
hi link SnacksIndent3   DiagnosticWarn
hi link SnacksIndent2   DiagnosticHint
hi link SnacksIndentScope  Special
hi link SnacksIndentChunk  SnacksIndentScope
hi link SnacksIndent1   DiagnosticInfo
hi link SnacksIndent    NonText
hi link SnacksIndentBlank  SnacksIndent
hi link SnacksIndent8   DiagnosticError
hi link SnacksIndent7   DiagnosticWarn
hi link SnacksIndent6   DiagnosticHint
hi nvim-highlight-colors-background2E34402E3440  guifg=#ffffff guibg=#2e3440
hi nvim-highlight-colors-background10AF9810AF98  guifg=#000000 guibg=#10af98
hi nvim-highlight-colors-background4C56694C5669  guifg=#ffffff guibg=#4c5669
hi nvim-highlight-colors-background62573F62573F  guifg=#ffffff guibg=#62573f
hi nvim-highlight-colors-background303340303340  guifg=#ffffff guibg=#303340
" hi @spell          cleared
hi lualine_x_filetype_DevIconLua_normal  gui=nocombine guifg=#51a0cf guibg=#2a2a37
hi lualine_x_filetype_DevIconLua_insert  gui=nocombine guifg=#51a0cf guibg=#2a2a37
hi lualine_x_filetype_DevIconLua_visual  gui=nocombine guifg=#51a0cf guibg=#2a2a37
hi lualine_x_filetype_DevIconLua_replace  gui=nocombine guifg=#51a0cf guibg=#2a2a37
hi lualine_x_filetype_DevIconLua_command  gui=nocombine guifg=#51a0cf guibg=#2a2a37
hi lualine_x_filetype_DevIconLua_terminal  gui=nocombine guifg=#51a0cf guibg=#2a2a37
hi lualine_x_filetype_DevIconLua_inactive  gui=nocombine guifg=#51a0cf guibg=#16161d
hi lualine_transitional_lualine_b_diff_added_normal_to_lualine_c_normal  gui=nocombine guifg=#252535 guibg=#2a2a37
hi lualine_transitional_lualine_b_diagnostics_warn_normal_to_lualine_c_normal  gui=nocombine guifg=#252535 guibg=#2a2a37
hi lualine_transitional_lualine_a_command_to_lualine_b_command  gui=nocombine guifg=#c0a36e guibg=#1f1f28
hi lualine_transitional_lualine_b_diagnostics_warn_command_to_lualine_c_normal  gui=nocombine guifg=#1f1f28 guibg=#2a2a37
hi lualine_transitional_lualine_b_command_to_lualine_c_normal  gui=nocombine guifg=#1f1f28 guibg=#2a2a37
