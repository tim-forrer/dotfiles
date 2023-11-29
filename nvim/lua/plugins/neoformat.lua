-- Haskell
g.neoformat_haskell_ormolu = {
  exe = "ormolu",
}
g.neoformat_enabled_haskell = { "ormolu" }

-- Python
g.neoformat_enabled_python = { "black" }

-- Lua
g.neoformat_lua_stylua = {
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
g.neoformat_enabled_lua = { "stylua" }

-- Latex
g.neoformat_enabled_tex = { "latexindent" }

-- Lazy config
local M = {}
M.lazy_config = { "sbdchd/neoformat" }
return M
