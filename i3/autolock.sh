#!/bin/bash

playerctlstatus=$(playerctl status 2> /dev/null)
playerctlstatusrandom=$(playerctl -p somethingsomething status 2> /dev/null)

if [ "$playerctlstatus" = "$playerctlstatusrandom" ]; then
	xset dpms force suspend && dunstctl set-paused true && i3lock -i ~/.local/share/wallpapers/i3-lockscreen.png -u -n; dunstctl set-paused false
fi
