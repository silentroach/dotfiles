local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Frappe"

config.font = wezterm.font({
	family = "MonoLisa Nerd Font",
	weight = "Light",
})
config.font_size = 13
config.line_height = 1.05

config.audible_bell = "Disabled"

config.window_padding = {
	left = 20,
	right = 14,
	top = 10,
	bottom = 10,
}

config.window_frame = {
	font = wezterm.font({
		family = "Lucida Grande",
	}),
	font_size = 12,
}

return config
