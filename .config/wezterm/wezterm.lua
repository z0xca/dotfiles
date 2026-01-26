local wezterm = require("wezterm")
local home = wezterm.home_dir
wezterm.add_to_config_reload_watch_list(home .. "/.config/wezterm/colors/theme.toml")
local config = {}

-- Matugen --
config.automatically_reload_config = true
color_scheme_dirs = { home .. "/.config/wezterm/colors" }
config.color_scheme = "theme"

-- Window settings
config.window_padding = {
	left = 16,
	right = 16,
	top = 4,
	bottom = 4,
}

config.window_close_confirmation = "NeverPrompt"
config.window_background_opacity = 0.8
config.default_cursor_style = "BlinkingBar"
config.hide_mouse_cursor_when_typing = true

config.enable_wayland = true

-- Font settings
config.font = wezterm.font_with_fallback({
	"SF Mono",
	"Symbols Nerd Font Mono",
})
config.font_size = 12

-- Key bindings (your original shortcuts)
config.keys = {
	{ key = "c", mods = "CTRL", action = wezterm.action.CopyTo("Clipboard") },
	{ key = "v", mods = "CTRL", action = wezterm.action.PasteFrom("Clipboard") },
	{ key = "c", mods = "CTRL|SHIFT", action = wezterm.action.SendString("\x03") },
	{ key = "t", mods = "CTRL", action = wezterm.action.SpawnTab("DefaultDomain") },
	{ key = "w", mods = "CTRL", action = wezterm.action.CloseCurrentTab({ confirm = false }) },
	{ key = "k", mods = "ALT", action = wezterm.action.ScrollByLine(-1) },
	{ key = "j", mods = "ALT", action = wezterm.action.ScrollByLine(1) },
	{ key = "1", mods = "ALT", action = wezterm.action.ActivateTab(0) },
	{ key = "2", mods = "ALT", action = wezterm.action.ActivateTab(1) },
	{ key = "3", mods = "ALT", action = wezterm.action.ActivateTab(2) },
	{ key = "4", mods = "ALT", action = wezterm.action.ActivateTab(3) },
	{ key = "5", mods = "ALT", action = wezterm.action.ActivateTab(4) },
	{ key = "6", mods = "ALT", action = wezterm.action.ActivateTab(5) },
	{ key = "7", mods = "ALT", action = wezterm.action.ActivateTab(6) },
	{ key = "8", mods = "ALT", action = wezterm.action.ActivateTab(7) },
	{ key = "9", mods = "ALT", action = wezterm.action.ActivateTab(8) },
	{ key = "0", mods = "ALT", action = wezterm.action.ActivateTab(9) },
}

-- Tab bar behavior
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false

return config
