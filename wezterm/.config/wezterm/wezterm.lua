local wezterm = require("wezterm")

-- Define the Claude color scheme
local claude_colors = {
  foreground = "#faf9f5",
  background = '#262624',
  cursor_bg = '#CC785C',
  cursor_fg = '#262624',
  cursor_border = '#CC785C',
  selection_fg = '#E8E6E3',
  selection_bg = '#3C3A37',
  scrollbar_thumb = '#3C3A37',
  split = '#3C3A37',
  ansi = {
    '#1f1e1d', -- black (darker background)
    '#D07A7A', -- red
    '#A8C07A', -- green
    '#E6C07B', -- yellow
    '#7AA8C0', -- blue
    '#B87AC0', -- magenta
    '#7AC0B8', -- cyan
    '#B8B6B3', -- white
  },
  brights = {
    '#3C3A37', -- bright black
    '#E89999', -- bright red
    '#BAD099', -- bright green
    '#F0D099', -- bright yellow
    '#99BAD0', -- bright blue
    '#D099BA', -- bright magenta
    '#99D0BA', -- bright cyan
    '#E8E6E3', -- bright white
  },

  indexed = {[136] = '#CC785C'}, -- Claude orange

  compose_cursor = '#E6C07B',

  copy_mode_active_highlight_bg = { Color = '#CC785C' },
  copy_mode_active_highlight_fg = { Color = '#262624' },
  copy_mode_inactive_highlight_bg = { Color = '#3C3A37' },
  copy_mode_inactive_highlight_fg = { Color = '#E8E6E3' },

  quick_select_label_bg = { Color = '#CC785C' },
  quick_select_label_fg = { Color = '#262624' },
  quick_select_match_bg = { Color = '#E6C07B' },
  quick_select_match_fg = { Color = '#262624' },
}

local function setup_claude_theme(config)
  config.colors = claude_colors
  config.color_scheme = nil -- Disable built-in color scheme
  
  config.window_background_opacity = 1.0
  config.text_background_opacity = 1.0
  
  config.window_padding = {
    left = 8,
    right = 8,
    top = 8,
    bottom = 8,
  }
  
  config.default_cursor_style = 'BlinkingBar'
  config.cursor_blink_rate = 500
  config.cursor_blink_ease_in = 'Constant'
  config.cursor_blink_ease_out = 'Constant'

  return config
end

local config = wezterm.config_builder()

config = setup_claude_theme(config)

-- other configuration options:
-- config.font = wezterm.font('JetBrains Mono')
-- config.font_size = 14.0
-- etc...

-- config.color_scheme = "Tokyo Night"
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
