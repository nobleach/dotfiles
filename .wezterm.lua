-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
local dimmer = { brightness = 0.1 }

-- fonts
config.font = wezterm.font("FiraMono Nerd Font Mono")
-- config.font = wezterm.font("Monaspace Argon")
config.font_size = 18.0
config.line_height = 1.1

config.window_padding = {
  left = 2,
  right = 2,
  top = 2,
  bottom = 0,
}

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha" -- or Macchiato, Frappe, Latte
-- config.color_scheme = "rose-pine"
config.background = {
	{
		source = {
			File = "/Users/jim.wharton/Pictures/sunrise-above-water.jpg",
		},
		hsb = dimmer,
	},
	{
    source = {
      Color = '#2A263E'
    },
    width = "100%",
    height = "100%",
    opacity = 0.8
	},
}

-- Keys config
local act = wezterm.action
config.keys = {
{
    key = 'UpArrow',
    mods = 'OPT',
    action = act.SendKey {
      key = 'UpArrow',
      mods = 'ALT',
    },
  },
  {
    key = 'DownArrow',
    mods = 'OPT',
    action = act.SendKey { key = 'DownArrow', mods = 'ALT' },
  },
}

-- don't show that tabbar!!
config.hide_tab_bar_if_only_one_tab = true
-- and finally, return the configuration to wezterm
return config
