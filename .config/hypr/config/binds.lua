-- The binds are in Colemak Mod-DH so don't be surprised

hl.bind("SUPER + Delete", hl.dsp.submap("qemu"))
hl.define_submap("qemu", function()
	hl.bind("SUPER + SHIFT + Delete", hl.dsp.submap("reset"))
end)

hl.bind("SUPER + F", hl.dsp.exec_cmd("wezterm"))
hl.bind("SUPER + SHIFT + F", hl.dsp.exec_cmd("wezterm", { float = true }))

hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + Q", hl.dsp.window.kill())

hl.bind("SUPER + W", hl.dsp.window.center())
hl.bind("SUPER + B", function()
	-- Toggle window floating state and center it.
	hl.dispatch(hl.dsp.window.float({ action = "toggle" }))
	hl.dispatch(hl.dsp.window.resize({ x = 1128, y = 752 }))
	hl.dispatch(hl.dsp.window.center())
end)
hl.bind("SUPER + T", hl.dsp.window.fullscreen({ action = "toggle" }))

-- Launcher
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("vicinae toggle"))
hl.bind("SUPER + Z", hl.dsp.exec_cmd("vicinae vicinae://launch/@sovereign/awww-switcher/wprandom"))
hl.bind("SUPER + V", hl.dsp.exec_cmd("vicinae vicinae://launch/clipboard/history"))
hl.bind("SUPER + PERIOD", hl.dsp.exec_cmd("vicinae vicinae://launch/core/search-emojis"))
hl.bind("SUPER + ESCAPE", hl.dsp.exec_cmd("vicinae vicinae://launch/power"))

-- Laptop function key binds
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("volume mute"), { locked = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("volume up"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("volume down"), { locked = true, repeating = true })

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("backlight down"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("backlight up"), { locked = true, repeating = true })

-- Screenshot and screen recording
hl.bind("Print", hl.dsp.exec_cmd("hyprshot-gui"))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("hyprshot-gui"))
hl.bind("XF86AudioMedia", hl.dsp.exec_cmd("record"))

-- Focus windows
hl.bind("SUPER + h", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + j", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + k", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + l", hl.dsp.focus({ direction = "down" }))

-- Move windows
hl.bind("SUPER + SHIFT + h", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + SHIFT + j", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + SHIFT + k", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + l", hl.dsp.window.move({ direction = "down" }))

-- Resize windows
hl.bind("SUPER + CTRL + h", hl.dsp.window.resize({ x = -70, y = 0, relative = true }))
hl.bind("SUPER + CTRL + j", hl.dsp.window.resize({ x = 70, y = 0, relative = true }))
hl.bind("SUPER + CTRL + k", hl.dsp.window.resize({ x = 0, y = -70, relative = true }))
hl.bind("SUPER + CTRL + l", hl.dsp.window.resize({ x = 0, y = 70, relative = true }))

-- Switch workspaces: SUPER + [0-9]
-- Move active window to workspace: SUPER + SHIFT [0-9]
-- Move active window to workspace and follow: SUPER + CTRL [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i, follow = false }))
	hl.bind("SUPER + CTRL + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Move/resize windows with SUPER + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })
