" Maintainer:   Arnau Siches <http://github.com/arnau/>
" Version:      0.1
" Last Change:  February 9th, 2014
" Credits:      This is a modification of jellybeans.vim color scheme

" Copyright (c) 2009-2011 NanoTech
" Copyright (c) 2012-2014 Arnau Siches
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "teaspoon"

if has("gui_running") || &t_Co == 88 || &t_Co == 256
  let s:low_color = 0
else
  let s:low_color = 1
endif

" Color approximation functions by Henry So, Jr. and David Liang {{{
" Added to jellybeans.vim by Daniel Herbert

" returns an approximate grey index for the given grey level
fun! s:grey_number(x)
  if &t_Co == 88
    if a:x < 23
      return 0
    elseif a:x < 69
      return 1
    elseif a:x < 103
      return 2
    elseif a:x < 127
      return 3
    elseif a:x < 150
      return 4
    elseif a:x < 173
      return 5
    elseif a:x < 196
      return 6
    elseif a:x < 219
      return 7
    elseif a:x < 243
      return 8
    else
      return 9
    endif
  else
    if a:x < 14
      return 0
    else
      let l:n = (a:x - 8) / 10
      let l:m = (a:x - 8) % 10
      if l:m < 5
        return l:n
      else
        return l:n + 1
      endif
    endif
  endif
endfun

" returns the actual grey level represented by the grey index
fun! s:grey_level(n)
  if &t_Co == 88
    if a:n == 0
      return 0
    elseif a:n == 1
      return 46
    elseif a:n == 2
      return 92
    elseif a:n == 3
      return 115
    elseif a:n == 4
      return 139
    elseif a:n == 5
      return 162
    elseif a:n == 6
      return 185
    elseif a:n == 7
      return 208
    elseif a:n == 8
      return 231
    else
      return 255
    endif
  else
    if a:n == 0
      return 0
    else
      return 8 + (a:n * 10)
    endif
  endif
endfun

" returns the palette index for the given grey index
fun! s:grey_color(n)
  if &t_Co == 88
    if a:n == 0
      return 16
    elseif a:n == 9
      return 79
    else
      return 79 + a:n
    endif
  else
    if a:n == 0
      return 16
    elseif a:n == 25
      return 231
    else
      return 231 + a:n
    endif
  endif
endfun

" returns an approximate color index for the given color level
fun! s:rgb_number(x)
  if &t_Co == 88
    if a:x < 69
      return 0
    elseif a:x < 172
      return 1
    elseif a:x < 230
      return 2
    else
      return 3
    endif
  else
    if a:x < 75
      return 0
    else
      let l:n = (a:x - 55) / 40
      let l:m = (a:x - 55) % 40
      if l:m < 20
        return l:n
      else
        return l:n + 1
      endif
    endif
  endif
endfun

" returns the actual color level for the given color index
fun! s:rgb_level(n)
  if &t_Co == 88
    if a:n == 0
      return 0
    elseif a:n == 1
      return 139
    elseif a:n == 2
      return 205
    else
      return 255
    endif
  else
    if a:n == 0
      return 0
    else
      return 55 + (a:n * 40)
    endif
  endif
endfun

" returns the palette index for the given R/G/B color indices
fun! s:rgb_color(x, y, z)
  if &t_Co == 88
    return 16 + (a:x * 16) + (a:y * 4) + a:z
  else
    return 16 + (a:x * 36) + (a:y * 6) + a:z
  endif
endfun

" returns the palette index to approximate the given R/G/B color levels
fun! s:color(r, g, b)
  " get the closest grey
  let l:gx = s:grey_number(a:r)
  let l:gy = s:grey_number(a:g)
  let l:gz = s:grey_number(a:b)

  " get the closest color
  let l:x = s:rgb_number(a:r)
  let l:y = s:rgb_number(a:g)
  let l:z = s:rgb_number(a:b)

  if l:gx == l:gy && l:gy == l:gz
    " there are two possibilities
    let l:dgr = s:grey_level(l:gx) - a:r
    let l:dgg = s:grey_level(l:gy) - a:g
    let l:dgb = s:grey_level(l:gz) - a:b
    let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
    let l:dr = s:rgb_level(l:gx) - a:r
    let l:dg = s:rgb_level(l:gy) - a:g
    let l:db = s:rgb_level(l:gz) - a:b
    let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
    if l:dgrey < l:drgb
      " use the grey
      return s:grey_color(l:gx)
    else
      " use the color
      return s:rgb_color(l:x, l:y, l:z)
    endif
  else
    " only one possibility
    return s:rgb_color(l:x, l:y, l:z)
  endif
endfun

" returns the palette index to approximate the 'rrggbb' hex string
fun! s:rgb(rgb)
  let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
  let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
  let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0
  return s:color(l:r, l:g, l:b)
endfun

