#!/bin/bash

# Menu options with icons and text (newline-separated)
options=" \n⏻\n\n"

# Show the options using rofi, applying the powermenu theme, no prompt
chosen=$(echo -e "$options" | rofi -dmenu -config ~/.config/rofi/powermenu.rasi -p "")

# Process the selected option
case "$chosen" in
    "⏻") setsid systemctl poweroff ;;   # Power off the system
    "") setsid systemctl reboot ;;     # Reboot the system
    "") hyprctl dispatch exit ;;       # Exit Hyprland (window manager)
esac

