local scriptsDir = ".config/hypr/scripts/"
local mainMod = "SUPER"

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd("$term"), {description = "Terminal"})
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("firefox"), {description = "Browser"})
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("pkill rofi || true && rofi -show drun -modi drun,window"), {description = "App menu"})
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("$files"), {description = "File explorer"})
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({mode = "fullscreen", action = "toggle"}), {description = "Window to fullscreen"})
hl.bind(mainMod .. " + H", hl.dsp.exec_cmd(scriptsDir .. "KeyHints.sh"), {description = "Keybinds cheatsheet"})
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd(scriptsDir .. "KeyBinds.sh"), {description = "Keybinds menu"})
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"), {description = "Lock screen"})
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("flatpak run org.ferdium.Ferdium"), {description = "Ferdium"})
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd(scriptsDir .. "Wlogout.sh"), {description = "Shutdown menu"})
hl.bind(mainMod .. " + Q", hl.dsp.window.close(), {description = "Close window"})
hl.bind(mainMod .. " + V", hl.dsp.window.float({}), {description = "Float window"})
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(scriptsDir .. "WallpaperSelect.sh"), {description = "Choose wallpaper"})

hl.bind(mainMod .. " + ALT + left", hl.dsp.window.swap({ direction = "left" }), {description = "Swap window left"})
hl.bind(mainMod .. " + ALT + right", hl.dsp.window.swap({ direction = "right" }), {description = "Swap window right"})
hl.bind(mainMod .. " + ALT + up", hl.dsp.window.swap({ direction = "up" }), {description = "Swap window up"})
hl.bind(mainMod .. " + ALT + down", hl.dsp.window.swap({ direction = "down" }), {description = "Swap window down"})

function Zoom_in()
  local current = hl.get_config("cursor.zoom_factor")
  if current < 1 then
    current = 1
  end
  hl.config({ cursor = { zoom_factor = current * 1.25 } })
end

-- zooming functions
function Zoom_out()
  local current = hl.get_config("cursor.zoom_factor")
  if current < 1 then
    current = 1
  end
  local new_zoom = current / 1.25
  if new_zoom < 1 then
    new_zoom = 1.0
  end
  hl.config({ cursor = { zoom_factor = new_zoom } })
end

function Zoom_reset()
  hl.config({ cursor = { zoom_factor = 1.0 } })
end

hl.bind(mainMod .. " + mouse_down", function()
    Zoom_in()
end, {description = "Zoom in"})
hl.bind(mainMod .. " + mouse_up", function()
    Zoom_out()
end, {description = "Zoom out"})
hl.bind(mainMod .. " + mouse:274", function()
    Zoom_reset()
end, {description = "Zoom reset"})

-- Resizing submaps
hl.bind(mainMod .. " + ALT + R", hl.dsp.exec_cmd(scriptsDir .. "Refresh.sh"), {description = "Reload Waybar and Rofi"})

hl.bind("ALT + R", hl.dsp.submap("resize"), {description = "Resize submap"})
hl.define_submap("resize", function()
    hl.bind("right", hl.dsp.window.resize({ x = 10, y = 0, relative = true}), { repeating = true })
    hl.bind("left", hl.dsp.window.resize({ x = -10, y = 0, relative = true}), { repeating = true })
    hl.bind("up", hl.dsp.window.resize({ x = 0, y = 10, relative = true}), { repeating = true })
    hl.bind("down", hl.dsp.window.resize({ x = 10, y = -10, relative = true}), { repeating = true })

    hl.bind("escape", hl.dsp.submap("reset"))
end)

hl.bind(mainMod .. " + SHIFT + Return", hl.dsp.exec_cmd("kitty --app-id flying"), {description = "Floating terminal"})
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("hyprpicker | wl-copy"), {description = "Hyprpicker"})
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd(scriptsDir .. "RofiEmoji.sh"), {description = "Emoji menu"})
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({mode = "maximized", action = "toggle"}), {description = "Maximize window"})
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd("swaync-client -t -sw"), {description = "Notifications menu"})
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd(scriptsDir .. "PigSend.sh"), {description = "Pigsend prompt"})
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exec_cmd(scriptsDir .. "KillActiveProcess.sh"), {description = "Kill window"})
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(scriptsDir .. "ScreenShot.sh --swappy"), {description = "Screenshot area"})
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd(scriptsDir .. "ClipManager.sh"), {description = "Clipboard manager"})

hl.bind(mainMod .. " + CTRL + up", hl.dsp.window.move({direction = "up"}), {description = "Move window up"})
hl.bind(mainMod .. " + CTRL + down", hl.dsp.window.move({direction = "down"}), {description = "Move window down"})
hl.bind(mainMod .. " + CTRL + left", hl.dsp.window.move({direction = "left"}), {description = "Move window left"})
hl.bind(mainMod .. " + CTRL + right", hl.dsp.window.move({direction = "right"}), {description = "Move window right"})

hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd(scriptsDir .. "ScreenShot.sh --now"), {description = "Screenshot whole screen"})

hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(scriptsDir .. "KeyboardLayout.sh switch"), {description = "Switch keyboard layout"})

hl.bind("CTRL + ALT + DELETE", hl.dsp.exec_cmd("hyprshutdown --vt 2"), {description = "Shutdown Hyprland"})

hl.bind("xf86AudioRaiseVolume", hl.dsp.exec_cmd(scriptsDir .. "Volume.sh --inc"), {description = "Volume up"})
hl.bind("xf86AudioLowerVolume", hl.dsp.exec_cmd(scriptsDir .. "Volume.sh --dec"), {description = "Volue down"})
hl.bind("xf86AudioMute", hl.dsp.exec_cmd(scriptsDir .. "Volume.sh --toggle"), {description = "Mute"})
hl.bind("xf86Rfkill", hl.dsp.exec_cmd(scriptsDir .. "AirplaneMode.sh"), {description = "Airplane mode"})

hl.bind("xf86AudioPlay", hl.dsp.exec_cmd(scriptsDir .. "MediaCtrl.sh --pause"), {description = "Play"})
hl.bind("xf86AudioNext", hl.dsp.exec_cmd(scriptsDir .. "MediaCtrl.sh --nxt"), {description = "Next audio"})
hl.bind("xf86AudioPrev", hl.dsp.exec_cmd(scriptsDir .. "MediaCtrl.sh --prv"), {description = "Previous audio"})

hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }), {description = "Focus workspace up"})
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }), {description = "Focus workspace down"})
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }), {description = "Focus workspace left"})
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }), {description = "Focus workspace right"})

hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }), {description = "Focus to workspace 1"})
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }), {description = "Focus to workspace 2"})
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }), {description = "Focus to workspace 3"})
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }), {description = "Focus to workspace 4"})
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }), {description = "Focus to workspace 5"})
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }), {description = "Focus to workspace 6"})
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }), {description = "Focus to workspace 7"})
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }), {description = "Focus to workspace 8"})
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }), {description = "Focus to workspace 9"})
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }), {description = "Focus to workspace 10"})

hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }), {description = "Move window to workspace 1"})
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }), {description = "Move window to workspace 2"})
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }), {description = "Move window to workspace 3"})
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }), {description = "Move window to workspace 4"})
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }), {description = "Move window to workspace 5"})
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }), {description = "Move window to workspace 6"})
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }), {description = "Move window to workspace 7"})
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }), {description = "Move window to workspace 8"})
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 8 }), {description = "Move window to workspace 9"})
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 8 }), {description = "Move window to workspace 10"})

hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), {description = "Resize window"})
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), {description = "Drag window"})
