local lspconfig = require("lspconfig")

-- -- Servidor LSP para Lua
-- lspconfig.lua_ls.setup({
--   settings = {
--     Lua = {
--       diagnostics = { globals = { "vim" } },
--     },
--   },
-- })
--
-- Servidor LSP para Python
lspconfig.pyright.setup({})

lspconfig.ts_ls.setup({
  on_attach = function(client, bufnr)
  end,
  settings = {
    tsserver = {
      diagnostics = {
        ignoredCodes = { 80001 }, -- Ejempl
      }
    }
  }
})
