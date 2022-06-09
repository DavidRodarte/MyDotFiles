-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ','

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Map Esc to kk
map('i', 'kk', '<Esc>')

-- Don't use arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Fast saving and format with <C-s>
map('n', '<C-s>', ':w<CR>:NvimTreeRefresh<CR>')
map('i', '<C-s>', '<C-c>:w<CR>:NvimTreeRefresh<CR>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
map('n', '<C-t>', ':Term<CR>', { noremap = true })  -- open
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

-- NvimTree
map('n', '<C-e>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<leader>r', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

-- Symbols outline
map('n', '<leader>m', ':SymbolsOutline<CR>') -- open/close

-- Formatter
map('n', '<leader>f', ':Format<CR>')

-- Telescope mappings
map('n', '<leader>tf', '<cmd>Telescope find_files<cr>')
map('n', '<leader>tg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>tb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>th', '<cmd>Telescope help_tags<cr>')
