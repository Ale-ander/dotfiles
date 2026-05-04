#!/usr/bin/env bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##

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
" SHIFT K" "Searchable Keybinds" "Search all Keybinds via rofi" \
" SHIFT E" "Hyprland Settings Menu" "Shortcut to all configurations" \
"" "" "" \
" Enter" "Terminal" "kitty" \
" SHIFT Enter" "DropDown Terminal" " Q to close" \
" B" "Launch Browser" "firefox" \
" D" "Application Launcher" "rofi" \
" E" "Open File Manager" "pcmanfm-qt" \
" S" "Google Search using rofi" "rofi" \
" Q" "Close active window" "not kill" \
" SHIFT Q " "Kills an active window" "kill" \
" ALT mouse scroll up/down" "Desktop Zoom" "desktop dagnifier" \
" SHIFT V" "Clipboard Manager" "cliphist" \
" V" "Toggle float" "doggle float for active window" \
" W" "Choose wallpaper" "dallpaper denu" \
" CTRL ALT B" "Hide/UnHide Waybar" "waybar" \
" CTRL B" "Choose waybar styles" "waybar styles" \
" ALT B" "Choose waybar layout" "waybar layout" \
" ALT R" "Reload Waybar swaync Rofi" "reload waybar + reload rofi" \
" SHIFT N" "Launch Notification Panel" "swaync notification center" \
" Print" "Save screenshot in ~/Pictures/Screenshots" "grim" \
" SHIFT S" "screenshot region" "swappy" \
" P" "Power menu" "wlogout" \
" L" "Screen lock" "refresh weather + hyprlock" \
" SHIFT P" "Open PigCat prompt" "🐖" \
"CTRL ALT Del" "Hyprland Exit" "exit immediately" \
" SHIFT F" "Fullscreen" "eoggles to full screen" \
" CTL F" "Almost Fullscreen" "eoggles to full screen with gaps and waybar" \
" SPACEBAR" "Switch keyboard layout" "switch keyboard layout it  us" \
" SHIFT A" "Animations Menu" "choose Animations via rofi" \
" CTRL R" "Rofi Themes Menu" "choose Rofi Themes via rofi" \
" ALT E" "Rofi Emoticons" "emoticon tab" \
" H" "Launch this Quick Cheat Sheet" "" \
"" "" "" \
"ESC" "close this app" "" \
