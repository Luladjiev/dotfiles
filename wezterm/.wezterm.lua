-- Pull in the wezterm API
local wezterm = require("wezterm")

function recompute_padding(window)
  local window_dims = window:get_dimensions()
  local overrides = window:get_config_overrides() or {}

  if not window_dims.is_full_screen then
    if not overrides.window_padding then
      -- not changing anything
      return
    end
    overrides.window_padding = nil
  else
    -- Use only the middle 50%
    local third = math.floor(window_dims.pixel_width / 4)
    local new_padding = {
      left = third,
      right = third,
      top = 0,
      bottom = 0,
    }
    if
      overrides.window_padding
      and new_padding.left == overrides.window_padding.left
    then
      -- padding is same, avoid triggering further changes
      return
    end
    overrides.window_padding = new_padding
  end
  window:set_config_overrides(overrides)
end

wezterm.on('window-resized', function(window, pane)
  recompute_padding(window)
end)

wezterm.on('window-config-reloaded', function(window)
  recompute_padding(window)
end)

function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return 'Dark'
end

function set_helix_theme(appearance)
  local theme = 'catppuccin_mocha'

  if appearance:find 'Light' then
    theme = 'catppuccin_latte'   
  end

  local path = '~/.config/helix/themes/'
  local source = path .. theme .. '.toml'
  local target = path .. 'my-theme.toml'

  local command = string.format('ln -s -f %s %s', source, target)
  os.execute(command)

  command = string.format('chmod -h 755 %s', target)
  os.execute(command)
end

function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'Catppuccin Mocha'
  else
    return 'Catppuccin Latte'
  end
end

-- This table will hold the configuration.
local config = {}

config.color_scheme = scheme_for_appearance(get_appearance())
config.font = wezterm.font("JetBrains Mono")
config.font_size = 15

set_helix_theme(get_appearance())

local act = wezterm.action

config.keys = {
  { key = 'UpArrow', mods = 'SHIFT', action = act.ScrollByLine(-5) },
  { key = 'DownArrow', mods = 'SHIFT', action = act.ScrollByLine(5) },
}

-- and finally, return the configuration to wezterm
return config
