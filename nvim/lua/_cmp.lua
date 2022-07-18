local cmp = require'cmp'
local types = require('cmp.types')
local lspkind = require('lspkind')

  cmp.setup({
    snippet = {
      expand = function(args)
          require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = {
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item({ behavior = types.cmp.SelectBehavior.Insert }), { 'i', 'c' }),
      ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = types.cmp.SelectBehavior.Insert }), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
      { name = 'luasnip' },
      { name = 'path'},
      { name = 'nvim_lsp' },
      {
        name = 'buffer',
        get_bufnrs = function()
          return vim.api.nvim_list_bufs()
        end
      },
    },
    formatting = {
      format = lspkind.cmp_format {
        with_text = true,
        menu = {
          path = "[Path]",
          luasnip = "[Snip]",
          nvim_lsp = "[LSP]",
          buffer = "[Buf]"
        }
      },

      experimental = {
        -- native_menu = false,
        ghost_text = true,
      }
    }
  })

 -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
})
