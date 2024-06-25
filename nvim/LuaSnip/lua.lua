local globals = require("globals")

return {
  -- Quickly add snippets
  globals.s(
    { trig = "s(", dscr = "Expands 's(' into boilerplate snippet" },
    globals.fmt(
      [=[
       globals.s( {{trig="{}", dscr="Expands '{}' into {}", snippetType = "{}"}},
          vars.fmta(
            [[
              {}
            ]],
            {{ {} }}
          ),
          {{ {} }}
        ),
      ]=],
      {
        globals.i(1, "trigger"),
        globals.rep(1),
        globals.i(2),
        globals.i(3, "autosnippet"),
        globals.i(4),
        globals.i(5, "nodes"),
        globals.i(6, "condition = "),
      }
    )
  ),

  globals.s(
    { trig = "mzone", dscr = "Expands 'mzone' into boilerplate snippet" },
    globals.fmt(
      [=[
       globals.s( {{trig="{}", dscr="Expands '{}' into {}", snippetType = "{}"}},
          fmta(
            [[
              {}
            ]],
            {{ {} }}
          ),
          {{ condition = tex_utils.in_mathzone }}
        ),
      ]=],
      {
        globals.i(1),
        globals.rep(1),
        globals.i(2),
        globals.i(3, "autosnippet"),
        globals.rep(2),
        globals.i(4),
      }
    )
  ),
}
