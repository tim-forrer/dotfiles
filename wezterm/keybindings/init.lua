local wt = require("wezterm")
local M = {}

-- Disable all bindings
M.disable_default_key_bindings = true

-- Simple bindings
M.keys = require("keybindings.keys")

-- Key tables
local key_tables_list = {}
local keys_size = #M.keys

key_tables_list[1] = require("keybindings.leader")

-- Show which key table is active in the status area
wt.on("update-right-status", function(window, pane)
  local name = window:active_key_table()
  if name then
    name = "TABLE: " .. name
  end
  window:set_right_status(name or "")
end)

-- Iterate and add all key tables
M.key_tables = {}
for i, v in ipairs(key_tables_list) do
  M.key_tables[v.key_table_name] = v.key_table
  M.keys[keys_size + i] = v.activate
end

return M
