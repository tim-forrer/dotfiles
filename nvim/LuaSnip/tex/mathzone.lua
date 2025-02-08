local in_mathzone = require("tex_utils").in_mathzone

local math_font_snippet = function( trig, command )
  return(
    s(
      {trig = trig, dscr = "Expands ".. trig .. " into \\" .. command, snippetType="autosnippet"},
      fmta(
        "\\" .. command .. "{<>}",
        { i(1) }
      ),
      { condition = in_mathzone }
    )
  )
end

local insert_slash = function( letter )
  return math_font_snippet( letter, letter )
end

return{
  math_font_snippet("mc", "mathcal"),
  math_font_snippet("bb", "mathbb"),
  insert_slash("kappa"),
  insert_slash("phi"),
  insert_slash("psi"),
  insert_slash("pi"),
  insert_slash("alpha"),
  insert_slash("beta"),
  insert_slash("gamma")
  }
