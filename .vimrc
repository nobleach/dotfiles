if has('python3')
  silent! python3 1
endif
" Base Settings
set notimeout
set ttimeout
set ttimeoutlen=10
set encoding=utf8
set termencoding=utf8
let g:Powerline_symbols='unicode'
set noshowmode
set fillchars+=stl:\ ,stlnc:\
set nu
set showcmd
set showmatch
set colorcolumn=80
set cursorline
set ignorecase
set smartcase
set hlsearch
set incsearch
set laststatus=2
set wildmenu
set nobackup
set noswapfile
syntax on
set expandtab
set shiftwidth=2
set softtabstop=2
set t_Co=256
set background=dark
let g:hybrid_custom_term_colors = 1
colorscheme distinguished
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
set backspace=indent,eol,start
set formatoptions+=r
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Disable auto-comment"
set mouse=a
set suffixesadd+=.js
set nocompatible              " be iMproved
filetype off                  " required!
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set diffopt+=vertical

""""""""""" Here's the sauce, map leader to space so
""""""""""" I can use either thumb to trigger it
let mapleader="\<Space>"

""""""""""" Private personal settings that make me happy
nmap <Leader><Leader> V
vnoremap <leader><leader> <esc>
inoremap jk <esc>
" place cursor on new line in between delimeters
imap <C-o> <CR><Esc>O
autocmd BufWritePre *.js :%s/\s\+$//e
" Set JSON files as javascript
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
nnoremap <leader>] <C-w>r

" turn off search highlight
nnoremap <leader>, :nohlsearch<CR>
" toggle wrapping
nnoremap <leader>s :set wrap! <CR>
nnoremap <leader>0 :set relativenumber! <CR>
nnoremap <leader>g :Gstatus<CR>
" get last paste
nnoremap gp `[v`]`
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
" paste from OS clipboard
" set clipboard=unnamedplus
map <leader>p "*p
map <leader>P "*P
map <leader>y "*y
" Yank entire buffer with gy
nmap gy :%y+<cr>
" Useful mappings for managing tabs
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove

" Emacs bindings in command line mode
cnoremap <c-a> <home>
cnoremap <c-e> <end>

" Turn on folds
nnoremap <leader>f :setlocal foldmethod=indent<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" jump between windows
nmap <leader>k <C-w>k
nmap <leader>j <C-w>j
nmap <leader>h <C-w>h
nmap <leader>l <C-w>l
" Navigate through tabs without leaving the home row
noremap <C-l> gt
noremap <C-h> gT
"
" Weird random things
:nnoremap go :vertical wincmd f<CR>
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
autocmd BufWritePre * :%s/\s\+$//e
:noremap ga :%! python -m json.tool<CR>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
" Fixes common typos
command! W w
command! Q q
map <F1> <Esc>
imap <F1> <Esc>
" Crazy flying pinky
cnoremap w' w<CR>

" Formatting, TextMate-style
nnoremap Q gqip
vnoremap Q gq

" Split line (sister to [J]oin lines)
" The normal use of S is covered by cc, so don't worry about shadowing it.
nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w

" set filetype
nnoremap _js :set ft=javascript<CR>

" Removes doc lookup binding because it's easy to fat finger and never useful.
nmap K k
vmap K k

" Split window vertically or horizontally *and* switch to the new split!
nmap <silent> <leader>hs :split<Bar>:wincmd j<CR>
nmap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Set up VimPlug
call plug#begin('~/.vim/plugged')

" My bundles here:
" original repos on GitHub
" Plug 'mileszs/ack.vim'
" let g:agprg="ag --column"
" Let's try and replace Ack!
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
nnoremap <C-p> :Files<cr>

" Plug 'kien/ctrlp.vim'
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\.git',
"   \ }
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.tmp/*,*/.sass-cache/*,*/node_modules/*,*.keep,*.DS_Store,*/dist/*
" let g:ctrlp_custom_ignore = {
"     \ 'dir':  '\v(reports|node_modules|bower_components|scripts-cov|src-cov|\.git|\.svn|\.hg).*$',
"     \ 'file': '\v\.(DS_Store|png|jpg|gif|bak|pdf)$',
"     \ }
"
" Plug 'tacahiroy/ctrlp-funky'
" let g:ctrlp_extensions = ['funky']
" nnoremap <Leader>fu :CtrlPFunky<Cr>
" " narrow the list down with a word under cursor
" nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>)

Plug 'tpope/vim-commentary'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#buf_min_count = 10
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_warning = ''
let g:airline_theme='powerlineish'

" Plug 'edkolev/tmuxline.vim'
" let g:tmuxline_preset = {
"       \'a'    : '#S',
"       \'b'    : '#W',
"       \'c'    : '#H',
"       \'win'  : '#I #W',
"       \'cwin' : '#I #W',
"       \'x'    : '#(tmux-spotify-info)',
"       \'y'    : '%R %a %Y',
"       \'z'    : '#(tmux-battery)'}

Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

Plug 'ryanoasis/vim-webdevicons'
" let g:webdevicons_enable_airline_tabline = 0
" let g:webdevicons_enable_airline_statusline = 0
Plug 'idanarye/vim-merginal'
nnoremap <leader>m :MerginalToggle<CR>
" Plug 'scrooloose/syntastic'
" let g:syntastic_check_on_open=0
" let g:syntastic_quiet_messages={'level': 'warnings'}
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_error_symbol = '❌'
" let g:syntastic_style_error_symbol = '⁉️'
" let g:syntastic_warning_symbol = '⚠️'
" let g:syntastic_style_warning_symbol = '💩'
" highlight link SyntasticErrorSign SignColumn
" highlight link SyntasticWarningSign SignColumn
" highlight link SyntasticStyleErrorSign SignColumn
" highlight link SyntasticStyleWarningSign SignColumn

Plug 'majutsushi/tagbar'
nmap <leader>y :TagbarToggle<CR>

Plug 'jbgutierrez/vim-babel'

Plug 'terryma/vim-expand-region'
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

Plug 'Yggdroot/indentLine'
let g:indentLine_color_term = 239

Plug 'matze/vim-move'
let g:move_key_modifier = 'C'

" Codi Live REPL
Plug 'metakirby5/codi.vim'

Plug 'tommcdo/vim-exchange'
Plug 'raichoo/purescript-vim'
Plug 'leafgarland/typescript-vim'
Plug 'udalov/kotlin-vim'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'heavenshell/vim-jsdoc'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

Plug 'mattn/emmet-vim'
" Emmet complete
imap hh <C-y>,
imap <C-e> <C-y>,

Plug 'mklabs/vim-backbone'
Plug 'groenewege/vim-less'
Plug 'nono/vim-handlebars'
Plug 'posva/vim-vue'
Plug 'digitaltoad/vim-jade'
Plug 'nikvdp/ejs-syntax'
Plug 'lambdatoast/elm.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'racer-rust/vim-racer'
set hidden
let g:racer_cmd = "~/.cargo/bin/racer"
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files"
Plug 'samuelsimoes/vim-jsx-utils'
nnoremap <leader>ja :call JSXEncloseReturn()<CR>
nnoremap <leader>ji :call JSXEachAttributeInLine()<CR>
nnoremap <leader>je :call JSXExtractPartialPrompt()<CR>
Plug 'mvolkmann/vim-js-arrow-function'

Plug 'vim-scripts/forth.vim'
Plug 'rizzatti/dash.vim'
Plug 'iandoe/vim-osx-colorpicker'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
nmap <leader>b :Gblame<CR>

Plug 'tpope/vim-unimpaired'
Plug 'maksimr/vim-jsbeautify'
Plug 'einars/js-beautify'
" let g:config_Beautifier = {}
" let g:config_Beautifier['js'] = {}
" let g:config_Beautifier['js'].indent_size = '2'
" let g:config_Beautifier['html'] = {}
" let g:config_Beautifier['html'].indent_size = '2'
map <leader>e :call JsBeautify()<cr>
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'sjl/gundo.vim'
if has('gui_running')
  set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types:h16
  set transparency=0
else
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 let g:UltiSnipsExpandTrigger="<c-b>"
 let g:UltiSnipsJumpForwardTrigger="<c-f>"
  " let g:UltiSnipsJumpBackwardTrigger="<s-t>"
  " let g:UltiSnipsExpandTrigger="<c-j>"
  " let g:UltiSnipsJumpForwardTrigger="<c-j>"
  " let g:UltiSnipsJumpBackwardTrigger="<c-k>"
endif
" Denite
Plug 'Shougo/denite.nvim'
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction
nnoremap <leader>8 :<C-u>DeniteCursorWord grep:.<CR>
" End Denite

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
" allow <enter> to select snippet completion
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() :
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1 " Smart case
let g:deoplete#enable_refresh_always = 0 " Stop the weird sorting redraw
let g:deoplete#max_abbr_width = 0 " Allow for wide menu
let g:deoplete#max_menu_width = 0 " Allow for tall menu
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> <leader>a  :<C-u>CocList diagnostics<cr>
set completeopt-=preview

if !exists('g:deoplete#omni#input_patterns')
      let g:deoplete#omni#input_patterns = {}
  endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
Plug 'Quramy/tsuquyomi'

Plug 'nobleach/vim-solo'
nnoremap <leader>o :call ToggleOnly()<cr>

" Add plugins to &runtimepath
call plug#end()

" Markdown related stuff
let g:instant_markdown_slow = 1
" let g:instant_markdown_autostart = 0
set shell=bash

filetype plugin indent on     " required!
" This will allow you to save files that you forgot to open with sudo:
cmap w!! %!sudo tee > /dev/null %

" Function to rename the variable under the cursor
nnoremap <leader>r :call Rnvar()<CR>
function! Rnvar()
  let word_to_replace = expand("<cword>")
  let replacement = input("new name: ")
  execute '%s/\(\W\)' . word_to_replace . '\(\W\)/\1' . replacement . '\2/gc'
endfunction
" Function to extract method from highlighted text
vnoremap <leader>x :call ExtractMethod()<CR>
function! ExtractMethod() range
  let name = inputdialog("Name of new method:")
  '<
  exe "normal! O\<BS>" . name .": function() {\<Esc>"
  '>
  exe "normal! o\<CR>},\<Esc>k"
  normal! j%
  normal! kf(
  exe "normal! yyPi// = \<Esc>wdwA;\<Esc>"
  normal! ==
  normal! j0w
endfunction
" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
