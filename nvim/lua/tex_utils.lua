local tex_utils = {}

function tex_utils.in_mathzone()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

function tex_utils.in_text()
  return not in_mathzone()
end

function tex_utils.in_comment() -- comment detection
  return vim.fn["vimtex#syntax#in_comment"]() == 1
end

function tex_utils.in_env(name) -- generic environment detection
  local is_inside = vim.fn["vimtex#env#is_inside"](name)
  return (is_inside[1] > 0 and is_inside[2] > 0)
end

-- A few concrete environments---adapt as needed
function tex_utils.in_equation() -- equation environment detection
  return in_env("equation")
end

function tex_utils.in_itemize() -- itemize environment detection
  return in_env("itemize")
end

function tex_utils.in_tikz() -- TikZ picture environment detection
  return in_env("tikzpicture")
end

function tex_utils.get_visual(args, parent)
  if #parent.snippet.env.LS_SELECT_RAW > 0 then
    return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
  else -- If LS_SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end

return tex_utils
