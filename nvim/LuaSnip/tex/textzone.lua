local tex_utils = require("tex_utils")

return{
  s(
    {trig = "mk", dscr = "Expands 'mk' into '$$'"},
    fmta(
      "$<>$",
      { i(1) }
    ),
    { condition = tex_utils.in_text }
  ),
  s(
      {trig = "km", dscr = "Expands 'km' into multiline mathmode"},
      fmta(
        "\n$$\n\t<>\n$$\n<>",
        { i(1), i(0) }
      ),
      { condition = tex_utils.in_text }
    ),
}
