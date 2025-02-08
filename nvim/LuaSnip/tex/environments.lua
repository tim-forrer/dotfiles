local in_text = require("tex_utils").in_text

local env = s({trig="env", snippetType="autosnippet"},
  fmta(
    [[
      \begin{<>}
          <>
      \end{<>}
    ]],
    {
      i(1),
      i(2),
      rep(1),  -- this node repeats insert node i(1)
    }
  )
)

-- Different environment snippets ultimately have the same structure,
-- so this function easily produces the requisite snippets.
local env_snippet = function(trig, name)
  local string_to_format = string.gsub([[
    \begin{name}
      <>
    \end{name}
  ]],
  "name", name)

  return s(
    {trig = trig, dscr = "Expands '" .. trig .. "' into " .. name .. " environment"},
    fmta(
      string_to_format,
      { i(1) }
    ),
    { condition = in_text }
  )
end

return {
  env,
  env_snippet("eq", "equation"),
  env_snippet("eqs", "equation*"),
  env_snippet("al", "align"),
  env_snippet("als", "align*"),
  env_snippet("tm", "theorem"),
  env_snippet("lm", "lemma"),
  env_snippet("cl", "corollary"),
  env_snippet("pf", "proof"),
  env_snippet("df", "definition")
}
