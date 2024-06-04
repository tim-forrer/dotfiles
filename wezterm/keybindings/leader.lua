local act = require("wezterm").action
local M = {}

M.key_table_name = "leader"

M.activate = {
  key = "a",
  mods = "CTRL",
  action = act.ActivateKeyTable({
    name = "leader",
    one_shot = false,
    timeout_milliseconds = 1000,
  }),
}

M.key_table = {
  -- Exit the leader key table
  {
    key = "Escape",
    action = "PopKeyTable",
  },
  -- Panes
  -- -- Creation and Deletion
  {
    key = "|",
    mods = "SHIFT",
    action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
  },
  {
    key = "x",
    action = act.CloseCurrentPane({ confirm = false }),
  },

  -- -- Movement
  {
    key = "p",
    action = act.PaneSelect({ mode = "Activate" }),
  },
  {
    key = "p",
    mods = "CTRL",
    action = act.PaneSelect({ mode = "MoveToNewTab" }),
  },

  -- Tabs
  -- -- Creation and Deletion
  {
    key = "t",
    mods = "SHIFT",
    action = act.SpawnTab("CurrentPaneDomain"),
  },
  {
    key = "x",
    mods = "SHIFT",
    action = act.CloseCurrentTab({ confirm = true }),
  },
  -- -- Movement
  {
    key = "j",
    mods = "SHIFT",
    action = act.ActivateTabRelative(-1),
  },
  {
    key = "k",
    mods = "SHIFT",
    action = act.ActivateTabRelative(1),
  },
}

return M
