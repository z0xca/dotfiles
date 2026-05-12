-- Cursor
hl.env("HYPRCURSOR_THEME", "Posy-Cursor-Mono-Black")
hl.env("XCURSOR_THEME", "Posy-Cursor-Mono-Black")
hl.env("HYPRCURSOR_SIZE", 32)
hl.env("XCURSOR_SIZE", 32)

-- GTK variables
hl.env("GTK_THEME", "Orchis-Dark")

-- Qt Variables
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_QPA_PLATFORMTHEME", "gtk3")

-- Toolkit Backend Variables
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("SDL_VIDEODRIVER", "wayland")

-- Wayland
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
hl.env("DESKTOP_SESSION", "Hyprland")

-- XDG Specifications
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- https://wiki.archlinux.org/title/AMDGPU#User_queues
hl.env("AMD_USERQ", "1")
