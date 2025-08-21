local wezterm = require("wezterm")
wezterm.log_info("Building config")
local c = wezterm.config_builder()

local get_os = function ()
  local pipe = io.popen("uname -s", "r")
  if pipe == nil then
    wezterm.log_info("Failed to open pipe.")
    return
  end
  local os_name = pipe:read("*a")
  pipe:close()
  wezterm.log_info("Detected OS: " .. os_name)
  return os_name:gsub("^%s*(.-)%s*$", "%1")
end

local bob_path = os.getenv("HOME") .. "/.local/share/bob/nvim-bin/:"
local homebrew_path = "/opt/homebrew/bin:/opt/homebrew/sbin:"

if get_os() == "Linux" then
  homebrew_path = "/home/linuxbrew/.linuxbrew/bin:"
end

local new_path = bob_path .. homebrew_path .. os.getenv("PATH")

c.set_environment_variables = {
	PATH = new_path,
	SHELL = "fish",
}

c.default_prog = { "fish", "-l" }

-- Imported config files
-- Each must have a ".apply_to_config()" defined
local keymaps = require("keymaps")
local styling = require("styling")
local multiplexing = require("multiplexing")

local config_files = {
	keymaps,
	styling,
	multiplexing,
}

for _, config_file in ipairs(config_files) do
	for k, v in pairs(config_file) do
		c[k] = v
	end
end

return c
