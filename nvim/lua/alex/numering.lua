function ToggleLineNumbers()
  if vim.wo.number and vim.wo.relativenumber then
    vim.wo.relativenumber = false
  elseif vim.wo.number and not vim.wo.relativenumber then
    vim.wo.relativenumber = true
  else
    vim.wo.number = true
    vim.wo.relativenumber = false
  end
end

vim.api.nvim_set_keymap('n', '<leader>n', ':lua ToggleLineNumbers()<CR>', { noremap = true, silent = true })
