local wezterm = require("wezterm")
local c = wezterm.config_builder()

local new_path = "/opt/homebrew/bin:/opt/homebrew/sbin:" .. os.getenv("PATH")

c.set_environment_variables = {
	PATH = new_path,
}

c.default_prog = { "nu", "-l" }
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
