local vars = require("ls_variables")
return {
  -- Quickly add snippets
  vars.s(
    { trig = "s(", dscr = "Expands 's(' into boilerplate snippet" },
    vars.fmt(
      [=[
       vars.s( {{trig="{}", dscr="Expands '{}' into {}", snippetType = "{}"}},
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
        vars.i(1, "trigger"),
        vars.rep(1),
        vars.i(2),
        vars.i(3, "autosnippet"),
        vars.i(4),
        vars.i(5, "nodes"),
        vars.i(6, "condition = "),
      }
    )
  ),

  vars.s(
    { trig = "mzone", dscr = "Expands 'mzone' into boilerplate snippet" },
    vars.fmt(
      [=[
       vars.s( {{trig="{}", dscr="Expands '{}' into {}", snippetType = "{}"}},
          fmta(
            [[
              {}
            ]],
            {{ {} }}
          ),
          {{ condition = tex_utils.in_mathzone }}
        ),
      ]=],
      { vars.i(1), vars.rep(1), vars.i(2), vars.i(3, "autosnippet"), vars.rep(2), vars.i(4) }
    )
  ),
}
