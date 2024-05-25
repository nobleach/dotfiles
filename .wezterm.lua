-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
local dimmer = { brightness = 0.1 }

-- fonts
config.font = wezterm.font("JetBrains Mono")
config.font_size = 18.0

config.window_padding = {
  left = 2,
  right = 2,
  top = 2,
  bottom = 0,
}

-- For example, changing the color scheme:
config.color_scheme = "AdventureTime"
config.background = {
	{
		source = {
			File = "/Users/jim/Pictures/rainy-road.png",
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

-- don't show that tabbar!!
config.hide_tab_bar_if_only_one_tab = true
-- and finally, return the configuration to wezterm
return config
