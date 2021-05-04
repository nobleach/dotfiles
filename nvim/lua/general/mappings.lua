-- Reload config
vim.api.nvim_set_keymap('n', '<leader>sv', [[<cmd>source ~/.config/nvim/init.lua<CR>]],
                        {noremap = true, silent = true})

-- Use use double leader to select linewise
vim.api.nvim_set_keymap('n', '<leader><leader>', 'V',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<leader><leader>', [[<esc>]],
                        {noremap = true, silent = true})

-- Quick ESC
vim.api.nvim_set_keymap('i', 'jk', [[<esc>]],
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

-- LSP Diagnostics
vim.api.nvim_set_keymap('n', '<leader>xx', '<cmd>LspTroubleToggle<cr>',
  {silent = true, noremap = true})

-- NeoGit
vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>Neogit kind=split<CR>',
  {silent = true, noremap = true})

