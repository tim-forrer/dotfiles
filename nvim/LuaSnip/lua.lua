return{
  s(
    { trig = "s", dscr = "Expands 's' into snippet boilerplate" },
    fmta(
      [[
        s(
          {trig = "<>", dscr = "Expands '<>' into <>"},
          fmta(
            <>,
            { <> }
          )
        ),
      ]],
      {
        i(1, "Trigger"),
        rep(1),
        i(2, "Expanded snippet description"),
        i(3, "Snippet string"),
        i(4, "Nodes")
      }
    )
  ),
  s(
    { trig = "mzs", dscr = "Expands 's' into mathzone snippet boilerplate" },
    fmta(
      [[
        s(
          {trig = "<>", dscr = "Expands '<>' into <>"},
          fmta(
            <>,
            { <> }
          ),
          { condition = in_mathzone }
        ),
      ]],
      {
        i(1, "Trigger"),
        rep(1),
        i(2, "Expanded snippet description"),
        i(3, "Snippet string"),
        i(4, "Nodes")
      }
    )
  ),

}
