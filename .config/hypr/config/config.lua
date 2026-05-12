local colors = require("colors")

hl.config({
  general = {
    gaps_in = 2,
    gaps_out = 4,
    border_size = 2,

    col = {
      active_border = colors.primary,
      inactive_border = colors.on_primary,
    },

    no_focus_fallback = true,
    layout = "master",
    allow_tearing = true,
  },

  master = {
    orientation = "left",
    new_on_top = true,
    drop_at_cursor = false,
    mfact = 0.5,
  },

  decoration = {
    rounding = 0,
    active_opacity = 1,
    inactive_opacity = 1,
    fullscreen_opacity = 1,
    blur = {
      enabled = true,
      size = 8,
      passes = 2,
      new_optimizations = true,
      xray = false,
      ignore_opacity = true,
    },
    shadow = {
      enabled = false,
    },
  },

  input = {
    accel_profile = "flat",
    sensitivity = 0.15,
    kb_layout = "us, us",
    kb_variant = "colemak_dh",
    kb_options = "grp:alt_space_toggle, caps:swapescape",
    touchpad = {
      natural_scroll = true,
      disable_while_typing = true,
      clickfinger_behavior = true,
    },
  },

  misc = {
    force_default_wallpaper = 0,
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
    focus_on_activate = true,
    vrr = 0,
    enable_anr_dialog = false,
  },

  xwayland = {
    enabled = true,
    force_zero_scaling = true,
  },

  ecosystem = {
    no_update_news = true,
    no_donation_nag = true, -- Sorry :(
  },
})
