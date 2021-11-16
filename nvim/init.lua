require ('general.config')
require('plugins')
require('status-line')
require('sidebar')
require('lsp')
require('_cmp')
require('quality')
require('diffview')
require('general.personal')
require ('general.mappings')

--For Vim-Move
vim.cmd[[
let g:move_map_keys = 0
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
vmap <C-h> <Plug>MoveBlockLeft
vmap <C-l> <Plug>MoveBlockRight
nmap <C-k> <Plug>MoveLineUp
nmap <C-j> <Plug>MoveLineDown
]]

vim.cmd[[set completeopt=menuone,noselect]]

vim.cmd[[ hi IndentBlankLineChar guifg=#46424c gui=nocombine ]]
vim.cmd[[ hi IndentBlankLineSpaceChar guifg=#00ff00 gui=nocombine ]]
vim.cmd[[ hi IndentBlankLineSpaceCharBlankLine guifg=#00ffff gui=nocombine ]]
vim.cmd[[ hi IndentBlankLineContextHighlight guifg=#e98d26 gui=nocombine ]]
