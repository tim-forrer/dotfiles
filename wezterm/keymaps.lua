local wezterm = require("wezterm")
local act = wezterm.action
local module = {}
local all_sub_keymaps = {}

-- Disable keymaps
all_sub_keymaps.disable = {
	{ key = "l", mods = "CTRL | SHIFT", action = wezterm.action.DisableDefaultAssignment },
	{ key = "h", mods = "CTRL | SHIFT", action = wezterm.action.DisableDefaultAssignment },
}

-- Leader definition
module.leader = { key = "s", mods = "CTRL", timeout_milliseconds = 1000 }

-- Copy mode
all_sub_keymaps.copy = {
	{
		mods = "LEADER",
		key = "c",
		action = act.ActivateCopyMode,
	},
	{
		mods = "CMD",
		key = "c",
		action = act.CopyTo("ClipboardAndPrimarySelection"),
	},
}

-- Pane keymaps
all_sub_keymaps.panes = {
	{ -- Split along horizontal axis
		mods = "LEADER",
		key = "\\",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{ -- Split along vertical axis
		mods = "LEADER",
		key = "-",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{ -- Close the active pane
		mods = "LEADER",
		key = "x",
		action = act.CloseCurrentPane({ confirm = true }),
	},
	{ -- Select the pane to the left
		mods = "CTRL",
		key = "h",
		action = act.ActivatePaneDirection("Left"),
	},
	{ -- Select the pane to the right
		mods = "CTRL",
		key = "l",
		action = act.ActivatePaneDirection("Right"),
	},
	{ -- Select the pane above
		mods = "CTRL",
		key = "k",
		action = act.ActivatePaneDirection("Up"),
	},
	{ -- Select the pane below
		mods = "CTRL",
		key = "j",
		action = act.ActivatePaneDirection("Down"),
	},
	{ -- Toggle active pane zoom state
		mods = "LEADER",
		key = "Space",
		action = act.TogglePaneZoomState,
	},
}

-- Tab keymaps
all_sub_keymaps.tabs = {
	{ -- Move one tab left
		key = "[",
		mods = "CMD",
		action = act.ActivateTabRelativeNoWrap(-1),
	},
	{ -- Move one tab back (up)
		key = "]",
		mods = "CMD",
		action = act.ActivateTabRelativeNoWrap(1),
	},
}

-- Move all keymaps into one single table
module.keys = {}

for _, sub_keymaps in pairs(all_sub_keymaps) do
	for _, keymap in ipairs(sub_keymaps) do
		table.insert(module.keys, keymap)
	end
end

return module
