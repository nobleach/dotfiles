-- Use <spacebar> as <leader>
vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Clear highlights
keymap.set("n", "<leader>,", "<cmd>noh<cr>", opts)

-- Use use double leader to select linewise
keymap.set("n", "<leader><leader>", "V", opts)
keymap.set("v", "<leader><leader>", [[<esc>]], opts)

-- Quick ESC
keymap.set("i", "jk", [[<esc>]], opts)

-- Fix Y
keymap.set("n", "Y", "yy", opts)

-- Close window
keymap.set("n", "gq", "<cmd>q<CR>", opts)
keymap.set("n", "<C-c>", "<cmd>q<CR>", opts)

-- Set relative numbering
keymap.set("n", "<leader>0", "<cmd>set relativenumber!<cr>", opts)

-- Swap splits
keymap.set("n", "<leader>]", [[<C-w>r]], opts)

-- Easily navigate splits
keymap.set("n", "<leader>h", [[<C-w>h]], opts)
keymap.set("n", "<leader>l", [[<C-w>l]], opts)
keymap.set("n", "<leader>j", [[<C-w>j]], opts)
keymap.set("n", "<leader>k", [[<C-w>k]], opts)

-- Easily navigate tabs
keymap.set("n", "<C-h>", [[gT]], opts)
keymap.set("n", "<C-l>", [[gt]], opts)
keymap.set("n", "te", ":tabedit<Return>")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Paste on next/new line
keymap.set("n", "gn", "<cmd>pu<cr>==", opts)

-- Run through JSON tool
keymap.set("n", "ga", "<cmd>%! python3 -m json.tool<CR>", opts)

-- LSP Diagnostics
--[[ keymap.set('n', '<leader>xx', '<cmd>TroubleToggle<cr>',
  {silent = true, noremap = true}) ]]

keymap.set("n", "<Leader>xf", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opts)
keymap.set("n", "\\f", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opts)

-- Refactoring
keymap.set(
	"v",
	"<Leader>re",
	[[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]],
	{ noremap = true, silent = true, expr = false }
)
keymap.set(
	"v",
	"<Leader>rf",
	[[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]],
	{ noremap = true, silent = true, expr = false }
)
keymap.set(
	"v",
	"<Leader>rv",
	[[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]],
	{ noremap = true, silent = true, expr = false }
)
keymap.set(
	"v",
	"<Leader>ri",
	[[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
	{ noremap = true, silent = true, expr = false }
)
keymap.set(
	"n",
	"<Leader>ri",
	[[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
	{ noremap = true, silent = true, expr = false }
)
keymap.set(
	"v",
	"<Leader>64e",
	[[ c<c-r>=system('base64',          @")<cr><esc> ]],
	{ noremap = true, silent = true, expr = false }
)
keymap.set(
	"v",
	"<Leader>64d",
	[[ c<c-r>=system('base64 --decode', @")<cr><esc> ]],
	{ noremap = true, silent = true, expr = false }
)

-- Saga
-- vim.keymap.set("n", "gl", require("lspsaga.finder").lsp_finder, { silent = true,noremap = true })
-- vim.keymap.set("n", "<leader>xs", require("lspsaga.signaturehelp").signature_help, { silent = true,noremap = true})
-- vim.keymap.set("n", "<leader>xl", '<cmd>LSoutlineToggle<CR>', { silent = true,noremap = true})
-- vim.keymap.set("n", "<leader>xr", require("lspsaga.rename").lsp_rename, { silent = true,noremap = true })
