return {
  'christoomey/vim-tmux-navigator',
  {
    'hail2u/vim-css3-syntax',
    event = 'VeryLazy'
  },
  'nvim-lualine/lualine.nvim',
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip'
    },
    config = function()
      require('alex/config.cmp')
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('alex/config.lsp')
    end
  },
  {
    'lweis699/gitsigns.nvim',
    config = function ()
      require('alex/config.gitsigns')
    end
  }
}
