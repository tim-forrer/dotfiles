-- Private constants
local starting_whitespace = "^%s*"
local trailing_whitespace = "%s*$"

-- Private functions
local escape = function(s)
  return (s:gsub("[%-%.%+%[%]%(%)%$%^%%%?%*]", "%%%1"))
end

local getCommentPrefix = function()
  local c_string = vim.api.nvim_buf_get_option(0, "commentstring")
  if c_string:find("%%s") then
    local prefix, _ = c_string:match("^(%s*%S*)" .. " %%s")
    return prefix
  else
    vim.api.nvim_command('echom "Cannot parse commentstring' .. c_string .. '"')
    return nil
  end
end

-- Things to be exported
local M = {}

M.replaceBlankCommentLine = function()
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

return M
