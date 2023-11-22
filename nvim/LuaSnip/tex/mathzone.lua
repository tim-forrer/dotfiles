local tex_utils = require("tex_utils")

return {
  s(
    { trig = "ff", dscr = "Expands 'ff' into '\\frac{}{} when in mathmode'" },
    fmta("\\frac{<>}{<>}", { i(1), i(2) }),
    { condition = tex_utils.in_mathzone }
  ),
  s(
    {
      trig = "lolli",
      dscr = "Expands 'lolli' into \\multimap",
      snippetType = "autosnippet",
    },
    fmta(
      [[
        \multimap 
      ]],
      {}
    ),
    { condition = tex_utils.in_mathzone }
  ),
  s(
    {
      trig = "ox",
      dscr = "Expands 'ox' into \\otimes",
      snippetType = "autosnippet",
    },
    fmta(
      [[
        \otimes
      ]],
      {}
    ),
    { condition = tex_utils.in_mathzone }
  ),
  s(
    {
      trig = "^",
      dscr = "Expands '^' into ^{ }",
      snippetType = "autosnippet",
      wordTrig = false,
    },
    fmta(
      [[
        ^{ <> }
      ]],
      { d(1, get_visual) }
    ),
    { condition = tex_utils.in_mathzone }
  ),
  s(
    {
      trig = "iso",
      dscr = "Expands 'iso' into \\simeq",
      snippetType = "snippet",
    },
    fmta(
      [[
        \cong
      ]],
      {}
    ),
    { condition = tex_utils.in_mathzone }
  ),
  s(
    {
      trig = "niso",
      dscr = "Expands 'niso' into \ncong",
      snippetType = "snippet",
    },
    fmta(
      [[
        \ncong
      ]],
      {}
    ),
    { condition = tex_utils.in_mathzone }
  ),
  s(
    {
      trig = "->",
      dscr = "Expands '->' into \rightarrow",
      snippetType = "autosnippet",
    },
    fmta(
      [[
        \rightarrow
      ]],
      {}
    ),
    { condition = tex_utils.in_mathzone }
  ),
  s(
    {
      trig = "star",
      dscr = "Expands 'star' into ^{*}",
      snippetType = "autosnippet",
      wordTrig = false,
    },
    fmta(
      [[
        ^{ * }
      ]],
      {}
    ),
    { condition = tex_utils.in_mathzone }
  ),
  s(
    {
      trig = "prr",
      dscr = "Expands 'prr' into \\parr",
      snippetType = "autosnippet",
    },
    fmta(
      [[
        \parr
      ]],
      {}
    ),
    { condition = tex_utils.in_mathzone }
  ),
  s(
    {
      trig = "_",
      dscr = "Expands '_' into _{ }",
      snippetType = "autosnippet",
      wordTrig = false,
    },
    fmta(
      [[
        _{ <> }
      ]],
      { i(1, "label") }
    ),
    { condition = tex_utils.in_mathzone }
  ),
}
