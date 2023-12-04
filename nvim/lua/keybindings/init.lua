-- Local constants
local starting_whitespace = "^%s*"
local trailing_whitespace = "%s*$"

-- Lua functions
local function escape(s)
  return (s:gsub("[%-%.%+%[%]%(%)%$%^%%%?%*]", "%%%1"))
end

local function getCommentPrefix()
  local c_string = vim.api.nvim_buf_get_option(0, "commentstring")
  if c_string:find("%%s") then
    local prefix, _ = c_string:match("^(%s*%S*)" .. " %%s")
    return prefix
  else
    vim.api.nvim_command('echom "Cannot parse commentstring' .. c_string .. '"')
    return nil
  end
end

local function replaceBlankCommentLine()
  local line = vim.api.nvim_get_current_line()
  local prefix = getCommentPrefix()
  if
    prefix
    and string.find(
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
vim.g.mapleader = ","

-- Insert mode
vim.keymap.set(
  "i",
  "<CR>",
  replaceBlankCommentLine,
  { noremap = true, expr = true, silent = true }
)

-- Normal mode
vim.keymap.set(
  "n",
  "<leader>h",
  ":set hlsearch!<CR>",
  { noremap = true, silent = true }
)

vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true })

vim.keymap.set(
  "n",
  "<leader>r",
  ":source ~/.config/nvim/init.lua<CR>",
  { noremap = true }
)

vim.keymap.set("n", "<leader>q", ":wq<CR>", { noremap = true })

vim.keymap.set("n", "<leader><leader>q", ":q<CR>", { noremap = true })

vim.keymap.set("n", "<leader>Q", ":q!<CR>", { noremap = true })
