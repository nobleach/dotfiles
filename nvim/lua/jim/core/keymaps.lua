-- Use <spacebar> as <leader>
vim.g.mapleader = ' '

local keymap = vim.keymap

-- Clear highlights
keymap.set('n', '<leader>,', '<cmd>noh<cr>', 
  {noremap = true, silent = true})

-- Use use double leader to select linewise
keymap.set('n', '<leader><leader>', 'V',
                        {noremap = true, silent = true})
keymap.set('v', '<leader><leader>', [[<esc>]],
                        {noremap = true, silent = true})

-- Quick ESC
keymap.set('i', 'jk', [[<esc>]],
  {noremap = true, silent = true})

-- Fix Y
keymap.set('n', 'Y', 'yy',
    {noremap = true, silent = true})

-- Close window
keymap.set('n', 'gq', '<cmd>q<CR>',
  {noremap = true, silent = true})

-- Set relative numbering
keymap.set('n', '<leader>0', '<cmd>set relativenumber!<cr>',
  {noremap = true, silent = true})

-- Swap splits
keymap.set('n', '<leader>]', [[<C-w>r]],
  {noremap = true, silent = true})

-- Easily navigate splits
keymap.set('n', '<leader>h', [[<C-w>h]],
  {noremap = true, silent = true})
keymap.set('n', '<leader>l', [[<C-w>l]],
  {noremap = true, silent = true})
keymap.set('n', '<leader>j', [[<C-w>j]],
  {noremap = true, silent = true})
keymap.set('n', '<leader>k', [[<C-w>k]],
  {noremap = true, silent = true})

-- Easily navigate tabs
keymap.set('n', '<C-h>', [[gT]],
  {noremap = true, silent = true})
keymap.set('n', '<C-l>', [[gt]],
  {noremap = true, silent = true})

-- Paste on next/new line
keymap.set('n', 'gn', '<cmd>pu<cr>==',
  {noremap = true, silent = true})

-- Run through JSON tool
keymap.set('n', 'ga', '<cmd>%! python3 -m json.tool<CR>',
  {noremap = true, silent = true})

-- LSP Diagnostics
keymap.set('n', '<leader>xx', '<cmd>TroubleToggle<cr>',
  {silent = true, noremap = true})

-- LSP Code Actions
keymap.set('n', '<leader>xa', '<cmd>CodeActionMenu<cr>',
  {silent = true, noremap = true})
keymap.set('n', 'xf', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>',
  {silent = true, noremap = true})

-- NeoGit
keymap.set('n', '<leader>g', '<cmd>Neogit kind=split<CR>',
  {silent = true, noremap = true})

-- Search and replace
keymap.set('n', '<C-f>', '<cmd>Search<CR>',
  {silent = true, noremap = true})

-- Nvim DAP
--[[ keymap.set('n', '<leader>da', "<cmd>lua require('debugHelper').attach()<CR>",
  {silent = true, noremap = true})
keymap.set('n', '<leader>dh', "<cmd>lua require'dap'.toggle_breakpoint()<CR>",
  {silent = true, noremap = true})
keymap.set('n', '<leader>di', "<cmd>lua require'dap.ui.widgets'.hover()<CR>",
  {silent = true, noremap = true})
keymap.set('n', '<leader>du', "<cmd>lua require('dapui').toggle()<CR>",
  {silent = true, noremap = true})
keymap.set('n', '<leader>dt', "lua require'dap'.step_out()<CR>",
  {silent = true, noremap = true})
keymap.set('n', '<leader>do', "lua require'dap'.step_into()<CR>",
  {silent = true, noremap = true})
keymap.set('n', '<leader>dr', "lua require'dap'.step_over()<CR>",
  {silent = true, noremap = true})
keymap.set('n', '<leader>ds', "lua require'dap'.stop()<CR>",
  {silent = true, noremap = true})
keymap.set('n', '<leader>dn', "lua require'dap'.continue()<CR>",
  {silent = true, noremap = true})
keymap.set('n', '<leader>dk', "lua require'dap'.up()<CR>",
  {silent = true, noremap = true})
keymap.set('n', '<leader>dj', "lua require'dap'.down()<CR>",
  {silent = true, noremap = true})
keymap.set('n', '<leader>d_', "lua require'dap'.run_last()<CR>",
  {silent = true, noremap = true})

-- Telescope
keymap.set('n', '<leader>df', "<cmd>Telescope dap frames<CR>",
  {noremap = true, silent = true})
keymap.set('n', '<leader>dc', "<cmd>Telescope dap commands<CR>",
  {noremap = true, silent = true})
keymap.set('n', '<leader>db', "<cmd>Telescope dap list_breakpoints<CR>",
  {noremap = true, silent = true})
keymap.set('n', '<leader>rr', "<cmd>lua require'telescope.builtin'.lsp_references{}<CR>",
  {noremap = true, silent = true})
keymap.set('n', '<leader>xb', "<cmd>Telescope git_branches<CR>",
{noremap = true, silent = true}) ]]

-- Git Blame
keymap.set('n', '<leader>b', "<cmd>ToggleBlameLine<CR>",
  {noremap = true, silent = true})

-- Sidebar
keymap.set('n', '<leader>sb', "<cmd>SidebarNvimToggle<CR>",
  {noremap = true, silent = true})

keymap.set('n', '<leader>p', "<cmd>Telescope neoclip plus<CR>",
  {noremap = true, silent = true})

-- Refactoring
keymap.set('v', '<Leader>re', [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]],
  {noremap = true, silent = true, expr = false})
keymap.set('v', '<Leader>rf', [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]],
  {noremap = true, silent = true, expr = false})
keymap.set('v', '<Leader>rv', [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]],
  {noremap = true, silent = true, expr = false})
keymap.set('v', '<Leader>ri', [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
  {noremap = true, silent = true, expr = false})
keymap.set('n', '<Leader>ri', [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
  {noremap = true, silent = true, expr = false})

-- Saga
-- vim.keymap.set("n", "gl", require("lspsaga.finder").lsp_finder, { silent = true,noremap = true })
-- vim.keymap.set("n", "<leader>xs", require("lspsaga.signaturehelp").signature_help, { silent = true,noremap = true})
-- vim.keymap.set("n", "<leader>xl", '<cmd>LSoutlineToggle<CR>', { silent = true,noremap = true})
-- vim.keymap.set("n", "<leader>xr", require("lspsaga.rename").lsp_rename, { silent = true,noremap = true })

