#!/bin/bash

chosen=$(cliphist list | rofi -dmenu -theme ~/.config/rofi/cliphist/style.rasi)
[ -n "$chosen" ] && cliphist decode <<< "$chosen" | wl-copy
