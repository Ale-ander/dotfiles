# GDK BACKEND. Change to either wayland or x11 if having issues
BACKEND=wayland

# Check if rofi or yad is running and kill them if they are
if pidof rofi > /dev/null; then
  pkill rofi
fi

if pidof yad > /dev/null; then
  pkill yad
fi

# Launch yad with calculated width and height
GDK_BACKEND=$BACKEND yad \
    --css=<(cat "$HOME/.config/yad/style.css") \
    --center \
    --title="KooL Quick Cheat Sheet" \
    --no-buttons \
    --list \
    --column=Key: \
    --column=Description: \
    --column=Command: \
    --timeout-indicator=bottom \
" = " "SUPER KEY (Windows Key Button)" "SUPER KEY" \
" K" "Searchable Keybinds" "search all Keybinds via rofi" \
"" "" "" \
" Enter" "Open terminal" "kitty" \
" B" "Launch Browser" "firefox" \
" D" "Application Launcher" "rofi" \
" E" "Open File Manager" "pcmanfm-qt" \
" H" "Launch this Quick Cheat Sheet" "" \
" L" "Screen lock" "refresh weather + hyprlock" \
" P" "Power menu" "wlogout" \
" Q" "Close active window" "not kill" \
" V" "Toggle float" "toggle float for active window" \
" W" "Choose wallpaper" "wallpaper menu" \
" ALT ARROW KEY" "Swap active window" "" \
" ALT MOUSE SCROLL" "Zoom in/out" "desktop magnifier" \
" ALT E" "Rofi Emoticons" "emoticon tab" \
" ALT R" "Reload Waybar swaync Rofi" "reload waybar + reload rofi" \
" SHIFT ARROW KEY" "Resize active window" "" \
" SHIFT F" "Fullscreen" "toggles to full screen" \
" SHIFT N" "Launch Notification Panel" "swaync notification center" \
" SHIFT P" "Open PigChat prompt" "🐖" \
" SHIFT Q " "Kills an active window" "kill" \
" SHIFT S" "screenshot region" "swappy" \
" SHIFT V" "Clipboard Manager" "cliphist" \
" CTRL ARROW KEY" "Move active window" "" \
" Print" "Save screenshot in ~/Pictures/Screenshots" "grim" \
" SPACEBAR" "Switch keyboard layout" "switch keyboard layout it  us" \
"CTRL ALT CANC" "Hyprland Exit" "exit immediately" \
"" "" "" \
"ESC" "close this app" "" \
