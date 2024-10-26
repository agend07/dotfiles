local wezterm = require 'wezterm'
local act = wezterm.action

function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return 'Dark'
end

function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'Catppuccin Macchiato'
  else
    return 'Tomorrow'
  end
end

local config = wezterm.config_builder()

-- config.color_scheme = 'Catppuccin Mocha'
-- config.color_scheme = 'Catppuccin Macchiato'
-- config.color_scheme = 'Catppuccin Frappe'
-- config.color_scheme = 'Catppuccin Latte'
-- config.color_scheme = 'Tokyo Night'
-- config.color_scheme = 'seoulbones_light'
-- config.color_scheme = 'Gruvbox Light'
-- config.color_scheme = 'Batman'
-- config.color_scheme = 'Builtin Tango Light'
-- config.color_scheme = 'Tomorrow'

config.color_scheme = scheme_for_appearance(get_appearance())
config.use_fancy_tab_bar = false
-- config.tab_bar_at_bottom = false
-- config.enable_tab_bar = false

config.window_decorations = 'RESIZE'
-- config.window_background_opacity = 0.95
config.max_fps = 144
config.enable_scroll_bar = true
config.hide_tab_bar_if_only_one_tab = true

config.inactive_pane_hsb = {
  saturation = 0.24,
  brightness = 0.5
}

config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "main"

--config.ssh_domains = {
--  {
--    name = 'bao',
--    remote_address = 'bao',
--    username = 'arek',
--  },
--}

-- tab bar
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = false
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = true

return config
