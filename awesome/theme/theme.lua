local gears = require("gears")
local awful = require("awful")
local wibox = require("wibox")

local dpi = require("beautiful.xresources").apply_dpi
local os  = { getenv = os.getenv }

local theme = {}

theme.dir          = os.getenv("HOME") .. "/.config/awesome/theme"
theme.wallpaper    = theme.dir .. "/wallpaper.jpg"
theme.font         = "Roboto 14"
theme.fg_normal    = "#D7D7D7"
theme.fg_focus     = "#F4E02E"
theme.fg_urgent    = "#CC9393"
theme.bg_normal    = "#33333390"
theme.bg_focus     = "#70B4A980"
theme.fg_urgent    = "#CC9393"
theme.bg_urgent    = "#3F3F3F80"
theme.bg_systray   = theme.bg_normal
theme.taglist_font = "Roboto 14"

-- {{{ Borders
theme.useless_gap   = dpi(0)
theme.border_width  = dpi(5)
theme.border_normal = "#4E4E4E"
theme.border_focus  = theme.border_normal
theme.border_marked = theme.border_normal
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#3F3F3F70"
theme.titlebar_bg_normal = "#3F3F3F70"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
theme.menu_height       = dpi(30)
theme.menu_font         = "Roboto 14"
theme.menu_width        = dpi(250)
theme.menu_border_width = dpi(1)
theme.menu_useless_gap  = dpi(0)
theme.menu_fg_normal    = "#333333"
theme.menu_fg_focus     = "#FFFFFF"
theme.menu_bg_normal    = "#FDFDFD80"
theme.menu_bg_focus     = "#1A78D0"
-- }}}

-- {{{ Taglist
theme.taglist_squares_sel    = theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel  = theme.dir .. "/icons/square_unsel.png"
theme.taglist_squares_resize = "true"
-- }}}
--

-- {{{ Misc
-- theme.awesome_icon = theme.dir .. "/icons/awesome.png"
-- }}}

return theme
