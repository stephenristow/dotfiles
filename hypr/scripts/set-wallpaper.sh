#!/bin/bash

WS=$(hyprctl activeworkspace -j | jq -r '.id')

case $(((WS - 1) % 4)) in
0)
  WALL="$HOME/Pictures/Wallpapers/6996b272cebdc883e4946aab3c30db32cc74cbf4_high-3441681212.webp"
  ;;
1)
  WALL="$HOME/Pictures/Wallpapers/rice_field_landscape_by_epicsteps_dg01r9g-pre-2199863378.jpg"
  ;;
2)
  WALL="$HOME/Pictures/Wallpapers/traditional-chinese-ink-landscape-painting-silk-mountains-rivers_167857-53189-2033578658.jpg"
  ;;
3)
  WALL="$HOME/Pictures/Wallpapers/wp6413890-2655930904.jpg"
  ;;
esac

awww img "$WALL"
