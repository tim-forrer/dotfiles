local wt = require("wezterm")
local act = wt.action
local M = {}

local copy_or_paste = function(window, pane)
  local has_selection = window:get_selection_text_for_pane(pane) ~= ""
  if has_selection then
    window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
    window:perform_action(act.ClearSelection, pane)
  else
    window:perform_action(act({ PasteFrom = "Clipboard" }), pane)
  end
end

M.mouse_bindings = {
  {
    event = { Down = { streak = 1, button = "Right"} },
    mods = "NONE",
    action = wt.action_callback(copy_or_paste),
  }
}

return M
