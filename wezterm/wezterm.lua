local wezterm = require("wezterm")

local config = wezterm.config_builder()
local act = wezterm.action
-- local mux = wezterm.mux()

-- APPEARANCE --
-- config.color_scheme = 'N0tch2k'
config.color_scheme = "nord"
config.colors = {
	background = "#1c1c1c",
}

config.window_padding = {
	top = 5,
	right = 10,
	bottom = 0,
	left = 10,
}

config.enable_scroll_bar = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.freetype_load_target = "HorizontalLcd"
config.audible_bell = "Disabled"

config.font = wezterm.font({
	family = "CaskaydiaCove Nerd Font Mono",
	style = "Normal",
	harfbuzz_features = { "calt=0", "zero" },
})
config.font_size = 14
config.bold_brightens_ansi_colors = "BrightOnly"

wezterm.on("update-right-status", function(window, pane)
	window:set_right_status(window:active_workspace())
end)

config.leader = { key = "\\", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	{
		key = "c",
		mods = "LEADER",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "s",
		mods = "LEADER",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "v",
		mods = "LEADER",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "w",
		mods = "LEADER",
		action = act.ShowLauncherArgs({
			flags = "WORKSPACES",
		}),
	},
	{
		key = "h",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Down"),
	},
}
for i = 1, 8 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = act.ActivateTab(i - 1),
	})
end

config.unix_domains = {
	{
		name = "unix",
	},
}

-- config.wsl_domains = {
-- 	{
-- 		name = 'WSL:Ubuntu',
-- 		distribution = 'Ubuntu-22.04',
-- 	},
-- 	{
-- 		name = 'WSL:NixOS',
-- 		distribution = 'NixOS-23.11'
-- 	}
-- }

config.default_domain = "WSL:Ubuntu"

-- config.default_gui_startup_args = { 'connect', 'unix' }

return config
