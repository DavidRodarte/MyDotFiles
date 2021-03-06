-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- url: https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README
--- neovim-lua/README.md
--- https://github.com/brainfucksec/neovim-lua#readme


local cmd = vim.cmd
cmd [[packadd packer.nvim]]

local packer = require 'packer'

-- Add packages
return packer.startup(function()
  use 'wbthomason/packer.nvim' -- packer can manage itself

  -- File explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Indent line
  use 'lukas-reineke/indent-blankline.nvim'

  -- Autopair
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  -- Formatter
  use 'mhartington/formatter.nvim'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Tag viewer
  use 'liuchengxu/vista.vim'

  -- Treesitter interface
  use 'nvim-treesitter/nvim-treesitter'

  -- Autoclose tags
  use 'windwp/nvim-ts-autotag'

  -- Rainbow parenthesis
  use 'p00f/nvim-ts-rainbow'

  -- Color schemes
  use 'navarasu/onedark.nvim'

  use 'tanvirtin/monokai.nvim'

  use { 'rose-pine/neovim', as = 'rose-pine' }

  use {'catppuccin/nvim', as = 'catppuccin' }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use "jose-elias-alvarez/null-ls.nvim"
  use "jose-elias-alvarez/nvim-lsp-ts-utils"

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets'
    },
  }

  -- Statusline
  use {
    'famiu/feline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- ale
  use 'dense-analysis/ale'

  -- neoformat
  use 'sbdchd/neoformat'


  -- Dashboard (start screen)
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  use {
    'numToStr/Comment.nvim',
    tag = 'v0.6',
    config = function()
        require('Comment').setup()
    end
}

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Flutter plugin
  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}

  -- Prisma syntax
  use 'pantharshit00/vim-prisma'

  -- Symbols outline
  use 'simrat39/symbols-outline.nvim'

  -- Multicursor
  use 'mg979/vim-visual-multi'

  -- Copilot
  use 'github/copilot.vim'
end)
