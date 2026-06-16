hl.on("hyprland.start", function()
	local cmds = {
		"systemctl --user start hyprpolkitagent",
		"waybar",
		"hyprpaper",
		"hyprsunset",
		"hypridle",
		"udiskie --no-config --automount --notify --no-tray",
		"wl-clip-persist --clipboard regular",
		"vicinae server",
		"aria2c --enable-rpc --rpc-listen-all -D",
		"packages-history",
	}

	for i = 1, #cmds do
		local cmd = cmds[i]
		hl.exec_cmd(cmd)
	end
end)
