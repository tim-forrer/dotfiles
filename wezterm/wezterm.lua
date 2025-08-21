local wezterm = require("wezterm")
local c = wezterm.config_builder()

local get_os = function ()
  local pipe = io.popen("uname -s", "r")
  if pipe == nil then
    wezterm.log_info("Failed to open pipe.")
    return
  end
  local os_name = pipe:read("*a")
  pipe:close()
  return os_name:gsub("^%s*(.-)%s*$", "%1")
end

local bob_path = os.getenv("HOME") .. "/.local/share/bob/nvim-bin/:"

local get_homebrew_path = function()
  local os_string = get_os()
  if os_string == "Darwin" then
    return "/opt/homebrew/bin:/opt/homebrew/sbin:"
  elseif os_string == "Linux" then
    return "/home/linuxbrew/.linuxbrew/bin:"
  end
end

local new_path = bob_path .. get_homebrew_path() .. os.getenv("PATH")

c.set_environment_variables = {
	PATH = new_path,
	SHELL = "fish",
}

c.default_prog = { get_homebrew_path():match("([^:]+)") .. "/fish", "-l" }

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
