return {
  'posva/vim-vue',
  'digitaltoad/vim-pug',
  'hail2u/vim-css3-syntax',
  'cakebaker/scss-syntax.vim',
  'yuezk/vim-js',
  'HerringtonDarkholme/yats.vim',
  'leafOfTree/vim-vue-plugin',
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = { 'vue', 'pug', 'scss', 'javascript', 'typescript' },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      })
    end
  }
}
