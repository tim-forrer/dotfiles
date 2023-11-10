local in_mathzone = function()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
  -- Fractions
  s( {trig="ff", dscr="Expands 'ff' into '\\frac{}{} when in mathmode'"},
    fmta(
      "\\frac{<>}{<>}",
      { i(1), i(2) },
      { condition = in_mathzone }
    )
  ),

  -- Equations
  s( {trig="eq", dscr="Expands 'eq' into an equation environment"},
    fmta(
      [[
        \begin{equation}
          <>
        \end{equation}
      ]],
      { i(0) }
    )
  ),

  -- General environments
  s( {trig="env", dscr="Expands 'env' into some general environment"},
    fmta(
      [[
        \begin{<>}
          <>
        \end{<>}
      ]],
      { i(1), i(2), rep(1) }
    )
  ),
}
        
