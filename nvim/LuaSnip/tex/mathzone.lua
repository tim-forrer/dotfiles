local tex_utils = require("ls_tex_utils")
local vars = require("ls_variables")

return {
  vars.s(
    { trig = "ff", dscr = "Expands 'ff' into '\\frac{}{} when in mathmode'" },
    vars.fmta("\\frac{<>}{<>}", { vars.i(1), vars.i(2) }),
    { condition = tex_utils.in_mathzone }
  ),
  vars.s(
    {
      trig = "lolli",
      dscr = "Expands 'lolli' into \\multimap",
      snippetType = "autosnippet",
    },
    vars.fmta(
      [[
        \multimap 
      ]],
      {}
    ),
    { condition = tex_utils.in_mathzone }
  ),
  vars.s(
    {
      trig = "ox",
      dscr = "Expands 'ox' into \\otimes",
      snippetType = "autosnippet",
    },
    vars.fmta(
      [[
        \otimes
      ]],
      {}
    ),
    { condition = tex_utils.in_mathzone }
  ),
  vars.s(
    {
      trig = "^",
      dscr = "Expands '^' into ^{ }",
      snippetType = "autosnippet",
      wordTrig = false,
    },
    vars.fmta(
      [[
        ^{ <> }
      ]],
      { vars.d(1, tex_utils.get_visual) }
    ),
    { condition = tex_utils.in_mathzone }
  ),
  vars.s(
    {
      trig = "iso",
      dscr = "Expands 'iso' into \\simeq",
      snippetType = "snippet",
    },
    vars.fmta(
      [[
        \cong
      ]],
      {}
    ),
    { condition = tex_utils.in_mathzone }
  ),
  vars.s(
    {
      trig = "niso",
      dscr = "Expands 'niso' into \ncong",
      snippetType = "snippet",
    },
    vars.fmta(
      [[
        \ncong
      ]],
      {}
    ),
    { condition = tex_utils.in_mathzone }
  ),
  vars.s(
    {
      trig = "->",
      dscr = "Expands '->' into \rightarrow",
      snippetType = "autosnippet",
    },
    vars.fmta(
      [[
        \rightarrow
      ]],
      {}
    ),
    { condition = tex_utils.in_mathzone }
  ),
  vars.s(
    {
      trig = "star",
      dscr = "Expands 'star' into ^{*}",
      snippetType = "autosnippet",
      wordTrig = false,
    },
    vars.fmta(
      [[
        ^{ * }
      ]],
      {}
    ),
    { condition = tex_utils.in_mathzone }
  ),
  vars.s(
    {
      trig = "prr",
      dscr = "Expands 'prr' into \\parr",
      snippetType = "autosnippet",
    },
    vars.fmta(
      [[
        \parr
      ]],
      {}
    ),
    { condition = tex_utils.in_mathzone }
  ),
  vars.s(
    {
      trig = "_",
      dscr = "Expands '_' into _{ }",
      snippetType = "autosnippet",
      wordTrig = false,
    },
    vars.fmta(
      [[
        _{ <> }
      ]],
      { vars.i(1, "label") }
    ),
    { condition = tex_utils.in_mathzone }
  ),
  vars.s(
    {
      trig = "cat",
      dscr = "Expands 'cat' into mathbf{}",
      snippetType = "snippet",
    },
    vars.fmta(
      [[
        \mathbf{<>}
      ]],
      { vars.i(1, "category") }
    ),
    { condition = tex_utils.in_mathzone }
  ),
}
