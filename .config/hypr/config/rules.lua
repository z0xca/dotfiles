hl.layer_rule({ match = { namespace = "waybar" }, blur = true })

hl.layer_rule({
  match = { namespace = "vicinae" },
  name = "vicinae-blur",
  blur = true,
  ignore_alpha = 0,
})

hl.window_rule({
  name = "hyprshot",
  match = {
    title = "Hyprshot",
  },
  float = true,
})

hl.window_rule({
  name = "wiremix",
  match = {
    title = "wiremix",
  },
  float = true,
})

hl.window_rule({
  name = "tanks",
  match = {
    class = "Tanks",
  },
  float = true,
  center = true,
})

hl.window_rule({
  name = "no-border-on-single-window",
  match = {
    float = false,
    workspace = "w[tv1]",
  },
  border_size = 0,
})

hl.window_rule({
  name = "minecraft",
  match = {
    class = [[^Minecraft\*.*]],
  },
  immediate = true,
})
