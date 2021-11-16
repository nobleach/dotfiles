local cmp = require'cmp'
local lspkind = require('lspkind')

  cmp.setup({
    snippet = {
      expand = function(args)
        -- For `vsnip` user.
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
      { name = 'path'},
      { name = 'vsnip' },
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
          vsnip = "[Snip]",
          nvim_lsp = "[LSP]",
          buffer = "[Buf]"
        }
      },

      experimental = {
        native_menu = false,
        ghost_text = true,
      }
      --[[ format = function(entry, vim_item)
        vim_item.kind = lspkind.presets.default[vim_item.kind]
        return vim_item
      end ]]
    }
  })
