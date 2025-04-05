vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

local function setup_indent_keys()
  vim.keymap.set('v', '<Tab>', '>gv', { noremap = true, silent = true })
  vim.keymap.set('v', '<S-Tab>', '<gv', { noremap = true, silent = true })

  vim.keymap.set('n', '>>', '>>_', { noremap = true, silent = true })
  vim.keymap.set('n', '<<', '<<_', { noremap = true, silent = true })

  vim.keymap.set('n', '<Tab>', '>>_', { noremap = true, silent = true })
  vim.keymap.set('n', '<S-Tab>', '<<_', { noremap = true, silent = true })

  vim.keymap.set('i', '<Tab>', function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(1, col):match('^%s*$') then
      return '  '
    else
      return '<Tab>'
    end
  end, { expr = true })
end
