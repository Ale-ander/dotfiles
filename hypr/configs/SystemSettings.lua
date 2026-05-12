local colorscheme = require("/configs/wallust-hyprland")

hl.config({
	general = {
		border_size = 1,
		gaps_in = 7,
		gaps_out = 15,
		resize_on_border = true,
		layout = "dwindle"
	},
	input = {
		kb_layout = "it,us",
		numlock_by_default = true,
		repeat_rate = 50,
		repeat_delay = 300,
		left_handed = false,
		sensitivity = 0,
		follow_mouse = 1,
		float_switch_override_focus = false,
		touchpad = {
			disable_while_typing = true,
			natural_scroll = true,
			clickfinger_behavior = true,
			middle_button_emulation = false,
			tap_to_click = true,
			drag_lock = false
		}
	},
	gestures = {
		workspace_swipe_distance = 500,
		workspace_swipe_invert = true,
		workspace_swipe_min_speed_to_force = 30,
		workspace_swipe_cancel_ratio = 0.5,
		workspace_swipe_create_new = true,
		workspace_swipe_forever = true,
	},
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		vrr = 2,
		mouse_move_enables_dpms = true,
		enable_swallow = false,
		swallow_regex = "^(kitty)$",
		focus_on_activate = false,
		initial_workspace_tracking = 0,
		middle_click_paste = false,
		enable_anr_dialog = true,    -- Application not Responding (ANR)
		anr_missed_pings = 15,       -- ANR Threshold default 1 is too low
		allow_session_lock_restore = true,  -- Prevent lockscreen crash when resume from suspend
		-- This only works with HL v0.53+
		on_focus_under_fullscreen = 1,
	},
	binds = {
		workspace_back_and_forth = false,
		allow_workspace_cycles = true,
		pass_mouse_when_bound = false,
	},
	xwayland = {
		enabled = true,
		force_zero_scaling = true,
	},
	render = {
		direct_scanout = 0,
	},
	cursor = {
		sync_gsettings_theme = true,
		no_hardware_cursors =  1,
		enable_hyprcursor = true,
		warp_on_change_workspace = 2,
		no_warps = true,
		},
	decoration = {
		rounding = 10,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		fullscreen_opacity = 1.0,
		dim_inactive = false,
		dim_strength = 0.1,
		dim_special = 0.8,
		shadow = {
			enabled = true,
			range = 3,
			render_power = 1,
			color = colorscheme.color12,
			color_inactive = colorscheme.color10,
		},
		blur = {
			enabled = true,
			size = 6,
			passes = 3,
			new_optimizations = true,
			xray = true,
			ignore_opacity = true,
			special = true,
			popups = true,
		}
	},
	group = {
		col = {
			border_active = colorscheme.color15
		},
		groupbar = {
			col = {
				active = colorscheme.color10
			}
		}
	}

})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace"
	})
