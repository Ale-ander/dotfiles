#!/usr/bin/env bash

pigchat -m $(yad --entry \
    --button="Gay:1" \
    --button="Oink:0" \
    --entry-label="🐷" \
    --css=<(cat ~/.config/yad/style.css) \
    --text="<span size='large'>P.I.G. chat prompt</span>" \
    --width=400)
