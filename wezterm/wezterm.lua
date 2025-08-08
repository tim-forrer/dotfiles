local wezterm = require("wezterm")
local c = wezterm.config_builder()

local bob_path = os.getenv("HOME") .. "/.local/share/bob/nvim-bin/:"
local homebrew_path = "/opt/homebrew/bin:/opt/homebrew/sbin:"
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
