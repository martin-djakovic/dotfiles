#!/bin/bash
setxkbmap us; xset dpms force suspend && dunstctl set-paused true && i3lock -i ~/.local/share/wallpapers/i3-lockscreen.png -u -n; dunstctl set-paused false && setxkbmap -layout 'us,rs,rs' -variant ',latinyz,'