" sets the highlighting for the given group
fun! s:X(group, fg, bg, attr, lcfg, lcbg)
  if s:low_color
    let l:fge = empty(a:lcfg)
    let l:bge = empty(a:lcbg)

    if !l:fge && !l:bge
      exec "hi ".a:group." ctermfg=".a:lcfg." ctermbg=".a:lcbg
    elseif !l:fge && l:bge
      exec "hi ".a:group." ctermfg=".a:lcfg." ctermbg=NONE"
    elseif l:fge && !l:bge
      exec "hi ".a:group." ctermfg=NONE ctermbg=".a:lcbg
    endif
  else
    let l:fge = empty(a:fg)
    let l:bge = empty(a:bg)

    if !l:fge && !l:bge
      exec "hi ".a:group." guifg=#".a:fg." guibg=#".a:bg." ctermfg=".s:rgb(a:fg)." ctermbg=".s:rgb(a:bg)
    elseif !l:fge && l:bge
      exec "hi ".a:group." guifg=#".a:fg." guibg=NONE ctermfg=".s:rgb(a:fg)." ctermbg=NONE"
    elseif l:fge && !l:bge
      exec "hi ".a:group." guifg=NONE guibg=#".a:bg." ctermfg=NONE ctermbg=".s:rgb(a:bg)
    endif
  endif

  if a:attr == ""
    exec "hi ".a:group." gui=none cterm=none"
  else
    let noitalic = join(filter(split(a:attr, ","), "v:val !=? 'italic'"), ",")
    if empty(noitalic)
      let noitalic = "none"
    endif
    exec "hi ".a:group." gui=".a:attr." cterm=".noitalic
  endif
endfun
" }}}

call s:X("Normal","e8e8d3","222222","","White","")
set background=dark

if version >= 700
  call s:X("CursorLine","","111111","","","Black")
  call s:X("CursorColumn","","111111","","","Black")
  call s:X("ColorColumn","","111111","","","Black")
  call s:X("MatchParen","000000","ff6666","bold","","DarkCyan")

  " TODO: check
  call s:X("TabLine","000000","ff0000","italic","","Black")
  " TODO: check
  call s:X("TabLineFill","9098a0","","","","Black")
  " TODO: check
  call s:X("TabLineSel","000000","f0f0f0","italic,bold","Black","White")

  " Auto-completion
  call s:X("Pmenu","ffffff","606060","","White","Black")
  call s:X("PmenuSel","101010","eeeeee","","Black","White")
endif

" TODO: check
call s:X("Visual","000000","FF0066","","","Black")
call s:X("Cursor","000000","FF0066","","","")

call s:X("LineNr","343434","151515","none","Black","")
call s:X("Comment","888888","","italic","Grey","")
call s:X("Todo","ff0066","","bold","White","Black")

call s:X("StatusLine","787878","151515","italic","Black","White")
call s:X("StatusLineNC","343434","151515","italic","Black","White")
call s:X("VertSplit","000000","000000","italic","Black","Black")
" TODO: check
call s:X("WildMenu","f0a0c0","302028","","Magenta","")

call s:X("Folded","666666","151515","italic","Black","")
call s:X("FoldColumn","666666","151515","","","Black")
hi! link SignColumn FoldColumn

" TODO: check
call s:X("Title","ff0066","","bold","Green","")

call s:X("Constant","ff6666","","","Red","")
call s:X("Special","f1a491","","","Green","")
" TODO: check
call s:X("Delimiter","668799","","","Grey","")

call s:X("String","faff8a","","","Green","")
call s:X("StringDelimiter","fcfa6d","","","DarkGreen","")

call s:X("Identifier","efd14e","","italic","LightCyan","")
" TODO: check
call s:X("Structure","8fbfdc","","","LightCyan","")
call s:X("Function","ffb454","","","Yellow","")
call s:X("Statement","00C7E7","","","LightBlue","")
call s:X("PreProc","00C7E7","","","LightBlue","")
call s:X("PreProc","00C7E7","","","LightBlue","")

hi! link Operator Statement

call s:X("Type","ffb964","","","Yellow","")
call s:X("NonText","565656","222222","","Black","")

call s:X("SpecialKey","565656","151515","","Black","")

call s:X("Search","000000","ffffff","","Magenta","")

" TODO: check
"call s:X("Directory","dad085","","","Yellow","")
call s:X("ErrorMsg","","ff0066","","","DarkRed")
hi! link Error ErrorMsg
hi! link MoreMsg Special
call s:X("Question","ffffff","ff0066","","Green","")


" Spell Checking
" TODO: check
"call s:X("SpellBad","","902020","underline","","DarkRed")
"call s:X("SpellCap","","0000df","underline","","Blue")
"call s:X("SpellRare","","540063","underline","","DarkMagenta")
"call s:X("SpellLocal","","2D7067","underline","","Green")

" Diff
" TODO: check
"hi! link diffRemoved Constant
"hi! link diffAdded String

