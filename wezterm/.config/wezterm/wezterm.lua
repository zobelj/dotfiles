-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

config.color_scheme = "Tokyo Night"

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 14

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

-- Keybinds
config.keys = {
	{ key = 'LeftArrow', mods = 'CMD', action = wezterm.action { SendString = "\x1bOH" } },
	{ key = 'RightArrow', mods = 'CMD', action = wezterm.action { SendString = "\x1bOF" } },

	{ mods = "OPT", key = "LeftArrow", action = wezterm.action.SendKey({ mods = "ALT", key = "b" }) },
	{ mods = "OPT", key = "RightArrow", action = wezterm.action.SendKey({ mods = "ALT", key = "f" }) },
}

return config

