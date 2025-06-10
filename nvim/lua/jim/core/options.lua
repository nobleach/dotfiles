-- Configurations
vim.o.termguicolors = true
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")
-- Re-read buffer if it was modified outside of vim
vim.cmd([[
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
]])
-- vim.cmd([[autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE]])

vim.opt.clipboard = { "unnamed", "unnamedplus" }
vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank()]])
vim.o.completeopt = "menuone,noinsert"
vim.o.expandtab = true
vim.o.foldenable = false
vim.o.showcmd = true
vim.o.hidden = true
vim.o.ignorecase = false
vim.o.mouse = "a"
vim.o.pumheight = 15
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.title = true
vim.o.titlestring = "%<%F%=%l/%L - nvim"
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.softtabstop = 2
vim.bo.softtabstop = 2
vim.o.showtabline = 2
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.copyindent = true
vim.o.showmode = false
vim.o.background = "dark"
vim.o.undofile = true
vim.o.updatetime = 300
vim.wo.cursorline = true
vim.wo.number = true
vim.wo.signcolumn = "yes"
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir/"
vim.o.undofile = true
vim.o.incsearch = true
-- vim.g.user_emmet_leader_key = "<c-e>"
vim.o.colorcolumn = "72"
vim.opt.spell = true
vim.opt.spelllang = { "en_us" }
vim.opt.guicursor = {
	"n-v:block-Cursor/lCursor",
	"i-c-ci-ve:block-TermCursor",
}

vim.cmd([[
    set winbar=%=%m\ %f
]])

-- hide line numbers in terminal windows
vim.api.nvim_exec(
	[[
   au BufEnter term://* setlocal nonumber
]],
	false
)

vim.diagnostic.config({
	-- Use the default configuration
	-- virtual_lines = true,
	virtual_text = true,

	-- Alternatively, customize specific options
	-- virtual_lines = {
	-- 	-- Only show virtual line diagnostics for the current cursor line
	-- 	current_line = true,
	-- },
})
