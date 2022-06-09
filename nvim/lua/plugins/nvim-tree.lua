-----------------------------------------------------------
-- File manager configuration file
-----------------------------------------------------------

-- Plugin: nvim-tree
-- url: https://github.com/kyazdani42/nvim-tree.lua

--- Keybindings are defined in `core/keymapping.lua`:
--- https://github.com/kyazdani42/nvim-tree.lua#keybindings

--- Note: options under the g: command should be set BEFORE running the
--- setup function: https://github.com/kyazdani42/nvim-tree.lua#setup
--- Default options are not included.
--- See: `help NvimTree`
local g = vim.g

g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_respect_buf_cwd = 1
g.nvim_tree_width_allow_resize  = 1
g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1,
}

g.nvim_tree_icons = {
	default = "‣ ",
  lsp = { hint = ' ', info = ' ', warning = ' ', error = ' ' },
}

require('nvim-tree').setup {
  actions = {
    open_file = {
      resize_window = true,
      quit_on_open = false,
      window_picker = { enable = false },
    },
  },
  filters = {
    dotfiles = false,
    custom = { '.git', 'node_modules', '.cache', '.bin' },
    exclude = { '.env', '.env.development.local', '.dockerignore', '.gitignore'}
  },
  diagnostics = {
      enable = true,
      show_on_dirs = true,
      icons = {
        hint = " ",
        info = " ",
        warning = " ",
        error = " ",
      },
    },
  view = { width = 32 },
  renderer = {
    indent_markers = {
      enable = true
    }
  },
  reload_on_bufenter = true
}

