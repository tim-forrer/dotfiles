local act = require("wezterm").action
local M = {
  -- Universal keybindings
  {
    key = "p",
    mods = "CTRL",
    action = act.ActivateCommandPalette,
  },
  {
    key = "t",
    mods = "CTRL",
    action = act.SpawnTab("CurrentPaneDomain"),
  },
  {
    key = "w",
    mods = "CTRL",
    action = act.CloseCurrentTab { confirm = true },
  },

}
return M
