local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.default_cwd = "/Volumes/Projects"
config.scrollback_lines = 10000

config.color_scheme = "Catppuccin Frappe"
config.max_fps = 120

config.font = wezterm.font({
	family = "MonoLisa Nerd Font",
	weight = "Light",
})
config.font_size = 14
config.line_height = 1.1
config.cell_width = 0.9

config.audible_bell = "Disabled"

config.window_padding = {
	left = 2,
	right = 2,
	top = 0,
	bottom = 0,
}

config.hide_tab_bar_if_only_one_tab = true

config.window_frame = {
	font = wezterm.font({
		family = "Lucida Grande",
	}),
	font_size = 12,
}

return config
