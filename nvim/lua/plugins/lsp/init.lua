local M = {}
M.lazy_config = {
  "neovim/nvim-lspconfig",
  dependencies = {},
}

-- M.load = function()
--   local capabilities = require("cmp_nvim_lsp").default_capabilities()
--   require("lspconfig").lua_ls.setup({
--     capabilities = capabilities,
--   })
--   require("lspconfig").texlab.setup({
--     capabilities = capabilities,
--   })
-- end

return M
