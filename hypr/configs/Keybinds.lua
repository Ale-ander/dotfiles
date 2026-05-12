local scriptsDir = ".config/hypr/scripts/"
local mainMod = "SUPER"
local apps = require("configs/DefaultsApps")


hl.bind(mainMod ..  " + Return", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("pkill rofi || true && rofi -show drun -modi drun,window"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("pcmanfm-qt"))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({mode = "fullscreen", action = "toggle"}))
hl.bind(mainMod .. " + H", hl.dsp.exec_cmd(scriptsDir .. "KeyHints.sh"))
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd(scriptsDir .. "KeyBinds.sh"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd(scriptsDir .. "LockScreen.sh"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("flatpak run org.ferdium.Ferdium"))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd(scriptsDir .. "Wlogout.sh"))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float({}))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(scriptsDir .. "WallpaperSelect.sh"))

hl.bind(mainMod .. " + ALT + left", hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. " + ALT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind(mainMod .. " + ALT + up", hl.dsp.window.swap({ direction = "up" }))
hl.bind(mainMod .. " + ALT + down", hl.dsp.window.swap({ direction = "down" }))

hl.bind(mainMod .. " + ALT + mouse_down", hl.dsp.exec_cmd("")) -- zooming

hl.bind(mainMod .. " + ALT + R", hl.dsp.exec_cmd(scriptsDir .. "Refresh.sh"))

hl.define_submap("resize", function()
    hl.bind("right", hl.dsp.window.resize({ x = 10, y = 0, relative = true}), { repeating = true })
    hl.bind("left", hl.dsp.window.resize({ x = -10, y = 0, relative = true}), { repeating = true })
    hl.bind("up", hl.dsp.window.resize({ x = 0, y = 10, relative = true}), { repeating = true })
    hl.bind("down", hl.dsp.window.resize({ x = 10, y = -10, relative = true}), { repeating = true })

    hl.bind("escape", hl.dsp.submap("reset"))
end)

hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("hyprpicker | wl-copy"))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd(scriptsDir .. "RofiEmoji.sh"))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({mode = "maximized", action = "toggle"}))
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd("swaync-client -t -sw"))
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd(scriptsDir .. "PigSend.sh"))
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exec_cmd(scriptsDir .. "KillActiveProcess.sh"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(scriptsDir .. "ScreenShot.sh --swappy"))
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd(scriptsDir .. "ClipManager.sh"))

hl.bind(mainMod .. " + CTRL + up", hl.dsp.window.move({direction = "up"}))
hl.bind(mainMod .. " + CTRL + down", hl.dsp.window.move({direction = "down"}))
hl.bind(mainMod .. " + CTRL + left", hl.dsp.window.move({direction = "left"}))
hl.bind(mainMod .. " + CTRL + right", hl.dsp.window.move({direction = "right"}))

hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd(scriptsDir .. "ScreenShot.sh --now"))

hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(scriptsDir .. "KeyboardLayout.sh switch"))

hl.bind("CTRL + ALT + DELETE", hl.dsp.exit()) -- use hyprshutdown when in pacman

hl.bind("xf86AudioRaiseVolume", hl.dsp.exec_cmd(scriptsDir .. "Volume.sh --inc"))
hl.bind("xf86AudioLowerVolume", hl.dsp.exec_cmd(scriptsDir .. "Volume.sh --dec"))
hl.bind("xf86AudioMute", hl.dsp.exec_cmd(scriptsDir .. "Volume.sh --toggle"))
hl.bind("xf86Rfkill", hl.dsp.exec_cmd(scriptsDir .. "AirplaneMode.sh"))

hl.bind("xf86AudioPlay", hl.dsp.exec_cmd(scriptsDir .. "MediaCtrl.sh --pause"))
hl.bind("xf86AudioNext", hl.dsp.exec_cmd(scriptsDir .. "MediaCtrl.sh --nxt"))
hl.bind("xf86AudioPrev", hl.dsp.exec_cmd(scriptsDir .. "MediaCtrl.sh --prv"))

hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))

hl.bind(mainMod .. " + code:10", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + code:11", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + code:12", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + code:13", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + code:14", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + code:15", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + code:16", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + code:17", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + code:18", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + code:19", hl.dsp.focus({ workspace = 10 }))


hl.bind(mainMod .. " + SHIFT + code:10", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + code:11", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + code:12", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + code:13", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + code:14", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + code:15", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + code:16", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + code:17", hl.dsp.window.move({ workspace = 8 }))

hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
