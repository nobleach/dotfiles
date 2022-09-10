
local wibox = require('wibox')
local vc = require('vicious')
local beautiful = require("beautiful")
local widgets = require("ui.widgets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local hdd = {}
local w = wibox.widget.textbox()
vc.cache(vc.widgets.fs)

hdd.text = vc.register(w, vc.widgets.fs, "<span foreground='" .. beautiful.accent .."'>/home ${avail_gb} GB</span>")
hdd.label = widgets.button.text.normal({
    text_hover_bg = beautiful.xforeground,
    text_normal_bg = beautiful.xforeground,
    hover_bg = beautiful.transparent,
    normal_bg = beautiful.transparent,
    margins = dpi(1),
    text = "HDD",
    size = 10,
})

return hdd
