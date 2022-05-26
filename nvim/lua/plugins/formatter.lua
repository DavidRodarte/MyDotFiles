require('formatter').setup({
  logging = false,
  filetype = {
    typescriptreact = {
        -- prettierd
       function()
          return {
            exe = "prettierd",
            args = {vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
    },
    typescript = {
        -- prettierd
       function()
          return {
            exe = "prettierd",
            args = {vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
    },
    php = {
       function()
          return {
            exe = "prettier",
            args = {vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
    },
    dart = {
       function()
          return {
            exe = "flutter format",
            args = {vim.api.nvim_buf_get_name(0)},
            stdin = false
          }
        end
    },
    -- other formatters ...
  }
})
