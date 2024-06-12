return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    local tree = require('nvim-tree')

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    tree.setup({
      actions = {
        open_file = {
          window_picker = {
            enable = false
          }
        }
      },
      git = {
        ignore = false
      }
    })

    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap('n', '<C-f>', ':NvimTreeToggle<CR>', opts)
  end
}
