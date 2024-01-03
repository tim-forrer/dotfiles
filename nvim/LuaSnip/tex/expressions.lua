local tex_utils = require("ls_tex_utils")
local vars = require("ls_variables")

return {
  -- Sections
  vars.s(
    {
      trig = "sec",
      dscr = "Expands 'sec' into \\section",
      snippetType = "snippet",
    },
    vars.fmta(
      [[
        \section{<>}
      ]],
      { vars.i(1) }
    ),
    {}
  ),
  vars.s(
    {
      trig = "ssec",
      dscr = "Expands 'ssec' into \\subsection",
      snippetType = "autosnippet",
    },
    vars.fmta(
      [[
        \subsection{<>}
      ]],
      { vars.i(1) }
    ),
    {}
  ),

  -- General environments
  vars.s(
    { trig = "env", dscr = "Expands 'env' into some general environment" },
    vars.fmta(
      [[
        \begin{<>}
          <>
        \end{<>}
      ]],
      { vars.i(1), vars.i(2), vars.rep(1) }
    )
  ),
  vars.s(
    { trig = "eq", dscr = "Expands 'eq' into an equation environment" },
    vars.fmta(
      [[
        \begin{equation}
          <>
        \end{equation}
      ]],
      { vars.i(0) }
    )
  ),

  -- Inline mathmode
  vars.s(
    {
      trig = "(%A)mm",
      dscr = "Expands '(%A)mm' into $$",
      wordTrig = false,
      regTrig = true,
    },
    vars.fmta("<>$<>$", {
      vars.f(function(_, snip)
        return snip.captures[1]
      end),
      vars.d(1, tex_utils.get_visual),
    })
  ),
  vars.s(
    {
      trig = "enu",
      dscr = "Expands 'enu' into a list environment",
      snippetType = "snippet",
    },
    vars.fmta(
      [[
        \begin{enumerate}
          \item <>
        \end{enumerate}
      ]],
      { vars.i(1, "First list item") }
    )
  ),
}
