return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.4',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')

    telescope.setup({
      defaults = {
        path_display = { 'smart' }
      }
    })

    telescope.load_extension('fzf')

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader><leader>', '<cmd>Telescope find_files<cr>', { desc = 'Fuzzy find files in cwd' })
  end
}
