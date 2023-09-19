local navic = require("nvim-navic")

local on_attach = function(client, bufnr)
    -- LSP Signature
    --[[ require"lsp_signature".on_attach({
      bind = true,
      handler_opts = {border = "single"}
    }) ]]

    local function buf_set_keymap(...)
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
      vim.api.nvim_buf_set_option(bufnr, ...)
    end

    -- Mappings. ***DO NOT CURRENTLY WORK - REFERENCE ONLY***
    local opts = {noremap = true, silent = true}
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<space>wa',
                   '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr',
                   '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl',
                   '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
                   opts)
    buf_set_keymap('n', '<space>D',
                   '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>',
                   opts)
    buf_set_keymap('n', '<space>e',
                   '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>',
                   opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',
                   opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',
                   opts)
    buf_set_keymap('n', '<space>q',
                   '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

    -- Set some keybinds conditional on server capabilities
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting_sync({},1500)]]
        vim.api.nvim_command [[augroup END]]
        buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>",
                       opts)
    end
    if client.server_capabilities.document_range_formatting then
        buf_set_keymap("v", "<space>f",
                       "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
    end

    -- Set autocommands conditional on server_capabilities
    if client.server_capabilities.document_highlight then
        vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
    end

end

-- Put nice little graphics by completion kinds
-- DISABLE if you start having trouble with LSP plugins
require('vim.lsp.protocol').CompletionItemKind = {
    '', -- Text
    '', -- Method
    '', -- Function
    '', -- Constructor
    '', -- Field
    '', -- Variable
    '', -- Class
    'ﰮ', -- Interface
    '', -- Module
    '', -- Property
    '', -- Unit
    '', -- Value
    '了', -- Enum
    '', -- Keyword
    '﬌', -- Snippet
    '', -- Color
    '', -- File
    '', -- Reference
    '', -- Folder
    '', -- EnumMember
    '', -- Constant
    '', -- Struct
    '', -- Event
    'ﬦ', -- Operator
    '', -- TypeParameter
}

-- Enable Snippet Support in Lsp
--[[ local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport =
    {properties = {'documentation', 'detail', 'additionalTextEdits'}} ]]
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- List LSP Servers here
local servers = {
  "bashls",
  "ccls",
  "crystalline",
  "cssls",
  -- "denols",
  "dockerls",
  "emmet_ls",
  "elixirls",
  "gopls",
  -- "graphql",
  "kotlin_language_server",
  "rust_analyzer",
  "solargraph",
  "svelte",
  "terraformls",
  -- "tsserver",
  "yamlls"
}
for _, lsp in ipairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities
  }
end

local nvim_lsp = require("lspconfig")

require("null-ls").setup({
    sources = {
        require("null-ls").builtins.diagnostics.eslint_d, -- eslint or eslint_d                     _d,
        require("null-ls").builtins.code_actions.eslint_d, -- eslint or eslint_d                    ,
        require("null-ls").builtins.formatting.eslint_d, -- prettier, eslint, eslint_d, or prettierd
    },
})

-- Add capabilities to cssls
nvim_lsp.cssls.setup {
  capabilities = capabilities,
}

-- Go config for gopls
nvim_lsp.gopls.setup{
  cmd = { "gopls" },
  filetypes = { "go", "gomod" },
  flags = {
    debounce_text_changes = 500,
  },
}

nvim_lsp.elixirls.setup{
  cmd = { "/home/jim/bin/elixir-ls/language_server.sh" };
}

-- Emmet config for emmet_ls
nvim_lsp.emmet_ls.setup{
  cmd = {'emmet-ls', '--stdio'};
  filetypes = {'html', 'css', 'javascriptreact', 'less', 'typescriptreact'};
  root_dir = function(fname)
    return vim.loop.cwd()
  end;
}

-- PHP LSP
nvim_lsp.phpactor.setup{}

nvim_lsp.kotlin_language_server.setup({
    cmd = { "/Users/jim.wharton/.local/bin/kotlin-language-server-source/server/build/install/server/bin/kotlin-language-server" }
})

--[[ nvim_lsp.tsserver.setup {
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    flags = {allow_incremental_sync = true, debounce_text_changes = 500},
    on_attach = function(client, bufnr)
        local ts_utils = require("nvim-lsp-ts-utils")

        -- Navic winbar integration
        navic.attach(client, bufnr)

        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.document_range_formatting = false

        -- defaults
        ts_utils.setup {
            disable_commands = false,
            debug = false,
            enable_import_on_completion = true,
            import_on_completion_timeout = 5000,
            complete_parens = false,
            signature_help_in_parens = true,
        }

        -- required to enable ESLint code actions and formatting
        ts_utils.setup_client(client)

        -- no default maps, so you may want to define some here
        -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", {silent = true})
        vim.api.nvim_buf_set_keymap(bufnr, "n", "qq", ":TSLspFixCurrent<CR>", {silent = true})
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gR", ":TSLspRenameFile<CR>", {silent = true})
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", {silent = true})
    end
} ]]

require("typescript-tools").setup {
  settings = {
    -- spawn additional tsserver instance to calculate diagnostics on it
    separate_diagnostic_server = true,
    -- "change"|"insert_leave" determine when the client asks the server about diagnostic
    publish_diagnostic_on = "insert_leave",
    -- array of strings("fix_all"|"add_missing_imports"|"remove_unused"|
    -- "remove_unused_imports"|"organize_imports") -- or string "all" 
    -- to include all supported code actions
    -- specify commands exposed as code_actions
    expose_as_code_action = {},
    -- string|nil - specify a custom path to `tsserver.js` file, if this is nil or file under path
    -- not exists then standard path resolution strategy is applied
    tsserver_path = nil,
    -- specify a list of plugins to load by tsserver, e.g., for support `styled-components`
    -- (see 💅 `styled-components` support section)
    tsserver_plugins = {},
    -- this value is passed to: https://nodejs.org/api/cli.html#--max-old-space-sizesize-in-megabytes
    -- memory limit in megabytes or "auto"(basically no limit)
    tsserver_max_memory = "auto",
    -- described below
    tsserver_format_options = {},
    tsserver_file_preferences = {},
    -- mirror of VSCode's `typescript.suggest.completeFunctionCalls`
    complete_function_calls = false,
  },
}
