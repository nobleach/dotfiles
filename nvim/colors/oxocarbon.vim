set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif


hi SpecialKey      guifg=#525252
hi EndOfBuffer     guifg=#262626
hi TermCursor      guifg=#161616 guibg=#d0d0d0
hi NonText         guifg=#393939
hi Directory       guifg=#3ddbd9
hi ErrorMsg        guifg=#ee5396
hi IncSearch       guifg=#ffffff guibg=#ee5396
hi Search          guifg=#262626 guibg=#3ddbd9
hi CurSearch       ctermfg=0 ctermbg=11 guifg=NvimDarkGrey1 guibg=NvimLightYellow
hi MoreMsg         guifg=#3ddbd9
hi ModeMsg         guifg=#d0d0d0
hi LineNr          guifg=#525252 guibg=#161616
hi link LineNrAbove     LineNr
hi link LineNrBelow     LineNr
hi CursorLineNr    guifg=#d0d0d0
hi link CursorLineSign  SignColumn
hi link CursorLineFold  FoldColumn
hi Question        guifg=#d0d0d0
hi StatusLine      guifg=#d0d0d0 guibg=#161616
hi StatusLineNC    guifg=#d0d0d0 guibg=#262626
hi WinSeparator    guifg=#262626 guibg=#161616
hi VertSplit       guifg=#262626 guibg=#161616
hi Title           guifg=#d0d0d0
hi Visual          guibg=#393939
" hi VisualNC        cleared
hi WarningMsg      guifg=#be95ff
hi WildMenu        guifg=#3ddbd9 guibg=#262626
hi Folded          guifg=#393939 guibg=#262626
hi FoldColumn      guifg=#262626 guibg=#161616
hi DiffAdd         guibg=#122f2f
hi DiffChange      guibg=#222a39
hi DiffDelete      guibg=#361c28
hi DiffText        guibg=#2f3f5c
hi SignColumn      guifg=#262626 guibg=#161616
" hi Conceal         cleared
hi SpellBad        cterm=undercurl gui=undercurl guisp=NvimLightRed
hi SpellCap        cterm=undercurl gui=undercurl guisp=NvimLightYellow
hi SpellRare       cterm=undercurl gui=undercurl guisp=NvimLightCyan
hi SpellLocal      cterm=undercurl gui=undercurl guisp=NvimLightGreen
hi Pmenu           guifg=#d0d0d0 guibg=#262626
hi PmenuSel        guifg=#3ddbd9 guibg=#393939
hi PmenuMatch      cterm=bold gui=bold
hi PmenuMatchSel   cterm=bold gui=bold
hi link PmenuKind       Pmenu
hi link PmenuKindSel    PmenuSel
hi link PmenuExtra      Pmenu
hi link PmenuExtraSel   PmenuSel
hi PmenuSbar       guifg=#d0d0d0 guibg=#262626
hi PmenuThumb      guifg=#3ddbd9 guibg=#393939
hi TabLine        guifg=#ede0ce guibg=NONE gui=NONE
hi TabLineSel     guifg=#161616 guibg=#3ddbd9 gui=NONE
hi TabLineFill    guifg=#2B2A27 guibg=NONE gui=NONE
hi CursorColumn    guibg=#262626
hi CursorLine      guibg=#262626
hi ColorColumn     guibg=#262626
hi QuickFixLine    guibg=#262626
hi link Whitespace      NonText
hi NormalNC        guifg=#f2f2f2 guibg=#161616
hi link MsgSeparator    StatusLine
hi NormalFloat     guifg=#f2f2f2 guibg=#131313
" hi MsgArea         cleared
hi FloatBorder     guifg=#131313 guibg=#131313
hi WinBar          cterm=bold gui=bold guifg=NvimLightGrey4 guibg=NvimDarkGrey1
hi WinBarNC        cterm=bold guifg=NvimLightGrey4 guibg=NvimDarkGrey1
hi Cursor          guifg=#161616 guibg=#d0d0d0
hi link FloatTitle      Title
hi link FloatFooter     FloatTitle
hi link StatusLineTerm  StatusLine
hi link StatusLineTermNC  StatusLineNC
hi RedrawDebugNormal  cterm=reverse gui=reverse
hi Underlined      cterm=underline gui=underline
hi lCursor         guifg=bg guibg=fg
hi link CursorIM        Cursor
" hi ComplMatchIns   cleared
hi Substitute      guifg=#262626 guibg=#3ddbd9
hi VisualNOS       guibg=#393939
hi Normal          guifg=#d0d0d0 guibg=#161616
hi Character       guifg=#be95ff
hi Constant        guifg=#d0d0d0
hi Number          guifg=#82cfff
hi Boolean         guifg=#78a9ff
hi link Float           Number
hi Conditional     guifg=#78a9ff
hi Statement       guifg=#78a9ff
hi Repeat          guifg=#78a9ff
hi Label           guifg=#78a9ff
hi Keyword         guifg=#78a9ff
hi Exception       guifg=#78a9ff
hi Include         guifg=#78a9ff
hi PreProc         guifg=#78a9ff
hi Define          guifg=#78a9ff
hi Macro           guifg=#08bdba
hi link PreCondit       PreProc
hi StorageClass    guifg=#78a9ff
hi Type            guifg=#78a9ff
hi Structure       guifg=#78a9ff
hi Typedef         guifg=#78a9ff
hi Tag             guifg=#d0d0d0
hi Special         guifg=#d0d0d0
hi SpecialChar     guifg=#d0d0d0
hi SpecialComment  guifg=#3ddbd9
hi Debug           guifg=#42be65
hi link Ignore          Normal
hi LspCodeLens     guibg=#525252
hi link LspCodeLensSeparator  LspCodeLens
hi link LspInlayHint    NonText
hi LspReferenceRead  guibg=#525252
hi LspReferenceText  guibg=#525252
hi LspReferenceWrite  guibg=#525252
hi link LspReferenceTarget  LspReferenceText
hi LspSignatureActiveParameter  guifg=#3ddbd9
hi link SnippetTabstop  Visual
hi link DiagnosticFloatingError  DiagnosticError
hi DiagnosticError  guifg=#ee5396
hi link DiagnosticFloatingWarn  DiagnosticWarn
hi DiagnosticWarn  guifg=#be95ff
hi link DiagnosticFloatingInfo  DiagnosticInfo
hi DiagnosticInfo  guifg=#78a9ff
hi link DiagnosticFloatingHint  DiagnosticHint
hi DiagnosticHint  guifg=#d0d0d0
hi link DiagnosticFloatingOk  DiagnosticOk
hi DiagnosticOk    ctermfg=10 guifg=NvimLightGreen
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
hi link DiagnosticSignError  DiagnosticError
hi link DiagnosticSignWarn  DiagnosticWarn
hi link DiagnosticSignInfo  DiagnosticInfo
hi link DiagnosticSignHint  DiagnosticHint
hi link DiagnosticSignOk  DiagnosticOk
hi link DiagnosticUnnecessary  Comment
hi Comment         cterm=italic gui=italic guifg=#525252
hi @variable       guifg=#d0d0d0
hi @variable.builtin  guifg=#d0d0d0
hi link @variable.parameter.builtin  Special
hi @constant       guifg=#be95ff
hi @constant.builtin  guifg=#08bdba
hi link @module         Structure
hi link @module.builtin  Special
hi @label          guifg=#82cfff
hi link @string         String
hi String          guifg=#be95ff
hi link @string.regexp  @string.special
hi link @string.special  SpecialChar
hi @string.escape  guifg=#82cfff
hi link @string.special.url  Underlined
hi link @character      Character
hi link @character.special  SpecialChar
hi link @boolean        Boolean
hi link @number         Number
hi link @number.float   Float
hi link @type           Type
hi link @type.builtin   Type
hi @attribute      guifg=#82cfff
hi link @attribute.builtin  Special
hi @property       guifg=#ee5396
hi Identifier      guifg=#d0d0d0
hi @function       cterm=bold gui=bold guifg=#ff7eb6
hi Function        guifg=#3ddbd9
hi @function.builtin  guifg=#ff7eb6
hi @constructor    guifg=#78a9ff
hi link @operator       Operator
hi Operator        guifg=#78a9ff
hi @keyword        guifg=#78a9ff
hi link @punctuation    Delimiter
hi Delimiter       guifg=NvimLightGrey2
hi @punctuation.special  guifg=#3ddbd9
hi link @comment        Comment
hi link @comment.error  DiagnosticError
hi link @comment.warning  DiagnosticWarn
hi link @comment.note   DiagnosticInfo
hi link @comment.todo   Todo
hi Todo            guifg=#42be65
hi link @markup         Special
hi @markup.strong  cterm=bold gui=bold
hi @markup.italic  cterm=italic gui=italic
hi @markup.strikethrough  cterm=strikethrough gui=strikethrough
hi @markup.underline  cterm=underline gui=underline
hi link @markup.heading  Title
hi link @markup.link    Underlined
" hi @diff           cleared
hi link @diff.plus      Added
hi Added           ctermfg=10 guifg=NvimLightGreen
hi link @diff.minus     Removed
hi Removed         ctermfg=9 guifg=NvimLightRed
hi link @diff.delta     Changed
hi Changed         ctermfg=14 guifg=NvimLightCyan
hi @tag            guifg=#78a9ff
hi link @tag.builtin    Special
hi @markup.heading.1.delimiter.vimdoc  cterm=underdouble,nocombine gui=underdouble,nocombine guifg=bg guibg=bg guisp=fg
hi @markup.heading.2.delimiter.vimdoc  cterm=underline,nocombine gui=underline,nocombine guifg=bg guibg=bg guisp=fg
" hi @lsp            cleared
hi link @lsp.type.class  Structure
hi link @lsp.type.comment  @comment
hi link @lsp.type.decorator  Decorator
hi link @lsp.type.enum  @type
hi link @lsp.type.enumMember  @constant
hi link @lsp.type.event  @type
hi link @lsp.type.function  @function
hi link @lsp.type.interface  @type
hi link @lsp.type.keyword  @keyword
hi link @lsp.type.macro  Macro
hi @constant.macro  guifg=#08bdba
hi link @lsp.type.method  @function
hi link @lsp.type.modifier  @type.qualifier
hi link @lsp.type.namespace  @namespace
hi link @lsp.type.number  @number
hi link @lsp.type.operator  @operator
hi link @lsp.type.parameter  @parameter
hi link @lsp.type.property  @property
hi link @lsp.type.regexp  @string.regexp
hi link @lsp.type.string  @string
hi link @lsp.type.struct  Structure
hi link @lsp.type.type  Type
hi link @lsp.type.typeParameter  Typedef
hi link @lsp.type.variable  @variable
hi link @lsp.mod.deprecated  DiagnosticDeprecated
hi DiagnosticDeprecated  cterm=strikethrough gui=strikethrough guisp=NvimLightRed
hi FloatShadow     ctermbg=0 guibg=NvimDarkGrey4 blend=80
hi FloatShadowThrough  ctermbg=0 guibg=NvimDarkGrey4 blend=100
hi MatchParen      cterm=underline gui=underline guibg=#393939
hi RedrawDebugClear  ctermfg=0 ctermbg=11 guibg=NvimDarkYellow
hi RedrawDebugComposed  ctermfg=0 ctermbg=10 guibg=NvimDarkGreen
hi RedrawDebugRecompose  ctermfg=0 ctermbg=9 guibg=NvimDarkRed
hi Error           guifg=#ee5396 guibg=#262626
hi DiagnosticUnderlineError  cterm=undercurl gui=undercurl guifg=#ee5396
hi DiagnosticUnderlineWarn  cterm=undercurl gui=undercurl guifg=#be95ff
hi DiagnosticUnderlineInfo  cterm=undercurl gui=undercurl guifg=#d0d0d0
hi DiagnosticUnderlineHint  cterm=undercurl gui=undercurl guifg=#d0d0d0
hi DiagnosticUnderlineOk  cterm=underline gui=underline guisp=NvimLightGreen
hi NvimInternalError  guifg=#161616 guibg=#3ddbd9
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
hi link DebugPrintLine  Debug
hi link TabLineProject  Pmenu
" hi TabLineProjectEdge  cleared
" hi TabLineEdge     cleared
" hi TabLineSelEdge  cleared
hi TabLineIconModified  ctermfg=2 guifg=#cf6a4c
hi TabLineIconModifiedSel  ctermfg=2 guifg=#cf6a4c
hi lualine_transparent  gui=nocombine guifg=#d0d0d0 guibg=#161616
" hi lualine_c_replace  cleared
hi lualine_b_replace  gui=nocombine guifg=#3ddbd9 guibg=#161616
hi lualine_a_replace  gui=nocombine guifg=#393939 guibg=#ee5396
" hi lualine_c_visual  cleared
hi lualine_b_visual  gui=nocombine guifg=#d0d0d0 guibg=#161616
hi lualine_a_visual  gui=nocombine guifg=#393939 guibg=#be95ff
" hi lualine_c_inactive  cleared
hi lualine_b_inactive  gui=nocombine guifg=#d0d0d0 guibg=#161616
hi lualine_a_inactive  gui=nocombine guifg=#393939 guibg=#78a9ff
" hi lualine_c_insert  cleared
hi lualine_b_insert  gui=nocombine guifg=#d0d0d0 guibg=#161616
hi lualine_a_insert  gui=nocombine guifg=#393939 guibg=#ff7eb6
" hi lualine_c_command  cleared
" hi lualine_b_command  cleared
hi lualine_a_command  gui=nocombine guifg=#393939 guibg=#42be65
" hi lualine_c_terminal  cleared
" hi lualine_b_terminal  cleared
" hi lualine_a_terminal  cleared
hi lualine_c_normal  gui=nocombine guifg=#d0d0d0 guibg=#161616
hi lualine_b_normal  gui=nocombine guifg=#d0d0d0 guibg=#161616
hi lualine_a_normal  gui=nocombine guifg=#393939 guibg=#78a9ff
hi lualine_b_diff_added_normal  gui=nocombine guifg=#08bdba guibg=#161616
hi lualine_b_diff_added_insert  gui=nocombine guifg=#08bdba guibg=#161616
hi lualine_b_diff_added_visual  gui=nocombine guifg=#08bdba guibg=#161616
hi lualine_b_diff_added_replace  gui=nocombine guifg=#08bdba guibg=#161616
hi lualine_b_diff_added_command  gui=nocombine guifg=#08bdba guibg=#161616
hi lualine_b_diff_added_terminal  gui=nocombine guifg=#08bdba guibg=#161616
hi lualine_b_diff_added_inactive  gui=nocombine guifg=#08bdba guibg=#161616
hi lualine_b_diff_modified_normal  gui=nocombine guifg=#78a9ff guibg=#161616
hi lualine_b_diff_modified_insert  gui=nocombine guifg=#78a9ff guibg=#161616
hi lualine_b_diff_modified_visual  gui=nocombine guifg=#78a9ff guibg=#161616
hi lualine_b_diff_modified_replace  gui=nocombine guifg=#78a9ff guibg=#161616
hi lualine_b_diff_modified_command  gui=nocombine guifg=#78a9ff guibg=#161616
hi lualine_b_diff_modified_terminal  gui=nocombine guifg=#78a9ff guibg=#161616
hi lualine_b_diff_modified_inactive  gui=nocombine guifg=#78a9ff guibg=#161616
hi lualine_b_diff_removed_normal  gui=nocombine guifg=#ee5396 guibg=#161616
hi lualine_b_diff_removed_insert  gui=nocombine guifg=#ee5396 guibg=#161616
hi lualine_b_diff_removed_visual  gui=nocombine guifg=#ee5396 guibg=#161616
hi lualine_b_diff_removed_replace  gui=nocombine guifg=#ee5396 guibg=#161616
hi lualine_b_diff_removed_command  gui=nocombine guifg=#ee5396 guibg=#161616
hi lualine_b_diff_removed_terminal  gui=nocombine guifg=#ee5396 guibg=#161616
hi lualine_b_diff_removed_inactive  gui=nocombine guifg=#ee5396 guibg=#161616
hi lualine_b_diagnostics_error_normal  gui=nocombine guifg=#ee5396 guibg=#161616
hi lualine_b_diagnostics_error_insert  gui=nocombine guifg=#ee5396 guibg=#161616
hi lualine_b_diagnostics_error_visual  gui=nocombine guifg=#ee5396 guibg=#161616
hi lualine_b_diagnostics_error_replace  gui=nocombine guifg=#ee5396 guibg=#161616
hi lualine_b_diagnostics_error_command  gui=nocombine guifg=#ee5396 guibg=#161616
hi lualine_b_diagnostics_error_terminal  gui=nocombine guifg=#ee5396 guibg=#161616
hi lualine_b_diagnostics_error_inactive  gui=nocombine guifg=#ee5396 guibg=#161616
hi lualine_b_diagnostics_warn_normal  gui=nocombine guifg=#be95ff guibg=#161616
hi lualine_b_diagnostics_warn_insert  gui=nocombine guifg=#be95ff guibg=#161616
hi lualine_b_diagnostics_warn_visual  gui=nocombine guifg=#be95ff guibg=#161616
hi lualine_b_diagnostics_warn_replace  gui=nocombine guifg=#be95ff guibg=#161616
hi lualine_b_diagnostics_warn_command  gui=nocombine guifg=#be95ff guibg=#161616
hi lualine_b_diagnostics_warn_terminal  gui=nocombine guifg=#be95ff guibg=#161616
hi lualine_b_diagnostics_warn_inactive  gui=nocombine guifg=#be95ff guibg=#161616
hi lualine_b_diagnostics_info_normal  gui=nocombine guifg=#78a9ff guibg=#161616
hi lualine_b_diagnostics_info_insert  gui=nocombine guifg=#78a9ff guibg=#161616
hi lualine_b_diagnostics_info_visual  gui=nocombine guifg=#78a9ff guibg=#161616
hi lualine_b_diagnostics_info_replace  gui=nocombine guifg=#78a9ff guibg=#161616
hi lualine_b_diagnostics_info_command  gui=nocombine guifg=#78a9ff guibg=#161616
hi lualine_b_diagnostics_info_terminal  gui=nocombine guifg=#78a9ff guibg=#161616
hi lualine_b_diagnostics_info_inactive  gui=nocombine guifg=#78a9ff guibg=#161616
hi lualine_b_diagnostics_hint_normal  gui=nocombine guifg=#d0d0d0 guibg=#161616
hi lualine_b_diagnostics_hint_insert  gui=nocombine guifg=#d0d0d0 guibg=#161616
hi lualine_b_diagnostics_hint_visual  gui=nocombine guifg=#d0d0d0 guibg=#161616
hi lualine_b_diagnostics_hint_replace  gui=nocombine guifg=#d0d0d0 guibg=#161616
hi lualine_b_diagnostics_hint_command  gui=nocombine guifg=#d0d0d0 guibg=#161616
hi lualine_b_diagnostics_hint_terminal  gui=nocombine guifg=#d0d0d0 guibg=#161616
hi lualine_b_diagnostics_hint_inactive  gui=nocombine guifg=#d0d0d0 guibg=#161616
hi NvimTreeFolderArrowClosed  guifg=#3fc5ff
hi NvimTreeFolderArrowOpen  guifg=#3fc5ff
hi NvimTreeFolderIcon  guifg=#ff7eb6
hi NvimTreeWindowPicker  ctermfg=15 ctermbg=4 gui=bold guifg=#ededed guibg=#4493c8
hi link NvimTreeGitFolderDeletedHL  NvimTreeGitFileDeletedHL
" hi NvimTreeFolderDeleted  cleared
hi link NvimTreeGitFileStagedHL  NvimTreeGitStagedIcon
" hi NvimTreeFileStaged  cleared
hi link NvimTreeGitFileRenamedHL  NvimTreeGitRenamedIcon
" hi NvimTreeFileRenamed  cleared
hi link NvimTreeGitFileNewHL  NvimTreeGitNewIcon
" hi NvimTreeFileNew  cleared
hi link NvimTreeGitFileMergeHL  NvimTreeGitMergeIcon
" hi NvimTreeFileMerge  cleared
hi link NvimTreeGitFileIgnoredHL  NvimTreeGitIgnoredIcon
" hi NvimTreeFileIgnored  cleared
hi link NvimTreeGitFileDirtyHL  NvimTreeGitDirtyIcon
" hi NvimTreeFileDirty  cleared
hi link NvimTreeGitFileDeletedHL  NvimTreeGitDeletedIcon
" hi NvimTreeFileDeleted  cleared
hi link NvimTreeGitStagedIcon  Constant
" hi NvimTreeGitStaged  cleared
hi link NvimTreeGitRenamedIcon  PreProc
" hi NvimTreeGitRenamed  cleared
hi link NvimTreeGitNewIcon  PreProc
" hi NvimTreeGitNew  cleared
hi link NvimTreeGitMergeIcon  Constant
" hi NvimTreeGitMerge  cleared
hi link NvimTreeGitIgnoredIcon  Comment
" hi NvimTreeGitIgnored  cleared
hi link NvimTreeGitDirtyIcon  Statement
" hi NvimTreeGitDirty  cleared
hi link NvimTreeGitDeletedIcon  Statement
" hi NvimTreeGitDeleted  cleared
hi link NvimTreeOpenedHL  Special
" hi NvimTreeOpenedFile  cleared
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
hi link NvimTreeGitFolderMergeHL  NvimTreeGitFileMergeHL
" hi NvimTreeFolderMerge  cleared
hi link NvimTreeDiagnosticErrorIcon  DiagnosticError
" hi NvimTreeLspDiagnosticsError  cleared
hi link NvimTreeGitFolderNewHL  NvimTreeGitFileNewHL
" hi NvimTreeFolderNew  cleared
hi link NvimTreeGitFolderIgnoredHL  NvimTreeGitFileIgnoredHL
" hi NvimTreeFolderIgnored  cleared
hi link NvimTreeGitFolderRenamedHL  NvimTreeGitFileRenamedHL
" hi NvimTreeFolderRenamed  cleared
hi link NvimTreeGitFolderDirtyHL  NvimTreeGitFileDirtyHL
" hi NvimTreeFolderDirty  cleared
hi link NvimTreeGitFolderStagedHL  NvimTreeGitFileStagedHL
" hi NvimTreeFolderStaged  cleared
hi NvimTreeNormal  guifg=#d0d0d0 guibg=#161616
hi link NvimTreeNormalFloat  NormalFloat
hi link NvimTreeNormalFloatBorder  FloatBorder
hi link NvimTreeNormalNC  NvimTreeNormal
hi link NvimTreeLineNr  LineNr
hi NvimTreeWinSeparator  guifg=#161616 guibg=#161616
hi link NvimTreeEndOfBuffer  EndOfBuffer
hi link NvimTreePopup   Normal
hi link NvimTreeSignColumn  NvimTreeNormal
hi link NvimTreeCursorColumn  CursorColumn
hi link NvimTreeCursorLine  CursorLine
hi link NvimTreeCursorLineNr  CursorLineNr
hi link NvimTreeStatusLine  StatusLine
hi link NvimTreeStatusLineNC  StatusLineNC
hi link NvimTreeExecFile  Question
hi NvimTreeImageFile  guifg=#ff7eb6
hi link NvimTreeSpecialFile  Title
hi link NvimTreeSymlink  Underlined
hi link NvimTreeRootFolder  Title
hi NvimTreeFolderName  guifg=#78a9ff
hi NvimTreeEmptyFolderName  guifg=#82cfff
hi NvimTreeOpenedFolderName  guifg=#82cfff
hi link NvimTreeSymlinkFolderName  Directory
hi link NvimTreeFileIcon  NvimTreeNormal
hi link NvimTreeSymlinkIcon  NvimTreeNormal
hi link NvimTreeOpenedFolderIcon  NvimTreeFolderIcon
hi link NvimTreeClosedFolderIcon  NvimTreeFolderIcon
hi NvimTreeIndentMarker  guifg=#393939
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
hi DevIconBlade    ctermfg=203 guifg=#f05340
hi DevIconAzureCli  ctermfg=32 guifg=#0078d4
hi DevIconAsc      ctermfg=242 guifg=#576d7f
hi DevIconStyl     ctermfg=113 guifg=#8dc149
hi DevIconStp      ctermfg=101 guifg=#839463
hi DevIconApp      ctermfg=124 guifg=#9f0500
hi DevIcon3DObjectFile  ctermfg=102 guifg=#888888
hi DevIconapk      ctermfg=35 guifg=#34a853
hi DevIconAss      ctermfg=214 guifg=#ffb713
hi DevIconR        ctermfg=25 guifg=#2266ba
hi DevIconMonkeysAudio  ctermfg=39 guifg=#00afff
hi DevIconAndroid  ctermfg=35 guifg=#34a853
hi DevIconAudioInterchangeFileFormat  ctermfg=39 guifg=#00afff
hi DevIconAdvancedAudioCoding  ctermfg=39 guifg=#00afff
hi DevIcon7z       ctermfg=214 guifg=#eca517
hi DevIcon3gp      ctermfg=208 guifg=#fd971f
hi DevIconConf     ctermfg=66 guifg=#6d8086
hi DevIconSln      ctermfg=98 guifg=#854cc7
hi DevIconCpp      ctermfg=74 guifg=#519aba
hi DevIconZorin    ctermfg=39 guifg=#14a1e8
hi DevIconXeroLinux  ctermfg=104 guifg=#888fe2
hi DevIconSolidity  ctermfg=74 guifg=#519aba
hi DevIconVanillaOS  ctermfg=214 guifg=#fabd4d
hi DevIconTumbleweed  ctermfg=37 guifg=#35b9ab
hi DevIconJava     ctermfg=167 guifg=#cc3e44
hi DevIconTrisquelGNULinux  ctermfg=25 guifg=#0f58b6
hi DevIconTails    ctermfg=54 guifg=#56347c
hi DevIconXorgConf  ctermfg=196 guifg=#e54d18
hi DevIconSolus    ctermfg=239 guifg=#4b5163
hi DevIconSlackware  ctermfg=61 guifg=#475fa9
hi DevIconGz       ctermfg=214 guifg=#eca517
hi DevIconTerminal  ctermfg=34 guifg=#31b53e
hi DevIconSabayon  ctermfg=251 guifg=#c6c6c6
hi DevIconBashrc   ctermfg=113 guifg=#89e051
hi DevIconHurl     ctermfg=198 guifg=#ff0288
hi DevIconM3u8     ctermfg=211 guifg=#ed95ae
hi DevIconM3u      ctermfg=211 guifg=#ed95ae
hi DevIconcuda     ctermfg=113 guifg=#89e051
hi DevIconcudah    ctermfg=140 guifg=#a074c4
hi DevIconFeature  ctermfg=34 guifg=#00a818
hi DevIconBashProfile  ctermfg=113 guifg=#89e051
hi DevIconCsv      ctermfg=113 guifg=#89e051
hi DevIconCss      ctermfg=91 guifg=#663399
hi DevIconPls      ctermfg=211 guifg=#ed95ae
hi DevIconRazorPage  ctermfg=56 guifg=#512bd4
hi DevIconLibreOfficeWriter  ctermfg=81 guifg=#2dcbfd
hi DevIconLibreOfficeCalc  ctermfg=119 guifg=#78fc4e
hi DevIconLibreOfficeImpress  ctermfg=215 guifg=#fe9c45
hi DevIconLibreOfficeGraphics  ctermfg=227 guifg=#fffb57
hi DevIconCrystal  ctermfg=251 guifg=#c8c8c8
hi DevIconFIGletFontFormat  ctermfg=255 guifg=#ececec
hi DevIconFIGletFontControl  ctermfg=255 guifg=#ececec
hi DevIconFreeLosslessAudioCodec  ctermfg=24 guifg=#0075aa
hi DevIconCPlusPlusModule  ctermfg=204 guifg=#f34b7d
hi DevIconHpp      ctermfg=140 guifg=#a074c4
hi DevIconHxx      ctermfg=140 guifg=#a074c4
hi DevIconMdx      ctermfg=74 guifg=#519aba
hi DevIconFdmdownload  ctermfg=43 guifg=#44cda8
hi DevIconCPlusPlus  ctermfg=204 guifg=#f34b7d
hi DevIconFreeCAD  ctermfg=160 guifg=#cb333b
hi DevIconPdf      ctermfg=124 guifg=#b30b00
hi DevIconSha256   ctermfg=103 guifg=#8c86af
hi DevIconFusion360  ctermfg=101 guifg=#839463
hi DevIconFortran  ctermfg=97 guifg=#734f96
hi DevIconVala     ctermfg=91 guifg=#7b3db9
hi DevIconExe      ctermfg=124 guifg=#9f0500
hi DevIconCobol    ctermfg=25 guifg=#005ca5
hi DevIconClojureJS  ctermfg=74 guifg=#519aba
hi DevIconEpub     ctermfg=215 guifg=#eab16d
hi DevIconClojure  ctermfg=113 guifg=#8dc149
hi DevIconEmbeddedOpenTypeFont  ctermfg=255 guifg=#ececec
hi DevIconElisp    ctermfg=97 guifg=#8172be
hi DevIconZig      ctermfg=172 guifg=#f69a1b
hi DevIconFennel   ctermfg=230 guifg=#fff3d7
hi DevIconLib      ctermfg=52 guifg=#4d2c0b
hi DevIconYml      ctermfg=66 guifg=#6d8086
hi DevIconEbook    ctermfg=215 guifg=#eab16d
hi DevIconAutoCADDxf  ctermfg=101 guifg=#839463
hi DevIconAutoCADDwg  ctermfg=101 guifg=#839463
hi DevIconHrl      ctermfg=163 guifg=#b83998
hi DevIconErl      ctermfg=163 guifg=#b83998
hi DevIconNfo      ctermfg=230 guifg=#ffffcd
hi DevIconDownload  ctermfg=43 guifg=#44cda8
hi DevIconElm      ctermfg=74 guifg=#519aba
hi DevIconExs      ctermfg=140 guifg=#a074c4
hi DevIconVsix     ctermfg=98 guifg=#854cc7
hi DevIconElf      ctermfg=124 guifg=#9f0500
hi DevIconLeex     ctermfg=140 guifg=#a074c4
hi DevIconDockerIgnore  ctermfg=68 guifg=#458ee6
hi DevIconEex      ctermfg=140 guifg=#a074c4
hi DevIconLabView  ctermfg=220 guifg=#fec60a
hi DevIconScss     ctermfg=204 guifg=#f55385
hi DevIconImg      ctermfg=181 guifg=#d0bec8
hi DevIconBazelWorkspace  ctermfg=113 guifg=#89e051
hi DevIconVerilog  ctermfg=28 guifg=#019833
hi DevIconScheme   ctermfg=255 guifg=#eeeeee
hi DevIconAwk      ctermfg=240 guifg=#4d5a5e
hi DevIconScala    ctermfg=167 guifg=#cc3e44
hi DevIconsbt      ctermfg=167 guifg=#cc3e44
hi DevIconSass     ctermfg=204 guifg=#f55385
hi DevIconGv       ctermfg=24 guifg=#30638e
hi DevIconDot      ctermfg=24 guifg=#30638e
hi DevIconRs       ctermfg=216 guifg=#dea584
hi DevIconIni      ctermfg=66 guifg=#6d8086
hi DevIconRakefile  ctermfg=52 guifg=#701516
hi DevIconGemspec  ctermfg=52 guifg=#701516
hi DevIconBat      ctermfg=191 guifg=#c1f12e
hi DevIconTrueTypeFont  ctermfg=255 guifg=#ececec
hi DevIconDesktopEntry  ctermfg=54 guifg=#563d7c
hi DevIconRobotsTxt  ctermfg=60 guifg=#5d7096
hi DevIconTypoScriptConfig  ctermfg=208 guifg=#ff8700
hi DevIconTwig     ctermfg=113 guifg=#8dc149
hi DevIconMts      ctermfg=74 guifg=#519aba
hi DevIconCts      ctermfg=74 guifg=#519aba
hi DevIconTsx      ctermfg=26 guifg=#1354bf
hi DevIconTorrent  ctermfg=43 guifg=#44cda8
hi DevIconBackup   ctermfg=66 guifg=#6d8086
hi DevIconHexadecimal  ctermfg=27 guifg=#2e63ff
hi DevIconCue      ctermfg=211 guifg=#ed95ae
hi DevIconLrc      ctermfg=214 guifg=#ffb713
hi DevIconHeex     ctermfg=140 guifg=#a074c4
hi DevIconVlang    ctermfg=67 guifg=#5d87bf
hi DevIconTypeScriptReactTest  ctermfg=26 guifg=#1354bf
hi DevIconTxt      ctermfg=113 guifg=#89e051
hi DevIconTestTs   ctermfg=74 guifg=#519aba
hi DevIconScalaScript  ctermfg=167 guifg=#cc3e44
hi DevIconHs       ctermfg=140 guifg=#a074c4
hi DevIconTestJs   ctermfg=185 guifg=#cbcb41
hi DevIconPatch    ctermfg=239 guifg=#41535b
hi DevIconProlog   ctermfg=179 guifg=#e4b854
hi DevIconReScriptInterface  ctermfg=204 guifg=#f55385
hi DevIconVHDL     ctermfg=28 guifg=#019833
hi DevIconHbs      ctermfg=202 guifg=#f0772b
hi DevIconReScript  ctermfg=167 guifg=#cc3e44
hi DevIconLess     ctermfg=54 guifg=#563d7c
hi DevIconHaml     ctermfg=255 guifg=#eaeae1
hi DevIconTypeScript  ctermfg=74 guifg=#519aba
hi DevIconSvgz     ctermfg=214 guifg=#ffb13b
hi DevIconVRML     ctermfg=102 guifg=#888888
hi DevIconVue      ctermfg=113 guifg=#8dc149
hi DevIconTypst    ctermfg=37 guifg=#0dbcc0
hi DevIconSig      ctermfg=166 guifg=#e37933
hi DevIconKsh      ctermfg=240 guifg=#4d5a5e
hi DevIconGradle   ctermfg=24 guifg=#005f87
hi DevIconGentooBuild  ctermfg=60 guifg=#4c416e
hi DevIconLocalization  ctermfg=31 guifg=#2596be
hi DevIconGraphQL  ctermfg=199 guifg=#e535ab
hi DevIconBash     ctermfg=113 guifg=#89e051
hi DevIconStorybookVue  ctermfg=204 guifg=#ff4785
hi DevIconThunderbird  ctermfg=33 guifg=#137be1
hi DevIconStorybookTsx  ctermfg=204 guifg=#ff4785
hi DevIconStorybookTypeScript  ctermfg=204 guifg=#ff4785
hi DevIconStorybookSvelte  ctermfg=204 guifg=#ff4785
hi DevIconRss      ctermfg=215 guifg=#fb9d3b
hi DevIconStorybookMjs  ctermfg=204 guifg=#ff4785
hi DevIconDockerfile  ctermfg=68 guifg=#458ee6
hi DevIconStorybookJsx  ctermfg=204 guifg=#ff4785
hi DevIconCSharpProject  ctermfg=56 guifg=#512bd4
hi DevIconStorybookJavaScript  ctermfg=204 guifg=#ff4785
hi DevIconStep     ctermfg=101 guifg=#839463
hi DevIconSte      ctermfg=101 guifg=#839463
hi DevIconTmux     ctermfg=34 guifg=#14ba19
hi DevIconJpegXl   ctermfg=140 guifg=#a074c4
hi DevIconGDScript  ctermfg=66 guifg=#6d8086
hi DevIconGodotTextResource  ctermfg=66 guifg=#6d8086
hi DevIconGodotTextScene  ctermfg=66 guifg=#6d8086
hi DevIconMotoko   ctermfg=135 guifg=#9772fb
hi DevIconTypeScriptReactSpec  ctermfg=26 guifg=#1354bf
hi DevIconFsx      ctermfg=74 guifg=#519aba
hi DevIconFsi      ctermfg=74 guifg=#519aba
hi DevIconSpecJs   ctermfg=185 guifg=#cbcb41
hi DevIconToml     ctermfg=124 guifg=#9c4221
hi DevIconSolveSpace  ctermfg=101 guifg=#839463
hi DevIconJl       ctermfg=133 guifg=#a270ba
hi DevIconLibrecadFontFile  ctermfg=255 guifg=#ececec
hi DevIconSolidWorksPrt  ctermfg=101 guifg=#839463
hi DevIconJson5    ctermfg=185 guifg=#cbcb41
hi DevIconSolidWorksAsm  ctermfg=101 guifg=#839463
hi DevIconLock     ctermfg=250 guifg=#bbbbbb
hi DevIconSketchUp  ctermfg=101 guifg=#839463
hi DevIconSha512   ctermfg=103 guifg=#8c86af
hi DevIconKrita    ctermfg=201 guifg=#f245fb
hi DevIconNotebook  ctermfg=208 guifg=#f57d01
hi DevIconSha384   ctermfg=103 guifg=#8c86af
hi DevIconLinuxKernelObject  ctermfg=253 guifg=#dcddd6
hi DevIconSha224   ctermfg=103 guifg=#8c86af
hi DevIconKiCad    ctermfg=231 guifg=#ffffff
hi DevIconBSPWM    ctermfg=236 guifg=#2f2f2f
hi DevIconPsb      ctermfg=74 guifg=#519aba
hi DevIconProcfile  ctermfg=140 guifg=#a074c4
hi DevIconFsharp   ctermfg=74 guifg=#519aba
hi DevIconOpusAudioFile  ctermfg=24 guifg=#0075aa
hi DevIconKdbx     ctermfg=71 guifg=#529b34
hi DevIconCjs      ctermfg=185 guifg=#cbcb41
hi DevIconMaterial  ctermfg=163 guifg=#b83998
hi DevIconJs       ctermfg=185 guifg=#cbcb41
hi DevIconKdb      ctermfg=71 guifg=#529b34
hi DevIconLicense  ctermfg=185 guifg=#cbcb41
hi DevIconGitLogo  ctermfg=196 guifg=#f14c28
hi DevIconHaxe     ctermfg=208 guifg=#ea8220
hi DevIconEnlightenment  ctermfg=231 guifg=#ffffff
hi DevIconGodotProject  ctermfg=66 guifg=#6d8086
hi DevIconJWM      ctermfg=32 guifg=#0078cd
hi DevIcondwm      ctermfg=31 guifg=#1177aa
hi DevIconEjs      ctermfg=185 guifg=#cbcb41
hi DevIconDropbox  ctermfg=27 guifg=#0061fe
hi DevIconGitCommit  ctermfg=196 guifg=#f54d27
hi DevIconawesome  ctermfg=59 guifg=#535d6c
hi DevIconDocx     ctermfg=26 guifg=#185abd
hi DevIconOrgMode  ctermfg=73 guifg=#77aa99
hi DevIconCson     ctermfg=185 guifg=#cbcb41
hi DevIconAPL      ctermfg=35 guifg=#24a148
hi DevIconPpt      ctermfg=160 guifg=#cb4a32
hi DevIconRar      ctermfg=214 guifg=#eca517
hi DevIconPKGBUILD  ctermfg=67 guifg=#0f94d2
hi DevIconSql      ctermfg=188 guifg=#dad8d8
hi DevIconXlsx     ctermfg=29 guifg=#207245
hi DevIconCoffee   ctermfg=185 guifg=#cbcb41
hi DevIconPrusaSlicer  ctermfg=202 guifg=#ec6b23
hi DevIconFreeCADConfig  ctermfg=160 guifg=#cb333b
hi DevIconAUTHORS  ctermfg=135 guifg=#a172ff
hi DevIconOdin     ctermfg=32 guifg=#3882d2
hi DevIconQt       ctermfg=77 guifg=#40cd52
hi DevIconSh       ctermfg=240 guifg=#4d5a5e
hi DevIconMl       ctermfg=166 guifg=#e37933
hi DevIconJson     ctermfg=185 guifg=#cbcb41
hi DevIconVim      ctermfg=28 guifg=#019833
hi DevIconReadme   ctermfg=255 guifg=#ededed
hi DevIconSub      ctermfg=214 guifg=#ffb713
hi DevIconNushell  ctermfg=36 guifg=#3aa675
hi DevIconDump     ctermfg=188 guifg=#dad8d8
hi DevIconLua      ctermfg=74 guifg=#51a0cf
hi DevIconBrewfile  ctermfg=52 guifg=#701516
hi DevIconPub      ctermfg=222 guifg=#e3c58e
hi DevIconNorg     ctermfg=32 guifg=#4878be
hi DevIconNix      ctermfg=110 guifg=#7ebae4
hi DevIconRockyLinux  ctermfg=36 guifg=#0fb37d
hi DevIconNim      ctermfg=220 guifg=#f3d400
hi DevIconPyo      ctermfg=222 guifg=#ffe291
hi DevIconMakefile  ctermfg=66 guifg=#6d8086
hi DevIconRedhat   ctermfg=196 guifg=#ee0000
hi DevIconXls      ctermfg=29 guifg=#207245
hi DevIconXcPlayground  ctermfg=166 guifg=#e37933
hi DevIconWebpack  ctermfg=74 guifg=#519aba
hi DevIconRaspberryPiOS  ctermfg=161 guifg=#be1848
hi DevIconSuo      ctermfg=98 guifg=#854cc7
hi DevIconSublime  ctermfg=166 guifg=#e37933
hi DevIconQubesOS  ctermfg=33 guifg=#3774d8
hi DevIconPptx     ctermfg=160 guifg=#cb4a32
hi DevIconMustache  ctermfg=166 guifg=#e37933
hi DevIconpostmarketOS  ctermfg=28 guifg=#009900
hi DevIconPl       ctermfg=74 guifg=#519aba
hi DevIconParrot   ctermfg=45 guifg=#54deff
hi DevIconMojo     ctermfg=196 guifg=#ff4c1f
hi DevIconParabolaGNULinuxLibre  ctermfg=103 guifg=#797dac
hi DevIconPulseCodeModulation  ctermfg=24 guifg=#0075aa
hi DevIconopenSUSE  ctermfg=70 guifg=#6fb424
hi DevIconPart     ctermfg=43 guifg=#44cda8
hi DevIconOut      ctermfg=124 guifg=#9f0500
hi DevIconObjectiveCPlusPlus  ctermfg=74 guifg=#519aba
hi DevIconNixOS    ctermfg=110 guifg=#7ab1db
hi DevIconMd       ctermfg=253 guifg=#dddddd
hi DevIconMarkdown  ctermfg=253 guifg=#dddddd
hi DevIconOggMultiplex  ctermfg=208 guifg=#fd971f
hi DevIconOggVideo  ctermfg=208 guifg=#fd971f
hi DevIconObjectiveC  ctermfg=111 guifg=#599eff
hi DevIconOggVorbis  ctermfg=24 guifg=#0075aa
hi DevIconLXLE     ctermfg=238 guifg=#474747
hi DevIconPrettierConfig  ctermfg=33 guifg=#4285f4
hi DevIconLocOS    ctermfg=214 guifg=#fab402
hi DevIconHyprland  ctermfg=37 guifg=#00aaae
hi DevIconHypridle  ctermfg=37 guifg=#00aaae
hi DevIconHtm      ctermfg=196 guifg=#e34c26
hi DevIconHtml     ctermfg=196 guifg=#e44d26
hi DevIconH        ctermfg=140 guifg=#a074c4
hi DevIconKubuntu  ctermfg=32 guifg=#007ac2
hi DevIconLibreOfficeFormula  ctermfg=204 guifg=#ff5a96
hi DevIconEx       ctermfg=140 guifg=#a074c4
hi DevIconKDEneon  ctermfg=37 guifg=#20a6a4
hi DevIconTemplate  ctermfg=178 guifg=#dbbd30
hi DevIconTempl    ctermfg=178 guifg=#dbbd30
hi DevIconKali     ctermfg=69 guifg=#2777ff
hi DevIconNswag    ctermfg=112 guifg=#85ea2d
hi DevIconIllumos  ctermfg=196 guifg=#ff430f
hi DevIconEdn      ctermfg=74 guifg=#519aba
hi DevIconD        ctermfg=124 guifg=#b03931
hi DevIconHyperbolaGNULinuxLibre  ctermfg=250 guifg=#c0c0c0
hi DevIconGuix     ctermfg=220 guifg=#ffcc00
hi DevIconSystemVerilog  ctermfg=28 guifg=#019833
hi DevIconCsh      ctermfg=240 guifg=#4d5a5e
hi DevIconGarudaLinux  ctermfg=33 guifg=#2974e1
hi DevIconSwift    ctermfg=166 guifg=#e37933
hi DevIconIgs      ctermfg=101 guifg=#839463
hi DevIconSway     ctermfg=64 guifg=#68751c
hi DevIconIges     ctermfg=101 guifg=#839463
hi DevIconSvelte   ctermfg=196 guifg=#ff3e00
hi DevIconIge      ctermfg=101 guifg=#839463
hi DevIconIfc      ctermfg=101 guifg=#839463
hi DevIconMobi     ctermfg=215 guifg=#eab16d
hi DevIconIfb      ctermfg=18 guifg=#2b2e83
hi DevIconSlnx     ctermfg=98 guifg=#854cc7
hi DevIconIcs      ctermfg=18 guifg=#2b2e83
hi DevIconBuildProps  ctermfg=75 guifg=#00a2ff
hi DevIconASM      ctermfg=25 guifg=#0071c5
hi DevIconGoWork   ctermfg=38 guifg=#00add8
hi DevIconClangConfig  ctermfg=66 guifg=#6d8086
hi DevIconGoSum    ctermfg=38 guifg=#00add8
hi DevIconHyprlock  ctermfg=37 guifg=#00aaae
hi DevIconConda    ctermfg=34 guifg=#43b02a
hi DevIconZshrc    ctermfg=113 guifg=#89e051
hi DevIconZshprofile  ctermfg=113 guifg=#89e051
hi DevIconHuff     ctermfg=56 guifg=#4242c7
hi DevIconBlender  ctermfg=208 guifg=#ea7600
hi DevIconZshenv   ctermfg=113 guifg=#89e051
hi DevIconCxxm     ctermfg=74 guifg=#519aba
hi DevIconPrisma   ctermfg=62 guifg=#5a67d8
hi DevIconGitlabCI  ctermfg=196 guifg=#e24329
hi DevIconGTK      ctermfg=231 guifg=#ffffff
hi DevIconTor      ctermfg=74 guifg=#519aba
hi DevIconPuppyLinux  ctermfg=145 guifg=#a2aeb9
hi DevIconFish     ctermfg=240 guifg=#4d5a5e
hi DevIconPyi      ctermfg=214 guifg=#ffbc03
hi DevIconPy       ctermfg=214 guifg=#ffbc03
hi DevIconPyw      ctermfg=39 guifg=#5aa7e4
hi DevIconPop_OS   ctermfg=73 guifg=#48b9c7
hi DevIconPm       ctermfg=74 guifg=#519aba
hi DevIconPyx      ctermfg=39 guifg=#5aa7e4
hi DevIconPxi      ctermfg=39 guifg=#5aa7e4
hi DevIconPxd      ctermfg=39 guifg=#5aa7e4
hi DevIconManjaro  ctermfg=35 guifg=#33b959
hi DevIconRb       ctermfg=52 guifg=#701516
hi DevIconMXLinux  ctermfg=231 guifg=#ffffff
hi DevIconGitBlameIgnore  ctermfg=196 guifg=#f54d27
hi DevIconEslintrc  ctermfg=56 guifg=#4b32c3
hi DevIconDevuan   ctermfg=238 guifg=#404a52
hi DevIconTcl      ctermfg=25 guifg=#1e5cb3
hi DevIconNano     ctermfg=54 guifg=#440077
hi DevIconLiquid   ctermfg=106 guifg=#95bf47
hi DevIconPsScriptfile  ctermfg=68 guifg=#4273ca
hi DevIconPsScriptModulefile  ctermfg=68 guifg=#6975c4
hi DevIconPsManifestfile  ctermfg=68 guifg=#6975c4
hi DevIconLeap     ctermfg=221 guifg=#fbc75d
hi DevIconPp       ctermfg=214 guifg=#ffa61a
hi DevIconNobaraLinux  ctermfg=231 guifg=#ffffff
hi DevIconConfig   ctermfg=66 guifg=#6d8086
hi DevIconriver    ctermfg=16 guifg=#000000
hi DevIconDart     ctermfg=25 guifg=#03589c
hi DevIconSlim     ctermfg=196 guifg=#e34c26
hi DevIconStaticLibraryArchive  ctermfg=253 guifg=#dcddd6
hi DevIconDiff     ctermfg=239 guifg=#41535b
hi DevIconMageia   ctermfg=67 guifg=#2397d4
hi DevIconGulpfile  ctermfg=167 guifg=#cc3e44
hi DevIconCs       ctermfg=58 guifg=#596706
hi DevIconAi       ctermfg=185 guifg=#cbcb41
hi DevIconCxx      ctermfg=74 guifg=#519aba
hi DevIconUbuntu   ctermfg=196 guifg=#dd4814
hi DevIconPlatformio  ctermfg=208 guifg=#f6822b
hi DevIconRake     ctermfg=52 guifg=#701516
hi DevIconxmonad   ctermfg=203 guifg=#fd4d5d
hi DevIconJsx      ctermfg=45 guifg=#20c2e3
hi DevIconTerraform  ctermfg=93 guifg=#5f43e9
hi DevIconBazelBuild  ctermfg=113 guifg=#89e051
hi DevIconSrt      ctermfg=214 guifg=#ffb713
hi DevIconEnv      ctermfg=227 guifg=#faf743
hi DevIconFsscript  ctermfg=74 guifg=#519aba
hi DevIconDrools   ctermfg=217 guifg=#ffafaf
hi DevIconi3       ctermfg=255 guifg=#e8ebee
hi DevIconSvelteConfig  ctermfg=196 guifg=#ff3e00
hi DevIconXresources  ctermfg=196 guifg=#e54d18
hi DevIconLuau     ctermfg=75 guifg=#00a2ff
hi DevIconPackagesProps  ctermfg=75 guifg=#00a2ff
hi DevIconGradleSettings  ctermfg=24 guifg=#005f87
hi DevIconBuildTargets  ctermfg=75 guifg=#00a2ff
hi DevIconSRCINFO  ctermfg=67 guifg=#0f94d2
hi DevIconDoc      ctermfg=26 guifg=#185abd
hi DevIconSecurity  ctermfg=251 guifg=#bec4c9
hi DevIconImportConfiguration  ctermfg=255 guifg=#ececec
hi DevIconIxx      ctermfg=74 guifg=#519aba
hi DevIconGNOME    ctermfg=231 guifg=#ffffff
hi DevIconMli      ctermfg=166 guifg=#e37933
hi DevIconHTTP     ctermfg=31 guifg=#008ec7
hi DevIconIcalendar  ctermfg=18 guifg=#2b2e83
hi DevIconTypeScriptDeclaration  ctermfg=172 guifg=#d59855
hi DevIconTypoScript  ctermfg=208 guifg=#ff8700
hi DevIconMATE     ctermfg=113 guifg=#9bda5c
hi DevIconPackedResource  ctermfg=66 guifg=#6d8086
hi DevIconPy.typed  ctermfg=214 guifg=#ffbc03
hi DevIconOpenTypeFont  ctermfg=255 guifg=#ececec
hi DevIconYaml     ctermfg=66 guifg=#6d8086
hi DevIconKDEPlasma  ctermfg=33 guifg=#1b89f4
hi DevIconFs       ctermfg=74 guifg=#519aba
hi DevIconLog      ctermfg=253 guifg=#dddddd
hi DevIconRlib     ctermfg=216 guifg=#dea584
hi DevIconGemfile  ctermfg=52 guifg=#701516
hi DevIconXsession  ctermfg=196 guifg=#e54d18
hi DevIconXml      ctermfg=166 guifg=#e37933
hi DevIconXInitrc  ctermfg=196 guifg=#e54d18
hi DevIconJustfile  ctermfg=66 guifg=#6d8086
hi DevIconBunLockfile  ctermfg=253 guifg=#eadcd1
hi DevIconBinaryGLTF  ctermfg=214 guifg=#ffb13b
hi DevIconMixLock  ctermfg=140 guifg=#a074c4
hi DevIconLuaurc   ctermfg=75 guifg=#00a2ff
hi DevIconDll      ctermfg=52 guifg=#4d2c0b
hi DevIconPrettierIgnore  ctermfg=33 guifg=#4285f4
hi DevIconPackageJson  ctermfg=197 guifg=#e8274b
hi DevIconPreCommitConfig  ctermfg=214 guifg=#f8b424
hi DevIconMd5      ctermfg=103 guifg=#8c86af
hi DevIconIco      ctermfg=185 guifg=#cbcb41
hi DevIconPackageLockJson  ctermfg=52 guifg=#7a0d21
hi DevIconnode     ctermfg=71 guifg=#5fa04e
hi DevIconNuxtConfig  ctermfg=42 guifg=#00c58e
hi DevIconKbx      ctermfg=243 guifg=#737672
hi DevIconMjs      ctermfg=185 guifg=#f1e05a
hi DevIconMailmap  ctermfg=196 guifg=#f54d27
hi DevIconVLC      ctermfg=208 guifg=#ee7a00
hi DevIconNPMIgnore  ctermfg=197 guifg=#e8274b
hi DevIconBin      ctermfg=124 guifg=#9f0500
hi DevIconGvimrc   ctermfg=28 guifg=#019833
hi DevIconGPRBuildProject  ctermfg=66 guifg=#6d8086
hi DevIconGitIgnore  ctermfg=196 guifg=#f54d27
hi DevIconLXQtConfigFile  ctermfg=32 guifg=#0192d3
hi DevIconGitModules  ctermfg=196 guifg=#f54d27
hi DevIconKiCadSymbolTable  ctermfg=231 guifg=#ffffff
hi DevIconGitConfig  ctermfg=196 guifg=#f54d27
hi DevIconOpenBSD  ctermfg=220 guifg=#f2ca30
hi DevIconLXDEConfigFile  ctermfg=246 guifg=#909090
hi DevIconEslintIgnore  ctermfg=56 guifg=#4b32c3
hi DevIconTailwindConfig  ctermfg=45 guifg=#20c2e3
hi DevIconXSettingsdConf  ctermfg=196 guifg=#e54d18
hi DevIconCache    ctermfg=231 guifg=#ffffff
hi DevIconKritarc  ctermfg=201 guifg=#f245fb
hi DevIconCMake    ctermfg=254 guifg=#dce3eb
hi DevIconMint     ctermfg=108 guifg=#87c095
hi DevIconPyd      ctermfg=222 guifg=#ffe291
hi DevIconConfiguration  ctermfg=66 guifg=#6d8086
hi DevIconDsStore  ctermfg=239 guifg=#41535b
hi DevIconNodeModules  ctermfg=197 guifg=#e8274b
hi DevIconRproj    ctermfg=29 guifg=#358a5b
hi DevIconWranglerConfig  ctermfg=208 guifg=#f48120
hi DevIconKdenliveLayoutsrc  ctermfg=110 guifg=#83b8f2
hi DevIconCodespell  ctermfg=41 guifg=#35da60
hi DevIconKDEglobals  ctermfg=32 guifg=#1c99f3
hi DevIconSha1     ctermfg=103 guifg=#8c86af
hi DevIconAlmalinux  ctermfg=203 guifg=#ff4649
hi DevIconKalgebrarc  ctermfg=32 guifg=#1c99f3
hi DevIconBabelrc  ctermfg=185 guifg=#cbcb41
hi DevIconBzl      ctermfg=113 guifg=#89e051
hi DevIconWeston   ctermfg=214 guifg=#ffbb01
hi DevIconZsh      ctermfg=113 guifg=#89e051
hi DevIconAlpine   ctermfg=24 guifg=#0d597f
hi DevIconIndexTheme  ctermfg=35 guifg=#2db96f
hi DevIconEditorConfig  ctermfg=255 guifg=#fff2f2
hi DevIconGo       ctermfg=38 guifg=#00add8
hi DevIconObjectFile  ctermfg=124 guifg=#9f0500
hi DevIconVercel   ctermfg=231 guifg=#ffffff
hi DevIconMpv      ctermfg=53 guifg=#3b1342
hi DevIconVoid     ctermfg=23 guifg=#295340
hi DevIconI18nConfig  ctermfg=104 guifg=#7986cb
hi DevIconXul      ctermfg=166 guifg=#e37933
hi DevIconTex      ctermfg=22 guifg=#3d6117
hi DevIconKotlinScript  ctermfg=99 guifg=#7f52ff
hi DevIconCMakeLists  ctermfg=254 guifg=#dce3eb
hi DevIconLogos    ctermfg=111 guifg=#599eff
hi DevIconHyprlandd  ctermfg=37 guifg=#00aaae
hi DevIconJavaScriptReactTest  ctermfg=45 guifg=#20c2e3
hi DevIconTxz      ctermfg=214 guifg=#eca517
hi DevIconPyLintConfig  ctermfg=66 guifg=#6d8086
hi DevIconWaveformAudioFile  ctermfg=39 guifg=#00afff
hi DevIconNPMrc    ctermfg=197 guifg=#e8274b
hi DevIconGruntfile  ctermfg=166 guifg=#e37933
hi DevIconXz       ctermfg=214 guifg=#eca517
hi DevIconCentos   ctermfg=132 guifg=#a2518d
hi DevIconBicep    ctermfg=74 guifg=#519aba
hi DevIconArchlabs  ctermfg=238 guifg=#503f42
hi DevIconMOV      ctermfg=208 guifg=#fd971f
hi DevIconFavicon  ctermfg=185 guifg=#cbcb41
hi DevIconMp4      ctermfg=208 guifg=#fd971f
hi DevIconGradleWrapperScript  ctermfg=24 guifg=#005f87
hi DevIconWebOpenFontFormat  ctermfg=255 guifg=#ececec
hi DevIconGradleProperties  ctermfg=24 guifg=#005f87
hi DevIconZst      ctermfg=214 guifg=#eca517
hi DevIconGradleWrapperProperties  ctermfg=24 guifg=#005f87
hi DevIconPng      ctermfg=140 guifg=#a074c4
hi DevIconJpg      ctermfg=140 guifg=#a074c4
hi DevIconJpeg     ctermfg=140 guifg=#a074c4
hi DevIconXcLocalization  ctermfg=31 guifg=#2596be
hi DevIconBmp      ctermfg=140 guifg=#a074c4
hi DevIconWebp     ctermfg=140 guifg=#a074c4
hi DevIconGoMod    ctermfg=38 guifg=#00add8
hi DevIconOggSpeexAudio  ctermfg=24 guifg=#0075aa
hi DevIconKiCadFootprintTable  ctermfg=231 guifg=#ffffff
hi DevIconGIMP     ctermfg=240 guifg=#635b46
hi DevIconKiCadCache  ctermfg=231 guifg=#ffffff
hi DevIconMkv      ctermfg=208 guifg=#fd971f
hi DevIconWebm     ctermfg=208 guifg=#fd971f
hi DevIconLinux    ctermfg=231 guifg=#fdfdfb
hi DevIconXaml     ctermfg=56 guifg=#512bd4
hi DevIconArtix    ctermfg=38 guifg=#41b4d7
hi DevIconTypoScriptSetup  ctermfg=208 guifg=#ff8700
hi DevIconAsciinema  ctermfg=208 guifg=#fd971f
hi DevIconSpecTs   ctermfg=74 guifg=#519aba
hi DevIconWavPackCorrection  ctermfg=39 guifg=#00afff
hi DevIconBigLinux  ctermfg=38 guifg=#189fc8
hi DevIconCrystalLinux  ctermfg=129 guifg=#a900ff
hi DevIconWavPack  ctermfg=39 guifg=#00afff
hi DevIconC        ctermfg=111 guifg=#599eff
hi DevIconBazel    ctermfg=113 guifg=#89e051
hi DevIconCommitlintConfig  ctermfg=30 guifg=#2b9689
hi DevIconWindowsMediaAudio  ctermfg=39 guifg=#00afff
hi DevIconZip      ctermfg=214 guifg=#eca517
hi DevIconBlueprint  ctermfg=68 guifg=#5796e2
hi DevIconArcoLinux  ctermfg=68 guifg=#6690eb
hi DevIconAvif     ctermfg=140 guifg=#a074c4
hi DevIconGif      ctermfg=140 guifg=#a074c4
hi DevIconBicepParameters  ctermfg=133 guifg=#9f74b3
hi DevIconCodeOfConduct  ctermfg=161 guifg=#e41662
hi DevIconBibTeX   ctermfg=185 guifg=#cbcb41
hi DevIconCheckhealth  ctermfg=75 guifg=#75b4fb
hi DevIconArchcraft  ctermfg=108 guifg=#86bba3
hi DevIconTgz      ctermfg=214 guifg=#eca517
hi DevIconKotlin   ctermfg=99 guifg=#7f52ff
hi DevIconAstro    ctermfg=197 guifg=#e23f67
hi DevIconApple    ctermfg=248 guifg=#a2aaad
hi DevIconErb      ctermfg=52 guifg=#701516
hi DevIconCp       ctermfg=74 guifg=#519aba
hi DevIconImage    ctermfg=181 guifg=#d0bec8
hi DevIconXpi      ctermfg=196 guifg=#ff1b01
hi DevIconAOSC     ctermfg=124 guifg=#c00000
hi DevIconCantorrc  ctermfg=32 guifg=#1c99f3
hi DevIconArduino  ctermfg=73 guifg=#56b6c2
hi DevIconWindows  ctermfg=39 guifg=#00a4ef
hi DevIconAppleScript  ctermfg=66 guifg=#6d8085
hi DevIconWasm     ctermfg=62 guifg=#5c4cdb
hi DevIconZigObjectNotation  ctermfg=172 guifg=#f69a1b
hi DevIconTSConfig  ctermfg=74 guifg=#519aba
hi DevIconSvg      ctermfg=214 guifg=#ffb13b
hi DevIconGitAttributes  ctermfg=196 guifg=#f54d27
hi DevIconGradleBuildScript  ctermfg=24 guifg=#005f87
hi DevIconAdaBody  ctermfg=111 guifg=#599eff
hi DevIconAdaFile  ctermfg=111 guifg=#599eff
hi DevIconAdaSpecification  ctermfg=140 guifg=#a074c4
hi DevIconVimrc    ctermfg=28 guifg=#019833
hi DevIconMPEGAudioLayerIII  ctermfg=39 guifg=#00afff
hi DevIconIonic    ctermfg=33 guifg=#4f8ff7
hi DevIconQuery    ctermfg=107 guifg=#90a850
hi DevIconMaven    ctermfg=52 guifg=#7a0d21
hi DevIconXfce     ctermfg=74 guifg=#00aadf
hi DevIconPsd      ctermfg=74 guifg=#519aba
hi DevIconSettingsJson  ctermfg=98 guifg=#854cc7
hi DevIconDconf    ctermfg=231 guifg=#ffffff
hi DevIconMagnet   ctermfg=124 guifg=#a51b16
hi DevIconEpp      ctermfg=214 guifg=#ffa61a
hi DevIconLhs      ctermfg=140 guifg=#a074c4
hi DevIconM4V      ctermfg=208 guifg=#fd971f
hi DevIconMPEG4    ctermfg=39 guifg=#00afff
hi DevIconGentoo   ctermfg=146 guifg=#b1abce
hi DevIconLXQt     ctermfg=32 guifg=#0191d2
hi DevIconOpenSCAD  ctermfg=220 guifg=#f9d72c
hi DevIconLXDE     ctermfg=248 guifg=#a4a4a4
hi DevIconSignature  ctermfg=166 guifg=#e37933
hi DevIconVagrantfile  ctermfg=27 guifg=#1563ff
hi DevIconXauthority  ctermfg=196 guifg=#e54d18
hi DevIconCinnamon  ctermfg=166 guifg=#dc682e
hi DevIconKdenlive  ctermfg=110 guifg=#83b8f2
hi DevIconBudgie   ctermfg=240 guifg=#4e5361
hi DevIconWebmanifest  ctermfg=185 guifg=#f1e05a
hi DevIconFreeBSD  ctermfg=160 guifg=#c90f02
hi DevIconKdenliverc  ctermfg=110 guifg=#83b8f2
hi DevIconKritadisplayrc  ctermfg=201 guifg=#f245fb
hi DevIconJavaScriptReactSpec  ctermfg=45 guifg=#20c2e3
hi DevIconCrdownload  ctermfg=43 guifg=#44cda8
hi DevIconRmd      ctermfg=74 guifg=#519aba
hi DevIconHyprpaper  ctermfg=37 guifg=#00aaae
hi DevIconTFVars   ctermfg=93 guifg=#5f43e9
hi DevIconMpp      ctermfg=74 guifg=#519aba
hi DevIconPhp      ctermfg=140 guifg=#a074c4
hi DevIconSml      ctermfg=166 guifg=#e37933
hi DevIconJsonc    ctermfg=185 guifg=#cbcb41
hi DevIconArch     ctermfg=67 guifg=#0f94d2
hi DevIconCowsayFile  ctermfg=130 guifg=#965824
hi DevIconFedora   ctermfg=17 guifg=#072a5e
hi DevIconGleam    ctermfg=219 guifg=#ffaff3
hi DevIconSsa      ctermfg=214 guifg=#ffb713
hi DevIconConfigRu  ctermfg=52 guifg=#701516
hi DevIconEndeavour  ctermfg=91 guifg=#7b3db9
hi DevIconElementary  ctermfg=67 guifg=#5890c2
hi DevIconQtile    ctermfg=231 guifg=#ffffff
hi DevIconIso      ctermfg=181 guifg=#d0bec8
hi DevIconPyc      ctermfg=222 guifg=#ffe291
hi DevIconClojureDart  ctermfg=74 guifg=#519aba
hi DevIconFluxbox  ctermfg=240 guifg=#555555
hi DevIconSharedObject  ctermfg=253 guifg=#dcddd6
hi DevIconDeepin   ctermfg=39 guifg=#2ca7f8
hi DevIconGroovy   ctermfg=24 guifg=#4a687c
hi DevIconDb       ctermfg=188 guifg=#dad8d8
hi DevIconGCode    ctermfg=32 guifg=#1471ad
hi DevIconDebian   ctermfg=88 guifg=#a80030
hi DevIconClojureC  ctermfg=113 guifg=#8dc149
hi DevIconInfo     ctermfg=230 guifg=#ffffcd
hi DevIconHh       ctermfg=140 guifg=#a074c4
hi DevIconCppm     ctermfg=74 guifg=#519aba
hi DevIconBz3      ctermfg=214 guifg=#eca517
hi DevIconBz2      ctermfg=214 guifg=#eca517
hi DevIconUI       ctermfg=27 guifg=#015bf0
hi DevIconBz       ctermfg=214 guifg=#eca517
hi DevIconIcal     ctermfg=18 guifg=#2b2e83
hi DevIconBoundaryRepresentation  ctermfg=101 guifg=#839463
hi TooLong         guibg=#393939
hi Bold            cterm=bold gui=bold
hi Italic          cterm=italic gui=italic
hi HealthError     guifg=#ee5396
hi HealthWarning   guifg=#be95ff
hi HealthSuccess   guifg=#42be65
hi @text           guifg=#d0d0d0
hi @text.literal   guifg=#d0d0d0
hi @text.literal.commodity  guifg=#42be65
hi @number.date    guifg=#3ddbd9
hi @number.date.effective  guifg=#42be65
hi @number.interval  guifg=#78a9ff
hi @number.status  guifg=#ff7eb6
hi @number.quantity  guifg=#33b1ff
hi @number.quantity.negative  guifg=#ee5396
hi Decorator       guifg=#ff7eb6
hi link @lsp.type.selfParameter  @variable.builtin
hi link @lsp.type.builtinConstant  @constant.builtin
hi link @lsp.type.magicFunction  @function.builtin
hi link @lsp.type.boolean  @boolean
hi link @lsp.type.builtinType  @type.builtin
hi link @lsp.type.escapeSequence  @string.escape
hi link @lsp.type.formatSpecifier  @punctuation.special
hi @namespace      guifg=#08bdba
hi @parameter      guifg=#d0d0d0
hi link @lsp.type.selfKeyword  @variable.builtin
hi link @lsp.type.string.rust  @string
hi link @lsp.type.typeAlias  @type.definition
hi link @lsp.type.unresolvedReference  Error
hi link @lsp.mod.readonly  @constant
hi link @lsp.mod.typeHint  Type
hi link @lsp.mod.builtin  Special
hi link @lsp.typemod.class.defaultLibrary  @type.builtin
hi link @lsp.typemod.enum.defaultLibrary  @type.builtin
hi link @lsp.typemod.enumMember.defaultLibrary  @constant.builtin
hi link @lsp.typemod.function.defaultLibrary  @function.builtin
hi link @lsp.typemod.keyword.async  @keyword.coroutine
hi link @lsp.typemod.macro.defaultLibrary  @function.builtin
hi link @lsp.typemod.method.defaultLibrary  @function.builtin
hi link @lsp.typemod.operator.injected  @operator
hi link @lsp.typemod.string.injected  @string
hi @exception      guifg=#82cfff
hi link @lsp.typemod.operator.controlFlow  @exception
hi link @lsp.typemod.keyword.documentation  Special
hi link @lsp.typemod.variable.global  @constant
hi link @lsp.typemod.variable.static  @constant
hi link @lsp.typemod.variable.defaultLibrary  @variable.builtin
hi link @lsp.typemod.function.builtin  @function.builtin
hi @method         guifg=#08bdba
hi link @lsp.typemod.function.readonly  @method
hi link @lsp.typemod.variable.injected  @variable
hi helpHyperTextJump  guifg=#3ddbd9
hi helpSpecial     guifg=#78a9ff
hi helpHeadline    guifg=#ee5396
hi helpHeader      guifg=#82cfff
hi DiffAdded       guifg=#08bdba
hi DiffChanged     guifg=#78a9ff
hi DiffRemoved     guifg=#ee5396
hi Delimeter       guifg=#ffffff
hi markdownBlockquote  guifg=#3ddbd9
hi link markdownBold    Bold
hi link markdownItalic  Italic
hi markdownBoldItalic  cterm=bold,italic gui=bold,italic
hi link markdownRule    Comment
hi markdownH1      guifg=#ee5396
hi link markdownH2      markdownH1
hi link markdownH3      markdownH1
hi link markdownH4      markdownH1
hi link markdownH5      markdownH1
hi link markdownH6      markdownH1
hi link markdownHeadingDelimiter  markdownH1
hi link markdownHeadingRule  markdownH1
hi link markdownUrl     String
hi link markdownCode    String
hi link markdownCodeBlock  markdownCode
hi link markdownCodeDelimiter  markdownCode
hi markdownListMarker  guifg=#3ddbd9
hi markdownOrderedListMarker  guifg=#3ddbd9
hi asciidocAttributeEntry  guifg=#82cfff
hi link asciidocAttributeList  asciidocAttributeEntry
hi link asciidocAttributeRef  asciidocAttributeEntry
hi link asciidocHLabel  markdownH1
hi link asciidocOneLineTitle  markdownH1
hi link asciidocQuotedMonospaced  markdownBlockquote
hi link asciidocURL     markdownUrl
hi @error          guifg=#33b1ff
hi @punctuation.delimiter  guifg=#3ddbd9
hi @punctuation.bracket  guifg=#3ddbd9
hi @string.regex   guifg=#08bdba
hi link @float          Float
hi @function.macro  guifg=#08bdba
hi @keyword.function  guifg=#3ddbd9
hi @keyword.operator  guifg=#3ddbd9
hi @conditional    guifg=#78a9ff
hi @repeat         guifg=#78a9ff
hi @include        guifg=#78a9ff
hi @field          guifg=#d0d0d0
hi @symbol         cterm=bold gui=bold guifg=#82cfff
" hi @text.strong    cleared
hi @text.emphasis  cterm=bold gui=bold guifg=#ee5396
hi @text.underline  cterm=underline gui=underline guifg=#ee5396
hi @text.strike    cterm=strikethrough gui=strikethrough guifg=#ee5396
hi @text.title     guifg=#ee5396
hi @text.uri       cterm=underline gui=underline guifg=#be95ff
hi @tag.attribute  guifg=#82cfff
hi @tag.delimiter  guifg=#82cfff
hi link @tag.builtin.tsx  @tag.tsx
hi @reference      guifg=#d0d0d0
hi TermCursorNC    guifg=#161616 guibg=#d0d0d0
hi StatusReplace   guifg=#161616 guibg=#3ddbd9
hi StatusInsert    guifg=#161616 guibg=#ff7eb6
hi StatusVisual    guifg=#161616 guibg=#be95ff
hi StatusTerminal  guifg=#161616 guibg=#33b1ff
hi StatusNormal    guifg=#161616 guibg=#82cfff
hi StatusCommand   guifg=#161616 guibg=#42be65
hi StatusLineDiagnosticWarn  cterm=bold gui=bold guifg=#be95ff guibg=#161616
hi StatusLineDiagnosticError  cterm=bold gui=bold guifg=#ee5396 guibg=#161616
hi TelescopeBorder  guifg=#131313 guibg=#131313
hi TelescopePromptBorder  guifg=#393939 guibg=#393939
hi TelescopePromptNormal  guifg=#f2f2f2 guibg=#393939
hi TelescopePromptPrefix  guifg=#3ddbd9 guibg=#393939
hi TelescopeNormal  guibg=#131313
hi TelescopePreviewTitle  guifg=#393939 guibg=#ff7eb6
hi TelescopePromptTitle  guifg=#393939 guibg=#33b1ff
hi TelescopeResultsTitle  guifg=#131313 guibg=#131313
hi TelescopeSelection  guibg=#393939
hi TelescopePreviewLine  guibg=#262626
hi TelescopeMatching  cterm=bold,italic gui=bold,italic guifg=#3ddbd9
hi NotifyERRORBorder  guifg=#3ddbd9
hi NotifyWARNBorder  guifg=#be95ff
hi NotifyINFOBorder  guifg=#f2f2f2
hi NotifyDEBUGBorder  guifg=#42be65
hi NotifyTRACEBorder  guifg=#42be65
hi NotifyERRORIcon  guifg=#3ddbd9
hi NotifyWARNIcon  guifg=#be95ff
hi NotifyINFOIcon  guifg=#f2f2f2
hi NotifyDEBUGIcon  guifg=#42be65
hi NotifyTRACEIcon  guifg=#42be65
hi NotifyERRORTitle  guifg=#3ddbd9
hi NotifyWARNTitle  guifg=#be95ff
hi NotifyINFOTitle  guifg=#f2f2f2
hi NotifyDEBUGTitle  guifg=#42be65
hi NotifyTRACETitle  guifg=#42be65
hi CmpItemAbbr     guifg=#adadad
hi CmpItemAbbrMatch  cterm=bold gui=bold guifg=#f2f2f2
hi CmpItemAbbrMatchFuzzy  cterm=bold gui=bold guifg=#d0d0d0
hi CmpItemMenu     cterm=italic gui=italic guifg=#d0d0d0
hi CmpItemKindInterface  guifg=#262626 guibg=#3ddbd9
hi CmpItemKindColor  guifg=#262626 guibg=#3ddbd9
hi CmpItemKindTypeParameter  guifg=#262626 guibg=#3ddbd9
hi CmpItemKindText  guifg=#262626 guibg=#78a9ff
hi CmpItemKindEnum  guifg=#262626 guibg=#78a9ff
hi CmpItemKindKeyword  guifg=#262626 guibg=#78a9ff
hi CmpItemKindConstant  guifg=#262626 guibg=#ee5396
hi CmpItemKindConstructor  guifg=#262626 guibg=#ee5396
hi CmpItemKindReference  guifg=#262626 guibg=#ee5396
hi CmpItemKindFunction  guifg=#262626 guibg=#33b1ff
hi CmpItemKindStruct  guifg=#262626 guibg=#33b1ff
hi CmpItemKindClass  guifg=#262626 guibg=#33b1ff
hi CmpItemKindModule  guifg=#262626 guibg=#33b1ff
hi CmpItemKindOperator  guifg=#262626 guibg=#33b1ff
hi CmpItemKindField  guifg=#262626 guibg=#ff7eb6
hi CmpItemKindProperty  guifg=#262626 guibg=#ff7eb6
hi CmpItemKindEvent  guifg=#262626 guibg=#ff7eb6
hi CmpItemKindUnit  guifg=#262626 guibg=#42be65
hi CmpItemKindSnippet  guifg=#262626 guibg=#42be65
hi CmpItemKindFolder  guifg=#262626 guibg=#42be65
hi CmpItemKindVariable  guifg=#262626 guibg=#be95ff
hi CmpItemKindFile  guifg=#262626 guibg=#be95ff
hi CmpItemKindMethod  guifg=#262626 guibg=#82cfff
hi CmpItemKindValue  guifg=#262626 guibg=#82cfff
hi CmpItemKindEnumMember  guifg=#262626 guibg=#82cfff
hi link BlinkCmpMenu    Pmenu
hi BlinkCmpLabel   guifg=#d0d0d0 guibg=#262626
hi BlinkCmpMenuSelection  guifg=#d0d0d0 guibg=#262626
hi BlinkCmpLabelMatch  cterm=bold gui=bold guifg=#f2f2f2
hi BlinkCmpKind    guifg=#262626 guibg=#78a9ff
hi BlinkCmpKindText  guifg=#262626 guibg=#78a9ff
hi BlinkCmpKindEnum  guifg=#262626 guibg=#78a9ff
hi BlinkCmpKindKeyword  guifg=#262626 guibg=#78a9ff
hi BlinkCmpKindConstant  guifg=#262626 guibg=#ee5396
hi BlinkCmpKindConstructor  guifg=#262626 guibg=#ee5396
hi BlinkCmpKindReference  guifg=#262626 guibg=#ee5396
hi BlinkCmpKindFunction  guifg=#262626 guibg=#33b1ff
hi BlinkCmpKindStruct  guifg=#262626 guibg=#33b1ff
hi BlinkCmpKindClass  guifg=#262626 guibg=#33b1ff
hi BlinkCmpKindModule  guifg=#262626 guibg=#33b1ff
hi BlinkCmpKindOperator  guifg=#262626 guibg=#33b1ff
hi BlinkCmpKindField  guifg=#262626 guibg=#ff7eb6
hi BlinkCmpKindProperty  guifg=#262626 guibg=#be95ff
hi BlinkCmpKindEvent  guifg=#262626 guibg=#ff7eb6
hi BlinkCmpKindUnit  guifg=#262626 guibg=#42be65
hi BlinkCmpKindSnippet  guifg=#262626 guibg=#42be65
hi BlinkCmpKindFolder  guifg=#262626 guibg=#42be65
hi BlinkCmpKindVariable  guifg=#262626 guibg=#be95ff
hi BlinkCmpKindFile  guifg=#262626 guibg=#be95ff
hi BlinkCmpKindMethod  guifg=#262626 guibg=#82cfff
hi BlinkCmpKindValue  guifg=#262626 guibg=#82cfff
hi BlinkCmpKindEnumMember  guifg=#262626 guibg=#82cfff
hi link BlinkCmpDoc     Pmenu
hi NeogitBranch    guifg=#ee5396
hi NeogitRemote    guifg=#78a9ff
hi NeogitHunkHeader  guifg=#d0d0d0 guibg=#393939
hi NeogitHunkHeaderHighlight  guifg=#d0d0d0 guibg=#525252
hi link GitSignsCurrentLineBlame  Comment
hi HydraRed        guifg=#ff7eb6
hi HydraBlue       guifg=#78a9ff
hi HydraAmaranth   guifg=#ee5396
hi HydraTeal       guifg=#3ddbd9
hi HydraHint       guibg=#131313
hi alpha1          guifg=#525252
hi alpha2          guifg=#d0d0d0
hi alpha3          guifg=#525252
hi CodeBlock       guibg=#262626
hi BufferLineDiagnostic  cterm=bold gui=bold guifg=#ee5396
hi BufferLineDiagnosticVisible  cterm=bold gui=bold guifg=#ee5396
hi link htmlH1          markdownH1
hi link mkdRule         markdownRule
hi link mkdListItem     markdownListMarker
hi link mkdListItemCheckbox  markdownListMarker
hi link VimwikiHeader1  markdownH1
hi link VimwikiHeader2  markdownH1
hi link VimwikiHeader3  markdownH1
hi link VimwikiHeader4  markdownH1
hi link VimwikiHeader5  markdownH1
hi link VimwikiHeader6  markdownH1
hi link VimwikiHeaderChar  markdownH1
hi link VimwikiList     markdownListMarker
hi link VimwikiLink     markdownUrl
hi link VimwikiCode     markdownCode
hi lualine_z_visual  gui=nocombine guifg=#ff7eb6 guibg=#161616
hi lualine_y_visual  gui=nocombine guifg=#d0d0d0 guibg=#161616
hi lualine_z_insert  gui=nocombine guifg=#ff7eb6 guibg=#161616
hi lualine_z_inactive  gui=nocombine guifg=#393939 guibg=#161616
hi lualine_z_normal  gui=nocombine guifg=#d0d0d0 guibg=#161616
hi link TelescopeResultsConstant  Constant
hi link TelescopeResultsClass  Function
hi link TelescopePreviewMessage  TelescopePreviewNormal
hi link TelescopePreviewMessageFillchar  TelescopePreviewMessage
hi link TelescopePreviewNormal  TelescopeNormal
hi link TelescopePreviewDate  Directory
hi link TelescopePreviewGroup  Constant
hi link TelescopePreviewUser  Constant
hi link TelescopePreviewSize  String
hi link TelescopePreviewSticky  Keyword
hi link TelescopePreviewHyphen  NonText
hi link TelescopePreviewExecute  String
hi link TelescopePreviewWrite  Statement
hi link TelescopePreviewRead  Constant
hi link TelescopePreviewSocket  Statement
hi link TelescopePreviewLink  Special
hi link TelescopePreviewBlock  Constant
hi link TelescopeResultsNormal  TelescopeNormal
hi link TelescopeMultiIcon  Identifier
hi link TelescopeMultiSelection  Type
hi link TelescopeSelectionCaret  TelescopeSelection
hi link TelescopePreviewDirectory  Directory
hi link TelescopePreviewCharDev  Constant
hi link TelescopePreviewPipe  Constant
hi link TelescopePreviewMatch  Search
hi link TelescopePromptCounter  NonText
hi link TelescopeTitle  TelescopeBorder
hi link TelescopePreviewBorder  TelescopeBorder
hi link TelescopeResultsBorder  TelescopeBorder
hi link TelescopeResultsDiffUntracked  NonText
hi link TelescopeResultsDiffDelete  DiffDelete
hi link TelescopeResultsDiffAdd  DiffAdd
hi link TelescopeResultsDiffChange  DiffChange
" hi Struct          cleared
hi link TelescopeResultsStruct  Struct
hi link TelescopeResultsVariable  SpecialChar
hi link TelescopeResultsLineNr  LineNr
hi link TelescopeResultsIdentifier  Identifier
hi link TelescopeResultsNumber  Number
hi link TelescopeResultsComment  Comment
hi link TelescopeResultsSpecialComment  SpecialComment
hi link TelescopeResultsOperator  Operator
" hi Method          cleared
hi link TelescopeResultsMethod  Method
hi link TelescopeResultsFunction  Function
hi link TelescopeResultsField  Function
hi link NeogitReverting  NeogitSectionHeader
hi NeogitSectionHeader  cterm=bold gui=bold guifg=#628bd1
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
hi NeogitChangeNewFile  cterm=bold,italic gui=bold,italic guifg=#9c7ad1
hi NeogitChangeUnmerged  cterm=bold,italic gui=bold,italic guifg=#648cd4
hi NeogitChangeCopied  cterm=bold,italic gui=bold,italic guifg=#628bd1
hi NeogitChangeUpdated  cterm=bold,italic gui=bold,italic guifg=#adadad
hi NeogitChangeRenamed  cterm=bold,italic gui=bold,italic guifg=#628bd1
hi NeogitChangeDeleted  cterm=bold,italic gui=bold,italic guifg=#c3447b
hi NeogitChangeAdded  cterm=bold,italic gui=bold,italic guifg=#9c7ad1
hi NeogitChangeModified  cterm=bold,italic gui=bold,italic guifg=#079b99
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
hi link NeogitSubtleText  Comment
hi link NeogitStash     NeogitSubtleText
hi link NeogitObjectId  NeogitSubtleText
" hi NeogitStatusHEAD  cleared
hi NeogitUnpulledFrom  cterm=bold gui=bold guifg=#628bd1
hi NeogitUnpushedTo  cterm=bold gui=bold guifg=#628bd1
hi NeogitUnmergedInto  cterm=bold gui=bold guifg=#628bd1
hi NeogitBranchHead  cterm=bold,underline gui=bold,underline guifg=#08bdba
hi link NeogitCommandCodeError  Error
hi link NeogitCommandCodeNormal  String
hi link NeogitCommandTime  NeogitSubtleText
hi link NeogitCommandText  NeogitSubtleText
hi NeogitDiffHeaderHighlight  cterm=bold gui=bold guifg=#d0d0d0 guibg=#303030
hi NeogitDiffHeader  cterm=bold gui=bold guifg=#08bdba guibg=#303030
hi link NeogitCommitViewDescription  String
hi NeogitCommitViewHeader  guifg=#161616 guibg=#628bd1
hi NeogitFilePath  cterm=italic gui=italic guifg=#08bdba
hi link NeogitPopupActionDisabled  NeogitSubtleText
hi NeogitPopupActionKey  guifg=#78a9ff
hi link NeogitPopupConfigDisabled  NeogitSubtleText
hi NeogitGraphRed  guifg=#ee5396
hi NeogitPopupConfigKey  guifg=#78a9ff
hi NeogitGraphYellow  guifg=#78a9ff
hi link NeogitPopupOptionEnabled  SpecialChar
hi NeogitGraphOrange  guifg=#d0d0d0
hi link NeogitPopupSwitchDisabled  NeogitSubtleText
hi NeogitGraphBlue  guifg=#08bdba
hi NeogitPopupSwitchKey  guifg=#78a9ff
hi NeogitPopupBold  cterm=bold gui=bold
hi NeogitGraphPurple  guifg=#78a9ff
hi link NeogitPopupSectionTitle  Function
hi NeogitDiffDeleteCursor  guifg=#ee5396 guibg=#1a1a1a
hi NeogitDiffDeleteHighlight  guifg=#ee5396 guibg=#361c28
hi NeogitGraphGreen  guifg=#be95ff
hi NeogitGraphBoldGray  cterm=bold gui=bold guifg=#737373
hi NeogitGraphBoldPurple  cterm=bold gui=bold guifg=#78a9ff
hi NeogitGraphBoldBlue  cterm=bold gui=bold guifg=#08bdba
hi NeogitGraphBoldCyan  cterm=bold gui=bold guifg=#78a9ff
hi NeogitGraphBoldGreen  cterm=bold gui=bold guifg=#be95ff
hi NeogitGraphBoldYellow  cterm=bold gui=bold guifg=#78a9ff
hi NeogitGraphBoldWhite  cterm=bold gui=bold guifg=#fcfcfc
hi NeogitGraphBoldOrange  cterm=bold gui=bold guifg=#d0d0d0
hi NeogitGraphGray  guifg=#737373
hi NeogitGraphCyan  guifg=#78a9ff
hi NeogitGraphWhite  guifg=#fcfcfc
hi NeogitGraphBoldRed  cterm=bold gui=bold guifg=#ee5396
hi link NeogitSignatureGood  NeogitGraphGreen
hi link NeogitSignatureBad  NeogitGraphBoldRed
hi link NeogitSignatureMissing  NeogitGraphPurple
hi link NeogitSignatureNone  NeogitSubtleText
hi link NeogitSignatureGoodUnknown  NeogitGraphBlue
hi link NeogitSignatureGoodExpired  NeogitGraphOrange
hi link NeogitSignatureGoodExpiredKey  NeogitGraphYellow
hi link NeogitSignatureGoodRevokedKey  NeogitGraphRed
hi link NeogitCursorLine  CursorLine
hi NeogitHunkMergeHeader  cterm=bold gui=bold guifg=#252525 guibg=#737373
hi NeogitHunkMergeHeaderHighlight  cterm=bold gui=bold guifg=#161616 guibg=#628bd1
hi NeogitHunkMergeHeaderCursor  cterm=bold gui=bold guifg=#161616 guibg=#628bd1
hi NeogitHunkHeaderCursor  cterm=bold gui=bold guifg=#161616 guibg=#90b8ff
hi NeogitDiffContext  guibg=#1a1a1a
hi NeogitDiffContextHighlight  guibg=#252525
hi NeogitDiffContextCursor  guibg=#1a1a1a
hi NeogitDiffAdditions  guifg=#9c7ad1
hi NeogitDiffAdd   guifg=#9c7ad1 guibg=#122f2f
hi NeogitDiffAddHighlight  guifg=#be95ff guibg=#122f2f
hi NeogitDiffAddCursor  guifg=#be95ff guibg=#1a1a1a
hi NeogitDiffDeletions  guifg=#c3447b
hi NeogitDiffDelete  guifg=#c3447b guibg=#361c28
hi link NeogitPopupBranchName  String
hi link NeogitPopupSwitchEnabled  SpecialChar
hi NeogitPopupOptionKey  guifg=#78a9ff
hi link NeogitPopupOptionDisabled  NeogitSubtleText
hi link NeogitPopupConfigEnabled  SpecialChar
hi NeogitGraphAuthor  guifg=#d0d0d0
hi NeogitActiveItem  cterm=bold gui=bold guifg=#161616 guibg=#adadad
hi NeogitFloatHeaderHighlight  cterm=bold gui=bold guifg=#78a9ff guibg=#252525
hi NeogitFloatHeader  cterm=bold gui=bold guibg=#161616
hi NeogitTagDistance  guifg=#78a9ff
hi NeogitTagName   guifg=#78a9ff
" hi debugPC         cleared
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
hi link ArrowFileIndex  CursorLineNr
hi link ArrowCurrentFile  SpecialChar
hi link ArrowAction     Character
hi link ArrowDeleteMode  DiagnosticError
hi link CodeCompanionChatHeader  @markup.heading.2.markdown
hi link CodeCompanionChatSeparator  @punctuation.special.markdown
hi link CodeCompanionChatTokens  Comment
hi link CodeCompanionChatTool  Special
hi link CodeCompanionChatToolGroup  Constant
hi link CodeCompanionChatVariable  Identifier
hi link CodeCompanionVirtualText  Comment
hi CopilotSuggestion  ctermfg=244 guifg=#808080
hi link CopilotAnnotation  MoreMsg
" hi GlanceNone      cleared
hi GlancePreviewBorderBottom  guifg=#131313 guibg=#202020
hi GlanceListBorderBottom  guifg=#131313 guibg=#262626
hi GlanceBorderTop  guifg=#131313 guibg=#292929
hi GlancePreviewEndOfBuffer  guifg=#202020 guibg=#202020
hi GlanceListEndOfBuffer  guifg=#262626 guibg=#262626
hi GlanceFoldIcon  guifg=#959595
hi GlanceIndent    guifg=#5b5b5b
hi GlanceWinBarTitle  guifg=#d0d0d0 guibg=#292929
hi GlanceWinBarFilepath  guifg=#959595 guibg=#292929
hi GlanceWinBarFilename  guifg=#d0d0d0 guibg=#292929
hi GlanceListFilepath  guifg=#959595
hi GlanceListNormal  guifg=#d0d0d0 guibg=#262626
hi GlanceListCursorLine  guibg=#373737
hi GlancePreviewSignColumn  guifg=#202020
hi GlancePreviewLineNr  guifg=#5e5e5e
hi GlancePreviewCursorLine  guibg=#313131
hi GlancePreviewNormal  guibg=#202020
hi GlancePreviewMatch  guifg=#262626 guibg=#3ddbd9
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
" hi DiagnosticSignInformation  cleared
" hi DiagnosticSignWarning  cleared
hi link SnacksInputNormal  Normal
hi link SnacksInputTitle  DiagnosticInfo
hi link SnacksInputPrompt  SnacksInputTitle
hi link SnacksInputIcon  DiagnosticHint
hi link SnacksInputBorder  DiagnosticInfo
hi link SnacksPickerMatch  Special
hi link SnacksPickerDelim  Delimiter
hi link SnacksPickerIconInterface  @lsp.type.interface
hi link SnacksPickerSpecial  Special
hi link SnacksPickerLabel  SnacksPickerSpecial
hi link SnacksPickerIconFunction  @function
hi link SnacksPickerIconFile  Normal
hi link SnacksPickerIconField  @variable.member
hi link SnacksPickerGitCommit  @variable.builtin
hi link SnacksPickerIconEvent  Special
hi link SnacksPickerIconEnumMember  @lsp.type.enumMember
hi link SnacksPickerIconEnum  @lsp.type.enum
hi link SnacksPickerIconConstructor  @constructor
hi link SnacksPickerIconConstant  @constant
hi link SnacksPickerIconClass  @type
hi link SnacksPickerIconCategory  @module
hi link SnacksPickerIconName  @keyword
hi link SnacksPickerIconSource  @constant
hi link SnacksPickerManPage  Special
hi link SnacksPickerLspUnavailable  DiagnosticError
hi link SnacksPickerLspAttachedBuf  DiagnosticInfo
hi link SnacksPickerLspAttached  DiagnosticWarn
hi link SnacksPickerLspEnabled  Special
hi link SnacksPickerLspDisabled  DiagnosticWarn
hi link SnacksPickerGitStatusAdded  Added
hi link SnacksPickerDirectory  Directory
hi link SnacksPickerManSection  Number
hi link SnacksPickerGitScope  Italic
hi link SnacksPickerItalic  Italic
hi link SnacksPickerGitType  Title
hi link SnacksPickerGitIssue  Number
hi link SnacksPickerGitDate  Special
hi link SnacksPickerGitBranchCurrent  Number
hi link SnacksPickerGitBranch  Title
hi link SnacksPickerGitDetached  DiagnosticWarn
hi link SnacksPickerGitBreaking  Error
hi link SnacksPickerUndoSaved  Special
hi link SnacksPickerUndoCurrent  @variable.builtin
hi link SnacksPickerUndoRemoved  Removed
hi link SnacksPickerUndoAdded  Added
hi link SnacksPickerKeymapRhs  NonText
hi link SnacksPickerBufFlags  NonText
hi link SnacksPickerBufNr  Number
hi link SnacksPickerKeymapNowait  @variable.builtin
hi link SnacksPickerKeymapLhs  Special
hi link SnacksPickerKeymapMode  Number
hi link SnacksPickerRegister  Number
hi link SnacksPickerDiagnosticCode  Special
" hi SnacksPickerFile  cleared
hi link SnacksPickerAuEvent  Constant
hi link SnacksPickerAuPattern  String
hi link SnacksPickerCode  @markup.raw.markdown_inline
hi link SnacksPickerDir  NonText
hi link SnacksPickerUnselected  NonText
hi link SnacksPickerCmdBuiltin  @constructor
hi link SnacksPickerToggle  DiagnosticVirtualTextInfo
hi link SnacksPickerSelected  Number
hi link SnacksPickerSpinner  Special
hi link SnacksPickerDesc  Comment
hi link SnacksPickerCol  LineNr
hi link SnacksPickerRow  String
hi link SnacksPickerPrompt  Special
hi link SnacksPickerTree  LineNr
hi link SnacksPickerCmd  Function
hi link SnacksPickerIdx  Number
hi link SnacksPickerSearch  Search
hi link SnacksPickerAuGroup  Type
hi link SnacksPickerTime  Special
hi link SnacksPickerGitStatus  Special
hi link SnacksPickerBold  Bold
hi link SnacksPickerGitStatusModified  DiagnosticWarn
hi link SnacksPickerGitStatusDeleted  Removed
hi link SnacksPickerGitStatusRenamed  SnacksPickerGitStatus
hi link SnacksPickerGitStatusCopied  SnacksPickerGitStatus
hi link SnacksPickerGitStatusUntracked  NonText
hi link SnacksPickerGitStatusIgnored  NonText
hi link SnacksPickerGitStatusUnmerged  DiagnosticError
hi link SnacksPickerPickWinCurrent  CurSearch
hi link SnacksPickerGitStatusStaged  DiagnosticHint
hi link SnacksPickerIconArray  @punctuation.bracket
hi link SnacksPickerPickWin  Search
hi link SnacksPickerIconVariable  @variable
hi link SnacksPickerIcon  Special
hi link SnacksPickerIconPackage  @module
hi link SnacksPickerIconKey  @lsp.type.keyword
hi link SnacksPickerIconTypeParameter  @lsp.type.typeParameter
hi link SnacksPickerIconMethod  @function.method
hi link SnacksPickerIconBoolean  @boolean
hi link SnacksPickerIconModule  @module
hi link SnacksPickerIconStruct  @lsp.type.struct
hi link SnacksPickerIconNamespace  @module
hi link SnacksPickerIconString  @string
hi link SnacksPickerIconNull  @constant.builtin
hi link SnacksPickerIconProperty  @property
hi link SnacksPickerIconNumber  @number
hi link SnacksPickerIconOperator  @operator
hi link SnacksPickerDiagnosticSource  Comment
hi link SnacksPickerIconObject  @constant
hi link SnacksPickerComment  Comment
hi link SnacksPickerDimmed  Conceal
hi link SnacksPickerPathHidden  NonText
hi link SnacksPickerPathIgnored  NonText
hi link SnacksPickerLinkBroken  DiagnosticError
hi link SnacksPickerLink  Comment
hi link SnacksPickerTotals  NonText
hi link SnacksPickerInputSearch  @keyword
hi link SnacksPickerToggleFollow  SnacksPickerToggle
hi link SnacksPickerToggleIgnored  SnacksPickerToggle
hi link SnacksPickerToggleHidden  SnacksPickerToggle
hi link SnacksPickerToggleModified  SnacksPickerToggle
hi link SnacksPickerToggleRegex  SnacksPickerToggle
hi lualine_transitional_lualine_a_normal_to_lualine_b_normal  gui=nocombine guifg=#78a9ff guibg=#161616
hi link DressingSelectIdx  Special
hi link RenderMarkdownH2Bg  DiffAdd
hi link RenderMarkdownH3Bg  DiffChange
hi link RenderMarkdownH4Bg  DiffDelete
hi link RenderMarkdownH5Bg  Visual
hi link RenderMarkdownH6Bg  CursorColumn
hi link RenderMarkdownSuccess  DiagnosticOk
hi link RenderMarkdownTableFill  Conceal
hi link RenderMarkdownTableRow  Normal
hi link RenderMarkdownTableHead  @markup.heading
hi link RenderMarkdownError  DiagnosticError
hi link RenderMarkdownChecked  @markup.list.checked
hi link RenderMarkdownUnchecked  @markup.list.unchecked
hi link RenderMarkdownHint  DiagnosticHint
hi link RenderMarkdownLink  @markup.link.label.markdown_inline
hi link RenderMarkdownWikiLink  RenderMarkdownLink
hi link RenderMarkdownHtmlComment  @comment
hi link RenderMarkdownCode  ColorColumn
hi link RenderMarkdownCodeInline  RenderMarkdownCode
hi link RenderMarkdownCodeFallback  Normal
hi link RenderMarkdownCodeBorder  RenderMarkdownCode
hi link RenderMarkdownSign  SignColumn
hi link RenderMarkdownDash  LineNr
hi link RenderMarkdownBullet  Normal
hi link RenderMarkdownInlineHighlight  RenderMarkdownCodeInline
hi link RenderMarkdownQuote  @markup.quote
hi link RenderMarkdownQuote6  RenderMarkdownQuote
hi link RenderMarkdownQuote5  RenderMarkdownQuote
hi link RenderMarkdownQuote4  RenderMarkdownQuote
hi link RenderMarkdownQuote3  RenderMarkdownQuote
hi link RenderMarkdownQuote2  RenderMarkdownQuote
hi link RenderMarkdownQuote1  RenderMarkdownQuote
hi link RenderMarkdownH3  @markup.heading.3.markdown
hi link RenderMarkdownH2  @markup.heading.2.markdown
hi link RenderMarkdownH1  @markup.heading.1.markdown
hi link RenderMarkdownIndent  Whitespace
hi link RenderMarkdownWarn  DiagnosticWarn
hi link RenderMarkdownInfo  DiagnosticInfo
hi link RenderMarkdownMath  @markup.math
hi link RenderMarkdownH4  @markup.heading.4.markdown
hi link RenderMarkdownH5  @markup.heading.5.markdown
hi link RenderMarkdownH6  @markup.heading.6.markdown
hi link RenderMarkdownTodo  @markup.raw
hi link RenderMarkdownH1Bg  DiffText
hi AvanteReversedSubtitle  guifg=#56b6c2
hi AvanteSubtitle  guifg=#1e222a guibg=#56b6c2
hi AvanteReversedNormal  guifg=#161616 guibg=#d0d0d0
hi AvanteCommentFg  guifg=#525252
hi link AvantePromptInputBorder  NormalFloat
" hi AvantePromptInput  cleared
hi AvanteButtonDangerHover  guifg=#1e222a guibg=#e06c75
hi AvanteButtonDanger  guifg=#1e222a guibg=#abb2bf
hi AvanteButtonPrimaryHover  guifg=#1e222a guibg=#56b6c2
hi AvanteButtonPrimary  guifg=#1e222a guibg=#abb2bf
hi AvanteStateSpinnerCompacting  guifg=#1e222a guibg=#c678dd
hi AvanteButtonDefaultHover  guifg=#1e222a guibg=#a9cf8a
hi AvanteStateSpinnerThinking  guifg=#1e222a guibg=#c678dd
hi AvanteButtonDefault  guifg=#1e222a guibg=#abb2bf
hi AvanteStateSpinnerSucceeded  guifg=#1e222a guibg=#98c379
hi AvanteConfirmTitle  guifg=#1e222a guibg=#e06c75
hi AvanteToBeDeletedWOStrikethrough  guibg=#562c30
hi AvanteToBeDeleted  cterm=strikethrough gui=strikethrough guibg=#ffcccc
hi link AvanteInlineHint  Keyword
hi link AvantePopupHint  NormalFloat
hi link AvanteAnnotation  Comment
hi link AvanteSuggestion  Comment
hi AvanteSidebarWinSeparator  guifg=#131313 guibg=#131313
hi link AvanteSidebarNormal  NormalFloat
hi AvanteSidebarWinHorizontalSeparator  guifg=#262626 guibg=#131313
hi AvanteReversedTitle  guifg=#98c379
hi AvanteTitle     guifg=#1e222a guibg=#98c379
hi AvanteReversedThirdTitle  guifg=#353b45
hi AvanteThirdTitle  guifg=#abb2bf guibg=#353b45
hi AvanteStateSpinnerGenerating  guifg=#1e222a guibg=#ab9df2
hi AvanteStateSpinnerToolCalling  guifg=#1e222a guibg=#56b6c2
hi AvanteStateSpinnerFailed  guifg=#1e222a guibg=#e06c75
hi AvanteStateSpinnerSearching  guifg=#1e222a guibg=#c678dd
hi AvanteConflictIncomingLabel  guibg=#3f5c6b
hi AvanteConflictCurrent  cterm=bold gui=bold guibg=#562c30
hi AvanteConflictCurrentLabel  guibg=#6f393e
hi AvanteConflictIncoming  cterm=bold gui=bold guibg=#314753
hi link Timber.Insert   Search
hi link Timber.AddToBatch  Search
hi link Timber.LogPlaceholderSnippet  DiagnosticVirtualTextInfo
hi Timber.LogPlaceholderTime  cterm=italic gui=italic
" hi Timber.FloatingWindowEntrySeparator  cleared
hi Timber.SummaryEntryHeader  guifg=#131313
hi link Timber.SummaryEntryBodyHighlighted  PmenuSel
hi link Timber.SummaryJumpToLine  Search
hi link NvimSurroundHighlight  Visual
" hi CmpItemAbbrDeprecated  cleared
hi link BlinkCmpLabelDeprecated  CmpItemAbbrDeprecated
hi link BlinkCmpLabelDetail  CmpItemMenu
hi link BlinkCmpLabelDescription  CmpItemMenu
hi link BlinkCmpSource  CmpItemMenu
" hi CmpItemKind     cleared
hi link BlinkCmpKindInterface  CmpItemKindInterface
hi link BlinkCmpKindColor  CmpItemKindColor
hi link BlinkCmpKindTypeParameter  CmpItemKindTypeParameter
hi link BlinkCmpScrollBarThumb  PmenuThumb
hi link BlinkCmpScrollBarGutter  PmenuSbar
hi link BlinkCmpGhostText  NonText
hi link BlinkCmpMenuBorder  Pmenu
hi link BlinkCmpDocBorder  NormalFloat
hi link BlinkCmpDocSeparator  NormalFloat
hi link BlinkCmpDocCursorLine  Visual
hi link BlinkCmpSignatureHelp  NormalFloat
hi link BlinkCmpSignatureHelpBorder  NormalFloat
hi link BlinkCmpSignatureHelpActiveParameter  LspSignatureActiveParameter
hi lualine_transitional_lualine_a_command_to_lualine_b_normal  gui=nocombine guifg=#42be65 guibg=#161616
" hi None            cleared
hi BlinkCmpCursorLineMenuHack  guibg=#262626
" hi @spell          cleared
hi BlinkCmpCursorLineDocumentationHack  guibg=#262626
