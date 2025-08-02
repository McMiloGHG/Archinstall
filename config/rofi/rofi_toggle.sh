#!/bin/bash

if pgrep -x rofi > /dev/null; then
    # rofi is already running, so kill (close) it
    pkill rofi
else
    # rofi is not running, so open it (example using drun mode)
    rofi -show drun
fi

