local wezterm = require 'wezterm'
local act = wezterm.action

-- local schemes = {}
-- for name, scheme in pairs(wezterm.get_builtin_color_schemes()) do
--   -- table.insert(schemes, name)
--   wezterm.log_info('name', name)
-- end

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'
-- config.color_scheme = 'Catppuccin Macchiato'
-- config.color_scheme = 'Catppuccin Frappe'
-- config.color_scheme = 'Catppuccin Latte'
-- config.color_scheme = 'Tokyo Night'
-- config.color_scheme = 'seoulbones_light'
-- config.color_scheme = 'Gruvbox Light'
-- config.color_scheme = 'Batman'

config.use_fancy_tab_bar = false
-- config.tab_bar_at_bottom = false
-- config.enable_tab_bar = false

config.window_decorations = 'RESIZE'
config.window_background_opacity = 0.95
config.max_fps = 144
config.enable_scroll_bar = true
config.hide_tab_bar_if_only_one_tab = true
-- config.text_background_opacity = 0.93

config.inactive_pane_hsb = {
  saturation = 0.24,
  brightness = 0.5
}

config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "main"

-- local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
-- -- custom.selection_fg = "none"
-- custom.selection_bg = "rgba:50% 50% 50% 10%"

-- config.color_schemes = {
--   ['Mine'] = custom,
-- }

-- config.color_scheme = "Mine"

-- return {
--   color_schemes = {
--     ["OLEDppuccin"] = custom,
--   },
--   color_scheme = "OLEDppuccin",
-- }

config.leader = { key = "§", timeout_milliseconds = 1000 }
config.keys = {
  { key = "p",          mods = "LEADER", action = act.ActivateCommandPalette },
  { key = "c",          mods = "LEADER", action = act.ActivateCopyMode },

  -- Pane keybindings
  { key = "D",          mods = "LEADER", action = act.SplitVertical { domain = "CurrentPaneDomain" } },
  { key = "d",          mods = "LEADER", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },
  { key = "h",          mods = "LEADER", action = act.ActivatePaneDirection("Left") },
  { key = "j",          mods = "LEADER", action = act.ActivatePaneDirection("Down") },
  { key = "k",          mods = "LEADER", action = act.ActivatePaneDirection("Up") },
  { key = "l",          mods = "LEADER", action = act.ActivatePaneDirection("Right") },
  { key = "q",          mods = "LEADER", action = act.CloseCurrentPane { confirm = true } },
  { key = "z",          mods = "LEADER", action = act.TogglePaneZoomState },
  { key = "o",          mods = "LEADER", action = act.RotatePanes "Clockwise" },
  { key = 'LeftArrow',  mods = 'OPT',    action = act.SendKey { key = 'b', mods = 'ALT', } },
  { key = 'RightArrow', mods = 'OPT',    action = act.SendKey { key = 'f', mods = 'ALT' } },
  -- { key = "l", mods = "ALT", action = wezterm.action_callback(themeCycler) },
  -- { key = "Escape", mods = "CTRL", action = wezterm.action.ShowDebugOverlay },
}
return config
