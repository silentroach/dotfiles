local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.default_cwd = "/Volumes/Projects"
config.scrollback_lines = 10000

config.color_scheme = "Catppuccin Frappe"
config.max_fps = 120

config.font = wezterm.font({
	family = "MonoLisa Nerd Font Mono",
	weight = "Light",
})
config.font_size = 12
config.line_height = 1.1
config.cell_width = 0.9

config.audible_bell = "Disabled"

config.use_resize_increments = true
-- config.use_resize_increments = false
config.window_padding = {
	left = 2,
	right = 2,
	top = 0,
	bottom = 0,
}
-- config.window_padding = {
-- 	left = 20,
-- 	right = 0,
-- 	top = 0,
-- 	bottom = 10,
-- }

config.window_frame = {
	font = wezterm.font({
		family = "Lucida Grande",
	}),
	font_size = 12,
}

config.initial_rows = 40
config.initial_cols = 160

config.hide_tab_bar_if_only_one_tab = true

return config
