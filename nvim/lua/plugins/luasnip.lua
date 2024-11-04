local luasnip_config = {
  enable_autosnippets = true,
  store_selection_keys = "<Tab>",
}

return {
  "L3MON4D3/LuaSnip",
  -- follow latest release.
  version = "v2.*",
  -- install jsregexp (optional!).
  build = "make install_jsregexp",
  config = function()
    require("luasnip").config.set_config({
      luasnip_config
    })

    -- Use <Tab> to expand and jump
    vim.cmd[[
      " Expand or jump in insert mode
      imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 

      " Jump forward through tabstops in visual mode
      smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'
    ]]
    
    -- Lazy-load snippets
    require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})
  end
}