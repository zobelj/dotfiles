local wezterm = require 'wezterm'

-- Claude color scheme
local claude_colors = {
  foreground = '#faf9f5',
  background = '#262624',
  cursor_bg = '#CC785C',
  cursor_fg = '#262624',
  cursor_border = '#CC785C',
  selection_fg = '#faf9f5',
  selection_bg = '#3C3A37',
  scrollbar_thumb = '#3C3A37',
  split = '#3C3A37',

  ansi = {
    '#1f1e1d', -- black (darker background)
    '#FF9B9B', -- red (much brighter)
    '#C8FF9B', -- green (much brighter) 
    '#FFDB9B', -- yellow (much brighter)
    '#9BC8FF', -- blue (much brighter)
    '#E89BFF', -- magenta (much brighter)
    '#9BFFE8', -- cyan (much brighter)
    '#E8E5E0', -- white (much brighter)
  },
  brights = {
    '#6B6A67', -- bright black (much brighter)
    '#FFB8B8', -- bright red (much brighter)
    '#D8FFB8', -- bright green (much brighter)
    '#FFEBB8', -- bright yellow (much brighter)
    '#B8D8FF', -- bright blue (much brighter)
    '#F8B8FF', -- bright magenta (much brighter)
    '#B8FFF8', -- bright cyan (much brighter)
    '#FFFFFF', -- bright white (pure white)
  },

  indexed = {[136] = '#CC785C'}, -- Claude orange

  compose_cursor = '#E6C07B',

  copy_mode_active_highlight_bg = { Color = '#CC785C' },
  copy_mode_active_highlight_fg = { Color = '#262624' },
  copy_mode_inactive_highlight_bg = { Color = '#3C3A37' },
  copy_mode_inactive_highlight_fg = { Color = '#faf9f5' },

  quick_select_label_bg = { Color = '#CC785C' },
  quick_select_label_fg = { Color = '#262624' },
  quick_select_match_bg = { Color = '#F0D08A' },
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

  config.default_cursor_style = 'BlinkingBlock'
  config.cursor_blink_rate = 800
  config.cursor_blink_ease_in = 'Constant'
  config.cursor_blink_ease_out = 'Constant'
  
  return config
end

local config = wezterm.config_builder()

config = setup_claude_theme(config)

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
