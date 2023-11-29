local M = {}

-- Change this to change the colorscheme plugin
M.lazy_config = { "folke/tokyonight.nvim", lazy = false, priority = 1000 }

-- Tokyonight specific options
local colorscheme = {
  style = "night",
  on_colors = function(colors)
    colors.comment = colors.teal
  end,
}

-- Call this after installing plugins
M.load = function()
  local tokyonight = require("tokyonight")
  tokyonight.setup(colorscheme)
  tokyonight.load()
end

return M
