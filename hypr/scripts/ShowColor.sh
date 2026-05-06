#!/bin/bash

FILE="$HOME/.config/waybar/wallust/colors-waybar.css" 

if [[ -f "$FILE" ]]; then
    grep "@define-color" "$FILE" | while read -r line; do
        # Get colors name and hex codes
        name=$(echo $line | awk '{print $2}')
        hex=$(echo $line | grep -oP '#[0-9a-fA-F]{6}')
        
        #i Convert to RGB
        r=$(printf '0x%s' "${hex:1:2}")
        g=$(printf '0x%s' "${hex:3:2}")
        b=$(printf '0x%s' "${hex:5:2}")
        
        # Print colored block
        printf "\e[48;2;%d;%d;%dm  \e[0m %-15s %s\n" "$((r))" "$((g))" "$((b))" "$name" "$hex"
    done
else
    echo "File not found!"
fi
