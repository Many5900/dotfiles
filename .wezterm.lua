-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
-- config.default_prog = { "/opt/homebrew/bin/tmux", "a" }
config.default_cwd = "/Users/marcnygaard/code/"
-- config.font = wezterm.font("BlexMono Nerd Font")
config.font = wezterm.font("JetBrains Mono")
config.font_size = 17.0
config.enable_tab_bar = false

config.color_scheme = "Atom"

config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

-- and finally, return the configuration to wezterm
return config
