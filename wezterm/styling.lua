local wezterm = require("wezterm")
local module = {}

-- Color scheme
module.color_scheme = "dayfox"
local color_scheme = wezterm.color.get_builtin_schemes()[module.color_scheme]

-- Additional colors
module.colors = {
	tab_bar = {
		background = color_scheme.cursor_bg,
		active_tab = {
			bg_color = color_scheme.background,
			fg_color = color_scheme.foreground,
		},
		inactive_tab = {
			bg_color = color_scheme.cursor_bg,
			fg_color = color_scheme.cursor_fg,
			intensity = "Half",
		},
	},
}

-- Tab bar
module.enable_tab_bar = true
module.use_fancy_tab_bar = false
module.show_new_tab_button_in_tab_bar = false
module.tab_bar_at_bottom = true

-- Font
module.font = wezterm.font("Mononoki Nerd Font Mono")
module.font_size = 18.0

-- Callbacks
local function tab_title(tab, panes)
	local tab_text = tab.active_pane.title
	if not tab.is_active then
		tab_text = tab.tab_index + 1 .. "." .. tab_text
	end

	if tab.active_pane.is_zoomed then
		tab_text = wezterm.nerdfonts.oct_zoom_in .. tab_text
	end
	return " " .. tab_text .. " "
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	return {
		{ Text = tab_title(tab, panes) },
	}
end)

return module
