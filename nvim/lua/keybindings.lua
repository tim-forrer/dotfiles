-- Local constants
local starting_whitespace = "^%s*"
local trailing_whitespace = "%s*$"

-- Lua functions
local function escape(s)
    return (s:gsub('[%-%.%+%[%]%(%)%$%^%%%?%*]','%%%1'))
end

local function getCommentPrefix()
  local c_string = api.nvim_buf_get_option(0, "commentstring")
  if c_string:find("%%s") then
    local prefix, _ = c_string:match("^(%s*%S*)" .. " %%s")
    return prefix
  else
    api.nvim_command('echom "Cannot parse commentstring' .. c_string .. '"')
    return nil
  end
end

local function replaceBlankCommentLine ()
  local line = api.nvim_get_current_line()
  local prefix = getCommentPrefix()
  if prefix and string.find(
    line,
    starting_whitespace .. escape(prefix) .. trailing_whitespace
  )
  then
    return "<C-u>"
  else
    return "<CR>"
  end
end

-- Keybindings
g.mapleader = ','

keymap.set(
  'i',
  '<CR>',
  replaceBlankCommentLine,
  { noremap = true, expr = true, silent = true } 
)

keymap.set(
  'n',
  "<leader>h",
  ":set hlsearch!<CR>",
  { noremap = true, silent = true }
)

keymap.set(
  'n',
  "<leader>w",
  ":w<CR>",
  { noremap = true }
)

keymap.set(
  'n',
  "<leader>r",
  ":source ~/.config/nvim/init.lua<CR>",
  { noremap = true }
)

keymap.set(
  'n',
  "<leader>q",
  ":q<CR>",
  { noremap = true }
)

-- Luasnip
--cmd[[
--" Use Tab to expand and jump through snippets
--imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
--smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'
--
--" Use Shift-Tab to jump backwards through snippets
--imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
--smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
--]]
