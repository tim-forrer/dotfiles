local wt = require("wezterm")
local M = {}
M.font = wt.font("Monoid Nerd Font")
M.font_size = 12.0
M.color_scheme = "Everforest Dark (Gogh)"
M.inactive_pane_hsb = {
  saturation = 0.5,
  brightness = 0.5,
}
return M
