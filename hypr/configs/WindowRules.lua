-- Generic tags
hl.window_rule({ match = { class = "^([Ff]irefox|org.mozilla.firefox|[Ff]irefox-esr|[Ff]irefox-bin)$" }, tag = "+browser"})
hl.window_rule({ match = { class = "^(swaync-control-center|swaync-notification-window|swaync-client|class)$" }, tag = "+notif"})
hl.window_rule({ match = { title = "(Key Bindings Cheat Sheet)" }, tag = "+cheat"})
hl.window_rule({ match = { class = "^(Alacritty|kitty|kitty-dropterm)$" }, tag = "+terminal"})
hl.window_rule({ match = { class = "^([Tt]hunderbird|org.mozilla.Thunderbird)$" }, tag = "+email"})
hl.window_rule({ match = { class = "^([Tt]hunar|org.gnome.Nautilus|[Pp]cmanfm-qt)$", }, tag = "+file-manager"})
-- Settings tags
hl.window_rule({ match = { title = "(Kvantum Manager)" }, tag = "+settings"})
hl.window_rule({ match = { class = "^(nm-applet|nm-connection-editor|blueman-manager)$" }, tag = "+settings"})
hl.window_rule({ match = { class = "^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$" }, tag = "+settings"})
hl.window_rule({ match = { class = "^(qt5ct|qt6ct)$" }, tag = "+settings"})
hl.window_rule({ match = { class = "^([Rr]ofi)$" }, tag = "+settings"})
hl.window_rule({ match = { class = "^(btrfs-assistant)$" }, tag = "+settings"})

-- Rules
hl.window_rule({ match = { tag = "multimedia_video" }, no_blur = true, opacity = 1.0 })
hl.window_rule({ match = { tag = "multimedia" }, no_blur = true, opacity = 1.0 })

hl.window_rule({ match = { tag = "cheat" }, center = true, float = true, size = {"(monitor_w*0.65)", "(monitor_h*0.8)"}})
hl.window_rule({ match = { tag = "settings"}, center = true, float = true, size = {"(monitor_w*0.65)", "(monitor_h*0.8)"}})
hl.window_rule({ match = { fullscreen = true}, idle_inhibit = "fullscreen" })
hl.window_rule({ match = { class = "(org.gnome.Calculator|qalculate-gtk)" }, float = true })
hl.window_rule({ match = { title = "^(Authentication Required)$"}, center = true, float = true})
hl.window_rule({ match = { title = "^(Add Folder to Workspace)$"}, center = true, float = true, size = {"(monitor_w*0.7)", "(monitor_h*0.6)"}})
hl.window_rule({ match = { title = "^(Save As)$"}, center = true, float = true, size = {"(monitor_w*0.65)", "(monitor_h*0.8)"}})
hl.window_rule({ match = { initial_title = "(Open Files)$"}, float = true, size = {"(monitor_w*0.7)", "(monitor_h*0.6)"}})
--no working
-- hl.window_rule({ match = { initial_title = "^(bash)$"}, center = true, float = true, size = {"(monitor_w*0.16)", "(monitor_h*0.12)"}})
hl.window_rule({ match = { class = "^(yad)$"}, center = true, float = true, size = {"(monitor_w*0.2)", "(monitor_h*0.2)"}})
hl.window_rule({ match = { class = "^(hyprland-donate-screen)$"}, center = true, float = true})
-- Layer rues
hl.layer_rule({ match = { namespace = "rofi" }, blur = true})
hl.layer_rule({ match = { namespace = "notifications" }, blur = true})
