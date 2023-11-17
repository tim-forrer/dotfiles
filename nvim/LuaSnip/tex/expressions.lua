local get_visual = function(args, parent)
  if #parent.snippet.env.LS_SELECT_RAW > 0 then
    return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
  else -- If LS_SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end

local tex_utils = require("tex_utils")

return {
  -- Sections
  s(
    {
      trig = "sec",
      dscr = "Expands 'sec' into \\section",
      snippetType = "snippet",
    },
    fmta(
      [[
        \section{<>}
      ]],
      { i(1) }
    ),
    {}
  ),
  s(
    {
      trig = "ssec",
      dscr = "Expands 'ssec' into \\subsection",
      snippetType = "autosnippet",
    },
    fmta(
      [[
        \subsection{<>}
      ]],
      { i(1) }
    ),
    {}
  ),

  -- General environments
  s(
    { trig = "env", dscr = "Expands 'env' into some general environment" },
    fmta(
      [[
        \begin{<>}
          <>
        \end{<>}
      ]],
      { i(1), i(2), rep(1) }
    )
  ),
  s(
    { trig = "eq", dscr = "Expands 'eq' into an equation environment" },
    fmta(
      [[
        \begin{equation}
          <>
        \end{equation}
      ]],
      { i(0) }
    )
  ),

  -- Inline mathmode
  s(
    {
      trig = "(%A)mm",
      dscr = "Expands '(%A)mm' into $$",
      wordTrig = false,
      regTrig = true,
    },
    fmta("<>$<>$", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      d(1, get_visual),
    })
  ),
}
