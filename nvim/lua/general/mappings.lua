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

-- Fix Y
vim.api.nvim_set_keymap('n', 'Y', 'yy',
    {noremap = true, silent = true})

-- Close window
vim.api.nvim_set_keymap('n', 'gq', '<cmd>q<CR>',
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
vim.api.nvim_set_keymap('n', 'ga', '<cmd>%! python3 -m json.tool<CR>',
  {noremap = true, silent = true})

-- File Tree
vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>NvimTreeToggle<cr>',
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'R', '<cmd>NvimTreeRefresh<cr>',
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>9', '<cmd>NvimTreeFindFile<cr>',
  {noremap = true, silent = true})

-- Telescope
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>Telescope find_files hidden=true<cr>',
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Telescope live_grep<cr>',
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>8', "<cmd>lua require('telescope.builtin').grep_string { search = vim.fn.expand(\"<cword>\") }<CR>",
  {noremap = true, silent = true})

-- LSP Diagnostics
vim.api.nvim_set_keymap('n', '<leader>xx', '<cmd>TroubleToggle<cr>',
  {silent = true, noremap = true})

-- LSP Code Actions
vim.api.nvim_set_keymap('n', '<leader>xa', '<cmd>CodeActionMenu<cr>',
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', 'xf', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>',
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
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>',
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.signature_help()<CR>',
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev())<CR>',
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next())<CR>',
  {silent = true, noremap = true})

-- Search and replace
vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>Search<CR>',
  {silent = true, noremap = true})

-- Nvim DAP
vim.api.nvim_set_keymap('n', '<leader>da', "<cmd>lua require('debugHelper').attach()<CR>",
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>dh', "<cmd>lua require'dap'.toggle_breakpoint()<CR>",
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>di', "<cmd>lua require'dap.ui.widgets'.hover()<CR>",
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>du', "<cmd>lua require('dapui').toggle()<CR>",
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>dt', "lua require'dap'.step_out()<CR>",
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>do', "lua require'dap'.step_into()<CR>",
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>dr', "lua require'dap'.step_over()<CR>",
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>ds', "lua require'dap'.stop()<CR>",
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>dn', "lua require'dap'.continue()<CR>",
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>dk', "lua require'dap'.up()<CR>",
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>dj', "lua require'dap'.down()<CR>",
  {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>d_', "lua require'dap'.run_last()<CR>",
  {silent = true, noremap = true})

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>df', "<cmd>Telescope dap frames<CR>",
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>dc', "<cmd>Telescope dap commands<CR>",
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>db', "<cmd>Telescope dap list_breakpoints<CR>",
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>rr', "<cmd>lua require'telescope.builtin'.lsp_references{}<CR>",
  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>xb', "<cmd>Telescope git_branches<CR>",
{noremap = true, silent = true})

-- Git Blame
vim.api.nvim_set_keymap('n', '<leader>b', "<cmd>ToggleBlameLine<CR>",
  {noremap = true, silent = true})

-- Sidebar
vim.api.nvim_set_keymap('n', '<leader>sb', "<cmd>SidebarNvimToggle<CR>",
  {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>p', "<cmd>Telescope neoclip plus<CR>",
  {noremap = true, silent = true})

-- Refactoring
vim.api.nvim_set_keymap('v', '<Leader>re', [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]],
  {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap('v', '<Leader>rf', [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]],
  {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap('v', '<Leader>rv', [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]],
  {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap('v', '<Leader>ri', [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
  {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap('n', '<Leader>ri', [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
  {noremap = true, silent = true, expr = false})

-- Saga
-- vim.keymap.set("n", "gl", require("lspsaga.finder").lsp_finder, { silent = true,noremap = true })
-- vim.keymap.set("n", "<leader>xs", require("lspsaga.signaturehelp").signature_help, { silent = true,noremap = true})
-- vim.keymap.set("n", "<leader>xl", '<cmd>LSoutlineToggle<CR>', { silent = true,noremap = true})
-- vim.keymap.set("n", "<leader>xr", require("lspsaga.rename").lsp_rename, { silent = true,noremap = true })
