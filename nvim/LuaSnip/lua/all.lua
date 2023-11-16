return {
  -- Quickly add snippets
  s(
    { trig = "s(", dscr = "Expands 's(' into boilerplate snippet" },
    fmt(
      [=[
        s( {{trig="{}", dscr="Expands '{}' into {}", snippetType = "{}"}},
          fmta(
            [[
              {}
            ]],
            {{ {} }}
          ),
          {{ {} }}
        ),
      ]=],
      {
        i(1, "trigger"),
        rep(1),
        i(2),
        i(3, "autosnippet"),
        i(4),
        i(5, "nodes"),
        i(6, "condition = "),
      }
    )
  ),

  s(
    { trig = "mzone", dscr = "Expands 'mzone' into boilerplate snippet" },
    fmt(
      [=[
        s( {{trig="{}", dscr="Expands '{}' into {}", snippetType = "{}"}},
          fmta(
            [[
              {}
            ]],
            {{ {} }}
          ),
          {{ condition = tex_utils.in_mathzone }}
        ),
      ]=],
      { i(1), rep(1), i(2), i(3, "autosnippet"), rep(2), i(4) }
    )
  ),
}
