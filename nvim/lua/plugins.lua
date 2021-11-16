vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'
  use 'kyazdani42/blue-moon'
  use 'rktjmp/lush.nvim'
  use 'npxbr/gruvbox.nvim'
  -- use 'marko-cerovac/material.nvim'
  --[[ use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ' ]]
  use 'rafamadriz/friendly-snippets'
  use 'ray-x/lsp_signature.nvim'
  use 'onsails/lspkind-nvim'
  use 'norcalli/nvim-colorizer.lua'
--  use 'steelsojka/pears.nvim'
  use 'b3nj5m1n/kommentary'
  use 'windwp/nvim-autopairs'
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'
  use 'tpope/vim-repeat'
  use 'mattn/emmet-vim'
  use 'AndrewRadev/splitjoin.vim'
  use 'tpope/vim-surround'
  use 'folke/lsp-colors.nvim'
  use 'matze/vim-move'
  -- use 'akinsho/nvim-bufferline.lua'
  use 'axelf4/vim-strip-trailing-whitespace'
  use 'kburdett/vim-nuuid'
  use 'maxmellon/vim-jsx-pretty'
  use 'romgrk/searchReplace.vim'
  use 'rmagatti/goto-preview'
  use 'tveskag/nvim-blame-line'
  use 'mfussenegger/nvim-jdtls'
  use 'EdenEast/nightfox.nvim'
  use 'GustavoKatel/sidebar.nvim'
  use 'sindrets/diffview.nvim'
  use 'hashivim/vim-terraform'

  -- Nvim DAP
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

  -- Let's go back to NerdTree for now
  --[[ use {
   'scrooloose/nerdtree',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
   } ]]

  -- Language specific
  use 'vim-crystal/vim-crystal'

  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}
  -- Nvim Tree
  use {
   'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
   }

-- use({ 'ms-jpq/chadtree', run = 'python3 -m chadtree deps --nvim' })

   use {
     "folke/trouble.nvim",
     requires = "kyazdani42/nvim-web-devicons",
     config = function()
       require("trouble").setup {
         -- your configuration comes here
         -- or leave it empty to use the default settings
         -- refer to the configuration section below
       }
     end
   }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use 'nvim-telescope/telescope-dap.nvim'

  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

  -- Plugins can have dependencies on other plugins
  --[[ use {
    'hrsh7th/nvim-compe',
    requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  } ]]
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'


  use { 'lukas-reineke/indent-blankline.nvim', branch="master" }

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Use specific branch, dependency and run lua file after load
  use {
    'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  use {
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu'
  }
  -- use 'weilbith/nvim-code-action-menu'

  use 'kosayoda/nvim-lightbulb'

  use {'tjdevries/colorbuddy.vim'}

  -- Clipboard
  use {
      "AckslD/nvim-neoclip.lua",
      config = function()
        require('neoclip').setup({
          default_register = '+',
        })
      end,
  }

end)
