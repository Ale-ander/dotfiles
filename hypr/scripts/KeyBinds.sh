#!/usr/bin/bash

# kill yad to not interfere with this binds
pkill yad || true

# check if rofi is already running
if pidof rofi > /dev/null; then
  pkill rofi
fi

# define the config files
rofi_theme="$HOME/.config/rofi/config-keybinds.rasi"

hyprctl binds -j |
  jq -r 'def getbit($position; $n):
    fmod($n/($position|exp2)|floor;2) | fabs;

def mod($position; $name):
    if getbit($position; .modmask) == 1 then $name + " + " else "" end;

.[] | select(.submap == "") | .description + "|" + mod(6; "") + mod(2; "Ctrl") + mod(3; "Alt") + mod(0; "Shift") + .key
' | column -t -s "|" |
  rofi -dmenu -i -config "$rofi_theme"
