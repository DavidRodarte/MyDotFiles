--[[

Neovim init file
Version: 0.50.0 - 2022/03/07
Maintainer: brainf+ck
Website: https://github.com/brainfucksec/neovim-lua

--]]

-- Import Lua modules
require('core/settings')
require('core/keymaps')
require('packer_init')
require('plugins/nvim-tree')
require('plugins/indent-blankline')
require('plugins/feline')
require('plugins/vista')
require('plugins/nvim-cmp')
require('plugins/nvim-lspconfig')
require('plugins/nvim-treesitter')
require('plugins/alpha-nvim')
require('plugins/formatter')
require('plugins/telescope')
require('plugins/flutter-tools')
require('plugins/symbols-outline')
require('plugins/luasnip')
require('custom/colors')
