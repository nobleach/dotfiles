-- Telescope
local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    file_ignore_patterns = { ".git", "^node_modules" },
    mappings = {
      i = {
        ["<C-n>"] = false,
        ["<C-p>"] = false,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      }
    }
  }
}
require('telescope').load_extension('dap')

-- TreeSitter
 require("nvim-treesitter.configs").setup {
   ensure_installed = {
     'c', 'cpp', 'dart', 'go', 'html', 'java', 'javascript', 'python', 'ruby',
     'rust', 'typescript'
   },
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
           keymaps = {smart_rename = "gsr"},
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
   indent = {
     enable = false
   },
   -- Disable the types that do not work
   -- indent = { enable = true, disable = { 'blade' , 'vue' } },
   highlight = {
     enable = true,
     additional_vim_regex_highlighting = true
   },
   autotag = {enable = true}
 }

-- Nvim-tree
require("nvim-tree").setup {
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = false,
    ignore_buffer_on_setup = false,
    ignore_ft_on_setup = {},
    auto_reload_on_write = true,
    open_on_tab = false,
    hijack_cursor = false,
    update_cwd = true,
    hijack_unnamed_buffer_when_opening = false,
    hijack_directories = {
        enable = true,
        auto_open = true,
    },
    diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    filters = {
        dotfiles = true,
        custom = {},
    },
    git = {
        enable = true,
        ignore = true,
        timeout = 500,
    },
    view = {
        width = 50,
        hide_root_folder = false,
        side = "left",
        mappings = { custom_only = false, list = {} },
        number = false,
        relativenumber = false,
        signcolumn = "yes",
    },
    trash = {
        cmd = "trash",
        require_confirm = true,
    },
    actions = {
        change_dir = {
            enable = true,
            global = true,
        },
        open_file = {
            quit_on_open = true,
            resize_window = true,
            window_picker = {
                enable = true,
                chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
                exclude = {
                    filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
                    buftype = { "nofile", "terminal", "help" },
                },
            },
        },
    },
}

-- Close tree on file select
vim.cmd [[let g:nvim_tree_quit_on_open = 1]]

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
vim.g.indent_blankline_show_current_context_start = true
vim.g.indent_blankline_context_patterns = {'class', 'function', 'method', '^if', '^while', '^for', '^object', '^table', 'block', 'arguments'}
vim.g.indent_blankline_filetype = {'json','lua', 'terraform', 'javascript', 'javascriptreact'}
-- vim.g.indent_blankline_indent_level = 3

-- Goto Preview
require('goto-preview').setup {}
vim.api.nvim_set_keymap('n', 'gpd', '<cmd>lua require("goto-preview").goto_preview_definition()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'gpi', '<cmd>lua require("goto-preview").goto_preview_implementation()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'gP', '<cmd>lua require("goto-preview").close_all_win()<CR>', { noremap = true })

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

-- Nvim DAP
local dap = require('dap')
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/bin/vscode-node-debug2/out/src/nodeDebug.js'},
}
dap.adapters.lldb = {
  type = 'executable',
  command = 'lldb-vscode', -- adjust as needed, must be absolute path
  name = 'lldb'
}
dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = '/Users/jimwharton/Downloads/codelldb-x86_64-darwin/extension/adapter/codelldb',
    args = {"--port", "${port}"},

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}
--[[ dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},

    -- 💀
    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    -- runInTerminal = false,
  },
} ]]
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
  },
}
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

vim.fn.sign_define('DapBreakpoint', {text='', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='', texthl='', linehl='', numhl=''})
require("dapui").setup()

-- NeoClip
require('telescope').load_extension('neoclip')
require('neoclip').setup()
-- require('refactoring').setup({})

-- Tree-sitter configuration
require'nvim-treesitter.configs'.setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
}
