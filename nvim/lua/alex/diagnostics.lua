vim.o.updatetime = 250

vim.cmd [[
  autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]]

vim.diagnostic.config({
  float = {
    border = "rounded",
    source = "always", -- Or "if_many"
    header = "",
    prefix = "",
  },
})
