local wt = require("wezterm")
local M = {}
M.font = wt.font("GoMono Nerd Font")
M.font_size = 10.0
M.color_scheme = "dawnfox"
M.inactive_pane_hsb = {
  saturation = 0.5,
  brightness = 0.5,
}
return M
