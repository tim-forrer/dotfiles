local in_mathzone = require("tex_utils").in_mathzone

local math_font_snippet = function( trig, command )
  return(
    s(
      {trig = trig, dscr = "Expands ".. trig .. " into \\" .. command},
      fmta(
        "\\" .. command .. "{<>}",
        { i(1) }
      ),
      { condition = in_mathzone }
    )
  )
end

return{
  math_font_snippet("mc", "mathcal"),
  math_font_snippet("bb", "mathbb"),
  }
