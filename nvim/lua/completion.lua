local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')

-- skip it, if you use another global object
_G.MUtils= {}

vim.g.completion_confirm_key = ""
MUtils.completion_confirm=function()
  if vim.fn.pumvisible() ~= 0  then
    if vim.fn.complete_info()["selected"] ~= -1 then
      return vim.fn["compe#confirm"](npairs.esc("<cr>"))
    else
      return npairs.esc("<cr>")
    end
  else
    return npairs.autopairs_cr()
  end
end

-- Compe
require'compe'.setup {
    enabled = true,
    autocomplete = true,
    debug = false,
    min_length = 1,
    preselect = 'always',
    throttle_time = 80,
    source_timeout = 200,
    incomplete_delay = 400,
    max_abbr_width = 100,
    max_kind_width = 100,
    max_menu_width = 100,
    documentation = true,

    source = {
      vsnip = { priority = 1000; };
      nvim_lsp = { priority = 900; };
      path = { priority = 600; };
      treesitter = { priority = 500};
      sort = { priority = 500; };
      tags = { priority = 500; };
      spell = { priority = 500; };
      buffer = { priority = 500; };
      calc = { priority = 500; };
      nvim_lua = { priority = 500; };
    }
}
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport =
    {properties = {'documentation', 'detail', 'additionalTextEdits'}}

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif vim.fn.call("vsnip#available", {1}) == 1 then
        return t "<Plug>(vsnip-expand-or-jump)"
    elseif check_back_space() then
        return t "<Tab>"
    else
        return vim.fn['compe#complete']()
    end
end
_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-p>"
    elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
        return t "<Plug>(vsnip-jump-prev)"
    else
        return t "<S-Tab>"
    end
end

-- Signature completion helper
local Helper = require "compe.helper"
Helper.convert_lsp_orig = Helper.convert_lsp
Helper.convert_lsp = function(args)
  local response = args.response or {}
  local items = response.items or response
  for _, item in ipairs(items) do
    -- 2: method
    -- 3: function
    -- 4: constructor
    if item.insertText == nil and (item.kind == 2 or item.kind == 3 or item.kind == 4) then
      item.insertText = item.label .. "(${1})"
      item.insertTextFormat = 2
    end
  end
  return Helper.convert_lsp_orig(args)
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

vim.api.nvim_set_keymap("i", "<C-Space> ", "compe#complete()",
                        {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<CR>", "compe#confirm('<CR>')",
                        {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<C-e>", "compe#close('<C-e>')",
                        {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<C-n>", "compe#scroll({ 'delta': +4 })",
                        {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<C-p>", "compe#scroll({ 'delta': -4 })",
                        {noremap = true, silent = true, expr = true})
remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})
