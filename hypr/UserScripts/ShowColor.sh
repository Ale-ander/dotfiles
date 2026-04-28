#!/bin/bash
# Percorso al tuo file generato da wallust
FILE="$HOME/.config/waybar/wallust/colors-waybar.css" 

if [[ -f "$FILE" ]]; then
    grep "@define-color" "$FILE" | while read -r line; do
        # Estrae il nome del colore e il codice hex
        name=$(echo $line | awk '{print $2}')
        hex=$(echo $line | grep -oP '#[0-9a-fA-F]{6}')
        
        # Converte Hex in RGB per il terminale
        r=$(printf '0x%s' "${hex:1:2}")
        g=$(printf '0x%s' "${hex:3:2}")
        b=$(printf '0x%s' "${hex:5:2}")
        
        # Stampa il blocco colorato
        printf "\e[48;2;%d;%d;%dm  \e[0m %-15s %s\n" "$((r))" "$((g))" "$((b))" "$name" "$hex"
    done
else
    echo "File non trovato!"
fi
