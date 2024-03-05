local act = require("wezterm").action
local M = {
  -- Universal keybindings
  {
    key = "p",
    mods = "SUPER",
    action = act.ActivateCommandPalette,
  },
  {
    key = "t",
    mods = "SUPER",
    action = act.SpawnTab("CurrentPaneDomain"),
  },
}

return M
