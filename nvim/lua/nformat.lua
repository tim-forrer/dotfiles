g.neoformat_haskell_ormolu = {
  exe = "ormolu",
}
g.neoformat_enabled_haskell = { "ormolu" }

g.neoformat_enabled_python = { "black" }

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
