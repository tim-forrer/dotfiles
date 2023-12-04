local kind_icons = {
  Text = "",
  Method = "m",
  Function = "󰊕",
  Constructor = "",
  Field = "",
  Variable = "󰫧",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

local M = {
  fields = { "kind", "abbr", "menu" },
  format = function(entry, vim_item)
    vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
    -- Source
    vim_item.menu = ({
      buffer = "[Buffer]",
      nvim_lsp = "[LSP]",
      luasnip = "[LuaSnip]",
      nvim_lua = "[Lua]",
      path = "[Path]",
      vimtex = "[Vimtex]",
    })[entry.source.name]
    return vim_item
  end,
}
return M
