package.path = package.path .. ";../?.lua"
local globals = require("globals")

return {
  globals.s(
    { trig = "(", dscr = "Expands '(' into (<>)", snippetType = "autosnippet" },
    globals.fmta(
      [[
         (<>)
       ]],
      { globals.i(1) }
    ),
    { condition = globals.mathmode }
  ),
  globals.s(
    { trig = "ff", dscr = "Expands 'ff' into '\\frac{}{} when in Mathmode'" },
    globals.fmta("\\frac{<>}{<>}", { globals.i(1), globals.i(2) }),
    { condition = globals.mathmode }
  ),
  globals.s(
    {
      trig = "lolli",
      dscr = "Expands 'lolli' into \\multimap",
      snippetType = "autosnippet",
    },
    globals.fmta(
      [[
        \multimap 
      ]],
      {}
    ),
    { condition = globals.mathmode }
  ),
  globals.s(
    {
      trig = "ox",
      dscr = "Expands 'ox' into \\otimes",
      snippetType = "autosnippet",
    },
    globals.fmta(
      [[
        \otimes
      ]],
      {}
    ),
    { condition = globals.mathmode }
  ),
  globals.s(
    {
      trig = "^",
      dscr = "Expands '^' into ^{ }",
      snippetType = "autosnippet",
      wordTrig = false,
    },
    globals.fmta(
      [[
        ^{ <> }
      ]],
      { globals.d(1, Get_visual) }
    ),
    { condition = globals.mathmode }
  ),
  globals.s(
    {
      trig = "iso",
      dscr = "Expands 'iso' into \\simeq",
      snippetType = "snippet",
    },
    globals.fmta(
      [[
        \cong
      ]],
      {}
    ),
    { condition = globals.mathmode }
  ),
  globals.s(
    {
      trig = "niso",
      dscr = "Expands 'niso' into \ncong",
      snippetType = "snippet",
    },
    globals.fmta(
      [[
        \ncong
      ]],
      {}
    ),
    { condition = globals.mathmode }
  ),
  globals.s(
    {
      trig = "->",
      dscr = "Expands '->' into \rightarrow",
      snippetType = "autosnippet",
    },
    globals.fmta(
      [[
        \rightarrow
      ]],
      {}
    ),
    { condition = globals.mathmode }
  ),
  globals.s(
    {
      trig = "star",
      dscr = "Expands 'star' into ^{*}",
      snippetType = "autosnippet",
      wordTrig = false,
    },
    globals.fmta(
      [[
        ^{ * }
      ]],
      {}
    ),
    { condition = globals.mathmode }
  ),
  globals.s(
    {
      trig = "prr",
      dscr = "Expands 'prr' into \\parr",
      snippetType = "autosnippet",
    },
    globals.fmta(
      [[
        \parr
      ]],
      {}
    ),
    { condition = globals.mathmode }
  ),
  globals.s(
    {
      trig = "_",
      dscr = "Expands '_' into _{ }",
      snippetType = "autosnippet",
      wordTrig = false,
    },
    globals.fmta(
      [[
        _{ <> }
      ]],
      { globals.i(1, "label") }
    ),
    { condition = globals.mathmode }
  ),
  globals.s(
    {
      trig = "cat",
      dscr = "Expands 'cat' into mathbf{}",
      snippetType = "snippet",
    },
    globals.fmta(
      [[
        \mathbf{<>}
      ]],
      { globals.i(1, "category") }
    ),
    { condition = globals.mathmode }
  ),
}
