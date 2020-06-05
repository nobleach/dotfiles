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
set updatetime=300
syntax on
set expandtab
set shiftwidth=2
set softtabstop=2
set t_Co=256
let &t_ut=''
set background=dark
let g:hybrid_custom_term_colors = 1
" colorscheme gruvbox
colorscheme distinguished
set fillchars=vert:┃
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
highlight Pmenu ctermbg=236 guibg=236
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
" Triger `autoread` when files changes on disk
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

""""""""""" Here's the sauce, map leader to space so
""""""""""" I can use either thumb to trigger it
let mapleader="\<Space>"

""""""""""" Private personal settings that make me happy
nmap <Leader><Leader> V
vnoremap <leader><leader> <esc>
inoremap jk <esc>
" Navigate through tabs without leaving the home row
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap H ^
nnoremap L $
" use tab and shift tab to indent and de-indent code
nnoremap <Tab>   >>
nnoremap <S-Tab> <<
vnoremap <Tab>   >><Esc>gv
vnoremap <S-Tab> <<<Esc>gv
autocmd BufWritePre *.js :%s/\s\+$//e
" Set JSON files as javascript
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
autocmd BufNewFile,BufRead *.jsx set filetype=javascript
nnoremap <leader>] <C-w>r

" Paste above and below with indent
nnoremap gn :pu<CR>==
nnoremap gp :pu!<CR>==

" turn off search highlight
nnoremap <leader>, :nohlsearch<CR>
" toggle wrapping
nnoremap <leader>s :set wrap! <CR>
nnoremap <leader>0 :set relativenumber! <CR>
" get last paste
nnoremap gl `[v`]`
" toggle gundo
" nnoremap <leader>u :GundoToggle<CR>
" paste from OS clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>y "+y
vnoremap <leader>y "+y
vnoremap <leader>p "+p
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

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" jump between windows
nmap <leader>k <C-w>k
nmap <leader>j <C-w>j
nmap <leader>h <C-w>h
nmap <leader>l <C-w>l
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
vmap K k

" Split window vertically *and* switch to the new split!
nmap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Terminal mappings
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif
" Set up VimPlug
call plug#begin('~/.config/nvim/plugged')
" Set up editor to use .editorconfig
Plug 'editorconfig/editorconfig-vim'
Plug 'bogado/file-line'

" Search and replace
Plug 'romgrk/searchReplace.vim'
nnoremap <silent><C-f> :Search<CR>

" Get ultisnips loaded BEFORE coc.nvim
" Plug 'SirVer/ultisnips'
" let g:UltiSnipsSnippetDirectories = ['/home/jim/.config/nvim/UltiSnips']
Plug 'honza/vim-snippets'
" let g:UltiSnipsExpandTrigger="<c-b>"
" let g:UltiSnipsJumpForwardTrigger="<c-f>"
"  let g:UltiSnipsJumpBackwardTrigger="<s-t>"
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
set  runtimepath+=/usr/bin/fzf
Plug 'yuki-ycino/fzf-preview.vim'
" Plug 'junegunn/fzf.vim'
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
" command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
" nnoremap <C-p> :Files<CR>
" nnoremap <leader>f :Find<CR>
nnoremap <C-p> :FzfPreviewProjectFiles<CR>
nnoremap <leader>f :FzfPreviewProjectGrep .<CR>

Plug 'Shougo/denite.nvim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes
Plug 'Shougo/deoplete.nvim'
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
"
" allow <enter> to select snippet completion
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() :
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1 " Smart case
" let g:deoplete#enable_refresh_always = 0 " Stop the weird sorting redraw
" let g:deoplete#max_abbr_width = 0 " Allow for wide menu
" let g:deoplete#max_menu_width = 0 " Allow for tall menu
nmap <silent> [a <Plug>(coc-diagnostic-prev)
nmap <silent> ]a <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> <leader>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" set completeopt-=preview

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
" vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
" let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
" let g:coc_snippet_prev = '<c-k>'

" use vim-dispatch
Plug 'tpope/vim-dispatch'
" Plug 'radenling/vim-dispatch-neovim'
"
" Testing
Plug 'janko/vim-test'
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
let test#strategy = "neovim"
" let test#neovim#term_position = "topleft"
let test#neovim#term_position = "botright"
" let test#strategy = "dispatch"

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'bfredl/nvim-miniyank'
map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
map <leader>n <Plug>(miniyank-cycle)
map <leader>N <Plug>(miniyank-cycleback)
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
nmap <silent> <leader>m :Denite miniyank<CR>
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#buf_min_count = 10
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_warning = ''
let g:airline_theme='powerlineish'
" let g:airline_theme='gruvbox'

" Plug 'edkolev/tmuxline.vim'
" let g:tmuxline_preset = {
"       \'a'    : '#S',
"       \'b'    : '#W',
"       \'c'    : '#H',
"       \'win'  : '#I #W',
"       \'cwin' : '#I #W',
"       \'x'    : '#(tmux-slack-counter)',
"       \'y'    : '%R %a %Y',
"       \'z'    : '#(tmux-battery)'}
Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinSize=60

Plug 'ryanoasis/vim-webdevicons'
" let g:webdevicons_enable_airline_tabline = 0
" let g:webdevicons_enable_airline_statusline = 0


Plug 'terryma/vim-expand-region'
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

Plug 'Yggdroot/indentLine'
let g:indentLine_color_term = 239

Plug 'matze/vim-move'
" let g:move_key_modifier = 'C'
let g:move_map_keys = 0
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
vmap <C-h> <Plug>MoveBlockLeft
vmap <C-l> <Plug>MoveBlockRight

nmap <C-k> <Plug>MoveLineUp
nmap <C-j> <Plug>MoveLineDown

" Codi Live REPL
Plug 'metakirby5/codi.vim'

Plug 'tommcdo/vim-exchange'
" Plug 'airblade/vim-gitgutter'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'heavenshell/vim-jsdoc'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

" Vim Wiki
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

Plug 'mattn/emmet-vim'
" Emmet complete
imap hh <C-y>,
imap <C-e> <C-y>,

" One language plugin to rule them all
Plug 'sheerun/vim-polyglot'
set hidden
let g:racer_cmd = "~/.cargo/bin/racer"
" Plug 'samuelsimoes/vim-jsx-utils'
" nnoremap <leader>ja :call JSXEncloseReturn()<CR>
" nnoremap <leader>ji :call JSXEachAttributeInLine()<CR>
" nnoremap <leader>je :call JSXExtractPartialPrompt()<CR>
" Plug 'mvolkmann/vim-js-arrow-function'

Plug 'iandoe/vim-osx-colorpicker'
Plug 'tpope/vim-fugitive'
nmap <leader>b :Gblame<CR>
nnoremap <leader>g :Gstatus<CR>
nnoremap <leader>d :Gdiff<CR>
nnoremap <leader>3 :Gdiffsplit!<CR>
" nnoremap gdh :diffget //2<CR>
" nnoremap gdl :diffget //3<CR>

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
if has('gui_running')
  set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types:h16
  set transparency=0
endif

Plug 'nobleach/vim-solo'
nnoremap <leader>o :call ToggleOnly()<cr>

" UUID insert
nnoremap <leader>u i<C-r>=system('uuidgen')[:-2]<CR><Esc>

Plug 'davidoc/taskpaper.vim'
Plug 'lervag/vimtex'
" vimtex
let g:vimtex_view_method = 'zathura'
let g:vimtex_latexmk_progname = 'nvr'

" Add plugins to &runtimepath
call plug#end()

" Markdown related stuff
let g:instant_markdown_slow = 1
" let g:instant_markdown_autostart = 0

filetype plugin indent on     " required!
" This will allow you to save files that you forgot to open with sudo:
cmap w!! %!sudo tee > /dev/null %

" Function to log variable under the cursor
nnoremap <leader>c :call Logvar()<CR>
function! Logvar()
  let l:word_under_cursor = expand("<cword>")
  let l:logline = "console.log('" . l:word_under_cursor . "'," . " " . l:word_under_cursor . ");"
  execute "normal! o".l:logline
endfunction

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

function! CreateCenteredFloatingWindow()
    let width = float2nr(&columns * 0.6)
    let height = float2nr(&lines * 0.6)
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    autocmd BufWipeout <buffer> exe 'bwipeout '.s:buf
    tnoremap <buffer> <silent> <Esc> <C-\><C-n><CR>:bw!<CR>
endfunction

"##############################################################################
" Terminal Handling
"##############################################################################

" Set login shell for :terminal command so aliases work
set shell=/usr/bin/zsh

" When term starts, auto go into insert mode
autocmd TermOpen * startinsert

" Turn off line numbers etc
autocmd TermOpen * setlocal listchars= nonumber norelativenumber

function! ToggleTerm(cmd)
    if empty(bufname(a:cmd))
        call CreateCenteredFloatingWindow()
        call termopen(a:cmd, { 'on_exit': function('OnTermExit') })
    else
        bwipeout!
    endif
endfunction

function! ToggleScratchTerm()
    call ToggleTerm('zsh')
endfunction

function! ToggleLazyDocker()
    call ToggleTerm('lazydocker')
endfunction

function! ToggleLazyGit()
    call ToggleTerm('lazygit')
endfunction

function! OnTermExit(job_id, code, event) dict
    if a:code == 0
        bwipeout!
    endif
endfunction

nnoremap <leader>tg :call ToggleLazyGit()<cr>
nnoremap <leader>td :call ToggleLazyDocker()<cr>
nnoremap <leader>tt :call ToggleScratchTerm()<cr>
