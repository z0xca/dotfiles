local wezterm = require("wezterm")
local config = {}

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
	{ key = "q", mods = "CTRL", action = wezterm.action.CloseCurrentPane({ confirm = false }) },
	{ key = "k", mods = "ALT", action = wezterm.action.ScrollByLine(-1) },
	{ key = "j", mods = "ALT", action = wezterm.action.ScrollByLine(1) },
	{ key = "1", mods = "ALT", action = wezterm.action.ActivateTab(0) },
	{ key = "2", mods = "ALT", action = wezterm.action.ActivateTab(1) },
	{ key = "3", mods = "ALT", action = wezterm.action.ActivateTab(2) },
	{ key = "4", mods = "ALT", action = wezterm.action.ActivateTab(3) },
}

-- E-Ink color scheme
-- https://github.com/e-ink-colorscheme
config.color_schemes = {
	["E-Ink"] = {
		foreground = "#474747",
		background = "#CCCCCC",
		cursor_bg = "none",
		selection_fg = "none",
		selection_bg = "#AEAEAE",
		ansi = {
			"#CCCCCC",
			"#333333",
			"#9A9A9A",
			"#868686",
			"#727272",
			"#AEAEAE",
			"#4A4A4A",
			"#5E5E5E",
		},
		brights = {
			"#5E5E5E",
			"#333333",
			"#9A9A9A",
			"#868686",
			"#727272",
			"#AEAEAE",
			"#4A4A4A",
			"#7C7C7C",
		},
	},
}
config.color_scheme = "E-Ink"

-- Tab bar styling to match theme
config.colors = {
	tab_bar = {
		background = "#CCCCCC",
		active_tab = {
			bg_color = "#AEAEAE",
			fg_color = "#474747",
		},
		inactive_tab = {
			bg_color = "#CCCCCC",
			fg_color = "#7C7C7C",
		},
		inactive_tab_hover = {
			bg_color = "#AEAEAE",
			fg_color = "#474747",
		},
		new_tab = {
			bg_color = "#CCCCCC",
			fg_color = "#474747",
		},
		new_tab_hover = {
			bg_color = "#AEAEAE",
			fg_color = "#474747",
		},
	},
}

-- Tab bar behavior
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

return config
