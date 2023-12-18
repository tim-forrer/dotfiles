-- Haskell
vim.g.neoformat_haskell_ormolu = {
  exe = "ormolu",
}
vim.g.neoformat_enabled_haskell = { "ormolu" }

-- Python
vim.g.neoformat_enabled_python = { "black" }

-- Lua
vim.g.neoformat_lua_stylua = {
  exe = "stylua",
  args = {
    "--config-path ~/dotfiles/stylua/stylua.toml",
    "--stdin-filepath",
    "'%:p'",
    "--",
    "-",
  },
  stdin = 1,
}
vim.g.neoformat_enabled_lua = { "stylua" }

-- Latex
vim.g.neoformat_enabled_tex = { "latexindent" }

-- Lazy config
local M = {}
M.lazy_config = { "sbdchd/neoformat" }
return M
