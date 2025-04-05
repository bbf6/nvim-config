local function clean_file()
  local excluded = { 'markdown', 'text', 'gitcommit' }
  if vim.tbl_contains(excluded, vim.bo.filetype) then
    return
  end
  local save_cursor = vim.fn.getpos('.')
  vim.cmd([[keeppatterns %s/\s\+$//e]])
  vim.cmd([[silent! %s#\($\n\s*\)\+\%$##]])
  vim.fn.setpos('.', save_cursor)
end

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  callback = clean_file,
})
