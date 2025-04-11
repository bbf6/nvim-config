return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
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
        path_display = { 'smart' },
        file_ignore_patterns = { 'node_modules' }
      }
    })

    telescope.load_extension('fzf')

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader><leader>', '<cmd>Telescope find_files<cr>', { desc = 'Fuzzy find files in cwd' })
  end
}
