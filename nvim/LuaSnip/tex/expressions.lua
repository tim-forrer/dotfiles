package.path = package.path .. ";/Users/timforrer/dotfiles/nvim/LuaSnip/?.lua"
local globals = require("globals")

return {
  -- Sections
  globals.s(
    {
      trig = "sec",
      dscr = "Expands 'sec' into \\section",
      snippetType = "snippet",
    },
    globals.fmta(
      [[
        \section{<>}
      ]],
      { globals.i(1) }
    ),
    {}
  ),
  globals.s(
    {
      trig = "ssec",
      dscr = "Expands 'ssec' into \\subsection",
      snippetType = "autosnippet",
    },
    globals.fmta(
      [[
        \subsection{<>}
      ]],
      { globals.i(1) }
    ),
    {}
  ),

  -- General environments
  globals.s(
    { trig = "env", dscr = "Expands 'env' into some general environment" },
    globals.fmta(
      [[
        \begin{<>}
          <>
        \end{<>}
      ]],
      { globals.i(1), globals.i(2), globals.rep(1) }
    )
  ),
  globals.s(
    {
      trig = "def",
      dscr = "Expands 'def' into definition environment",
      snippetType = "snippet",
    },
    globals.fmta(
      [[
         \begin{definition}[<>]
            <>
          \end{definition}
       ]],
      { globals.i(1), globals.i(2) }
    ),
    {}
  ),
  -- Inline mathmode
  globals.s(
    {
      trig = "mk",
      dscr = "Expands 'mk' into $<>$",
      snippetType = "autosnippet",
    },
    globals.fmta(
      [[
         $<>$
       ]],
      { globals.i(1) }
    ),
    {}
  ),
  globals.s(
    {
      trig = "km",
      dscr = "Expands 'km' into $$<>$$",
      snippetType = "autosnippet",
    },
    globals.fmta(
      [[
         $$
           <>
         $$
       ]],
      { globals.i(1) }
    ),
    {}
  ),
  globals.s(
    {
      trig = "enu",
      dscr = "Expands 'enu' into a list environment",
      snippetType = "snippet",
    },
    globals.fmta(
      [[
        \begin{enumerate}
          \item <>
        \end{enumerate}
      ]],
      { globals.i(1, "First list item") }
    )
  ),
}
