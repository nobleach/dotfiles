-- Clear highlights
vim.api.nvim_set_keymap('n', '<leader>,', '<cmd>noh<cr>', 
  {noremap = true, silent = true})

-- Use use double leader to select linewise
vim.api.nvim_set_keymap('n', '<leader><leader>', 'V',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<leader><leader>', [[<esc>]],
                        {noremap = true, silent = true})

-- Quick ESC
vim.api.nvim_set_keymap('i', 'jk', [[<esc>]],
  {noremap = true, silent = true})

-- Set relative numbering
vim.api.nvim_set_keymap('n', '<leader>0', '<cmd>set relativenumber!<cr>',
  {noremap = true, silent = true})

-- Swap splits
vim.api.nvim_set_keymap('n', '<leader>]', [[<C-w>r]],
  {noremap = true, silent = true})

-- Easily navigate splits
vim.api.nvim_set_keymap('n', '<leader>h', [[<C-w>h]],
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>l', [[<C-w>l]],
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>j', [[<C-w>j]],
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>k', [[<C-w>k]],
  {noremap = true, silent = true})

-- Easily navigate tabs
vim.api.nvim_set_keymap('n', '<C-h>', [[gT]],
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', [[gt]],
  {noremap = true, silent = true})

-- Paste on next/new line
vim.api.nvim_set_keymap('n', 'gn', '<cmd>pu<cr>==',
  {noremap = true, silent = true})

-- Run through JSON tool
vim.api.nvim_set_keymap('n', 'ga', '<cmd>%! python -m json.tool<CR>',
  {noremap = true, silent = true})

-- File Tree
vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>NvimTreeToggle<cr>',
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'R', '<cmd>NvimTreeRefresh<cr>',
  {noremap = true, silent = true})

-- Telescope
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>Telescope find_files<cr>',
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Telescope live_grep<cr>',
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>8', "<cmd>lua require('telescope.builtin').grep_string { search = vim.fn.expand(\"<cword>\") }<CR>",
  {noremap = true, silent = true})

-- LSP Diagnostics
vim.api.nvim_set_keymap('n', '<leader>xx', '<cmd>LspTroubleToggle<cr>',
  {silent = true, noremap = true})

-- NeoGit
vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>Neogit kind=split<CR>',
  {silent = true, noremap = true})

-- LSP
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>',
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>',
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR><CR>',
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.signature_help()<CR>',
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',
  {silent = true, noremap = true})

-- Search and replace
vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>Search<CR>',
  {silent = true, noremap = true})
