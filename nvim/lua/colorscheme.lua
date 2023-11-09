require("tokyonight").setup({
  style = "night",
  on_colors = function(colors)
    colors.comment = colors.teal
  end
})
require("tokyonight").load()
