local scriptsDir = "sctipt/"

hl.on("hyprland.start", function()
	hl.exec_cmd("awww-daemon --format xrgb") -- wallpaper
	hl.exec_cmd("systemctl")		 -- services controller
	hl.exec_cmd("waybar")			 -- top bar
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	hl.exec_cmd(scriptsDir .. "Polkit.sh")	 -- polkit
	hl.exec_cmd("nm-applet --indicator")	 -- network manager
	hl.exec_cmd("swaync")			 -- notifications daemon
	hl.exec_cmd("kitty")			 -- terminal
	hl.exec_cmd("hypridle")			 -- idle daemon
	hl.exec_cmd("wl-paste --type text --watch cliphist store")  -- clipboard history for text
	hl.exec_cmd("wl-paste --type image --watch cliphist store") -- clipboard history for images
	hl.exec_cmd("blueman-applet")		 -- bluethoot
end)
