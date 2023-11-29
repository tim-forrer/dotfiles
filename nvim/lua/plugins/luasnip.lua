local M = {}

M.load = function()
  require("luasnip").config.set_config({
    enable_autosnippets = true,
    store_selection_key = "<Tab>",
    update_events = "TextChanged,TextChangedI",
  })
  require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/LuaSnip/" })

  -- Keybindings
  -- Seems quite hard to use Tab expansions using Lua directly.
  cmd([[
  " Use Tab to expand and jump through snippets
  imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
  smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

  " Use Shift-Tab to jump backwards through snippets
  imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
  smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
  ]])
end

-- Lazy setup
M.lazy_config = {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  build = "make install_jsregexp",
  lazy = false,
}

return M