" VimDiff
" TODO: check
"call s:X("DiffAdd","","032218","","Black","DarkGreen")
"call s:X("DiffChange","","100920","","Black","DarkMagenta")
"call s:X("DiffDelete","220000","220000","","DarkRed","DarkRed")
"call s:X("DiffText","","000940","","","DarkRed")

" PHP Syntax {{{
" TODO: check
"hi! link phpFunctions Function
"call s:X("StorageClass","c59f6f","","","Red","")
"hi! link phpSuperglobal Identifier
"hi! link phpQuoteSingle StringDelimiter
"hi! link phpQuoteDouble StringDelimiter
"hi! link phpBoolean Constant
"hi! link phpNull Constant
"hi! link phpArrayPair Operator

" }}}
" Ruby Syntax {{{

hi! link rubySharpBang Constant
hi! link rubyClass Statement
call s:X("rubyIdentifier","FBCD00","","italic","DarkYellow","")
hi! link rubyConstant Type
hi! link rubyFunction Function

hi! link rubyInstanceVariable rubyIdentifier
call s:X("rubySymbol","7CE0FF","","","LightBlue","")
hi! link rubyGlobalVariable rubyInstanceVariable
hi! link rubyModule rubyClass
hi! link rubyControl Statement

hi! link rubyString String
hi! link rubyStringDelimiter StringDelimiter
hi! link rubyInterpolationDelimiter Identifier
hi! link rubyInterpolation Normal
hi! link rubyEscape Normal
hi! link rubyDelimEscape Normal

"rubyNestedParentheses
"rubyNestedCurlyBraces
"rubyNestedAngleBrackets
"rubyNestedSquareBrackets
"rubyRegexpParens
"rubyRegexpBrackets
"rubyLocalVariableOrMethod
"rubyBlockArgument
"rubyBlockParameterList
"rubyHeredocStart
"rubyAliasDeclaration2
"rubyAliasDeclaration
"rubyMethodDeclaration
"rubyClassDeclaration
"rubyModuleDeclaration
"rubyDefine
"rubyMethodBlock
"rubyBlock
"rubyDoBlock
"rubyCurlyBlock
"rubyArrayDelimiter
"rubyArrayLiteral
"rubyBlockExpression
"rubyCaseExpression
"rubyConditionalExpression
"rubyOptionalDoLine
"rubyRepeatExpression
"rubyMultilineComment
"rubyKeywordAsMethod

hi! link rubyRegexpDelimiter StringDelimiter
call s:X("rubyRegexp","ff6666","","","DarkMagenta","")
call s:X("rubyRegexpSpecial","ff0066","","","Magenta","")

hi! link rubyPredefinedIdentifier Constant

" }}}
" N3 and Turtle Syntax {{{

hi! link n3Verb Constant
"hi! link n3Verb Keyword
hi! link n3Declaration Keyword
hi! link n3ClassName Statement
hi! link n3PropertyName Statement
hi! link n3Separator Normal
hi! link n3EndStatement Normal
hi! link n3String String
hi! link n3StringDelim StringDelimiter
hi! link n3Number String
hi! link n3Langcode Constant
hi! link n3Datatype Constant
hi! link n3XMLLiteralRegion String

call s:X("n3URI","efd14e","","","DarkYellow","")
call s:X("n3Prefix","7CE0FF","","","LightBlue","")

  "HiLink n3Quantifier           keyword
  ""HiLink n3LName                Normal
  "HiLink n3Variable             Identifier


" }}}
" JavaScript Syntax {{{
hi! link javaScriptValue Constant
hi! link javaScriptRegexpString rubyRegexp
"}}}

" Git Gutter {{{

call s:X("n3Prefix","7CE0FF","","","LightBlue","")

" an added line
call s:X("GitGutterAdd", "00BB00", "000000", "", "Black", "")
" a changed line
call s:X("GitGutterChange", "FFAA00", "000000", "", "Black", "")
" at least one removed line
call s:X("GitGutterDelete", "BB0000", "000000", "", "Black", "")
" a changed line followed by at least one removed line
call s:X("GitGutterChangeDelete", "FFCC00", "000000", "", "Black", "")


" }}}

"" Plugins, etc.

"hi! link TagListFileName Directory
"call s:X("PreciseJumpTarget","B9ED67","405026","","White","Green")

" Manual overrides for 256-color terminals. Dark colors auto-map badly.
if !s:low_color
  hi StatusLineNC ctermbg=234
  hi Folded ctermbg=236
  hi FoldColumn ctermbg=236
  hi SignColumn ctermbg=0
  hi DiffAdd ctermbg=22
  hi DiffDelete ctermbg=52
  hi DiffChange ctermbg=17
  hi DiffText ctermbg=19
endif

" delete functions {{{
delf s:X
delf s:rgb
delf s:color
delf s:rgb_color
delf s:rgb_level
delf s:rgb_number
delf s:grey_color
delf s:grey_level
delf s:grey_number
" }}}
