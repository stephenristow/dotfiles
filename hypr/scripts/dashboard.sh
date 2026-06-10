#!/bin/bash

hyprctl dispatch workspace 9

# Large left pane
alacritty --title "System Monitor" -e btop &
sleep 1

hyprctl dispatch workspace 8
# Split right side
hyprctl dispatch movewindow r

alacritty --title "FastFetch" -e bash -lc "fastfetch" &
sleep 0.5

alacritty --title "Ricepaper" -e bash -lc \
  'chafa --size=40x20 "$HOME/Pictures/Wallpapers/fantasy-concept-showing-longji-rice-terrace-china-stunningly-beautiful-terraced-rice-fields_743201-1428-3062637707.jpg"; read -n 1' &
