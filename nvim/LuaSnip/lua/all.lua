return {
  -- Quickly add snippets
  s( {trig="s(", dscr="Expands 's(' into boilerplate snippet"},
    fmt(
      [=[
        s( {{trig="{}", dscr="Expands '{}' into {}"}},
          fmta(
            [[
              {}
            ]],
            {{ {} }}
          )
        ),
      ]=],
      { i(1), rep(1), i(2), i(3), i(4) }
    )
  ),
}            
