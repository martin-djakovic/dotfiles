#!/bin/bash
if [ $(grep -r "RUNNING" /proc/asound | wc -l) -eq 0 ]; then
	xset dpms force suspend && dunstctl set-paused true && i3lock -i ~/.local/share/wallpapers/i3-lockscreen.png -u -n; dunstctl set-paused false
fi
