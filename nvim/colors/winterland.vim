" Load the syntax highlighting defaults, if it's enabled.
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

set t_Co=256
let colors_name = "winterland"

if &background ==# 'dark'
    let bgcol='#19212b'
    let cmcol='#738d9d'
    let fgcol='#a7bcc9'
    let fncol='#ffffff'
    let kwcol='#738d9d'
    let tycol='#8bcadd'
else
    let bgcol='#d6e1e9'
    let cmcol='#738d9d'
    let fgcol='#2c4a78'
    let fncol='#000000'
    let kwcol='#20284e'
    let tycol='#3875a1'
endif

execute 'hi Include   guifg='.fgcol.' gui=NONE'
execute 'hi Macro     guifg='.fgcol.' gui=NONE'
execute 'hi Normal    guifg='.fgcol.' guibg='.bgcol.' gui=NONE'
execute 'hi PreCondit guifg='.fgcol.' gui=NONE'

" Comments
execute 'hi Comment guifg='.cmcol.' gui=NONE'
execute 'hi LineNr  guifg='.cmcol.' gui=NONE'

" Functions
execute 'hi Function guifg='.fncol.' gui=bold'
execute 'hi Constant guifg='.fncol.' gui=bold'

" Keywords
execute 'hi Conditional  guifg='.kwcol.' gui=NONE'
execute 'hi Label        guifg='.kwcol.' gui=NONE'
execute 'hi Statement    guifg='.kwcol.' gui=NONE'
execute 'hi StorageClass guifg='.kwcol.' gui=NONE'
execute 'hi Structure    guifg='.kwcol.' gui=NONE'

" Identifiers
execute 'hi Identifier guifg='.fgcol.' gui=NONE'
execute 'hi Operator   guifg='.fgcol.' gui=NONE'

" Types
execute 'hi Boolean   guifg='.tycol.' gui=NONE'
execute 'hi Character guifg='.tycol.' gui=NONE'
execute 'hi Float     guifg='.tycol.' gui=NONE'
execute 'hi Number    guifg='.tycol.' gui=NONE'
execute 'hi String    guifg='.tycol.' gui=NONE'
execute 'hi Type      guifg='.tycol.' gui=NONE'
