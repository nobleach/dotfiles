-- TreeSitter
 require("nvim-treesitter.configs").setup {
     ensure_installed = "all",
     rainbow = {
         enable = true,
         extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
         max_file_lines = 1000 -- Do not enable for files with more than 1000 lines, int
     },
     refactor = {
         highlight_definitions = {enable = true},
         -- highlight_current_scope = {enable = true},
         smart_rename = {
             enable = true,
             keymaps = {smart_rename = "grr"},
             navigation = {
                 enable = true,
                 keymaps = {
                     goto_definition = "gnd",
                     list_definitions = "gnD",
                     list_definitions_toc = "gO",
                     goto_next_usage = "<a-*>",
                     goto_previous_usage = "<a-#>"
                 }
             }
         }
     },
     highlight = {enable = {enabled = true, use_languagetree = true}},
     autotag = {enable = true}
 }

-- Colorizer
require'colorizer'.setup({'html', 'css', 'javascript'}, {
    RGB = true,
    RRGGBB = true,
    RRGGBBAA = true,
    rgb_fn = true,
    hsl_fn = true,
    css = true,
    css_fn = true
})

-- Auto pairs
require('nvim-autopairs').setup()

-- Neogit Setup
require('neogit').setup {}

--Map blankline
-- vim.g.indent_blankline_char = "┊"
vim.g.indent_blankline_char = "│"
vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile'}
vim.g.indent_blankline_char_highlight = 'LineNr'

vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_show_first_indent_level = false
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {'class', 'function', 'method', '^if', '^while', '^for', '^object', '^table', 'block', 'arguments'}
vim.g.indent_blankline_filetype = {'json','lua', 'terraform', 'javascript', 'javascriptreact'}
-- vim.g.indent_blankline_indent_level = 3

-- Toggle to disable mouse mode and indentlines for easier paste
ToggleMouse = function()
  if vim.o.mouse == 'a' then
    vim.cmd[[IndentBlanklineDisable]]
    vim.wo.signcolumn='no'
    vim.o.mouse = 'v'
    vim.wo.number = false
    print("Mouse disabled")
  else
    vim.cmd[[IndentBlanklineEnable]]
    vim.wo.signcolumn='yes'
    vim.o.mouse = 'a'
    vim.wo.number = true
    print("Mouse enabled")
  end
end

vim.api.nvim_set_keymap('n', '<F10>', '<cmd>lua ToggleMouse()<cr>', { noremap = true })
