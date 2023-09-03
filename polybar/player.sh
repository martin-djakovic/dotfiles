#!/bin/bash
# check if rhythmbox is running, if it is return a "play/pause" icon

playerctlstatus=$(playerctl -p rhythmbox status 2> /dev/null)
playerctlstatusrandom=$(playerctl -p somethingsomething status 2> /dev/null)

if [ "$playerctlstatus" = "Playing" ]; then
    echo "%{A1:playerctl previous:} %{A}" "%{A1:playerctl pause:}%{A}" "%{A1:playerctl next:} %{A}"
elif [ "$playerctlstatus" = "Paused" ]; then
    echo "%{A1:playerctl previous:} %{A}" "%{A1:playerctl play:}%{A}" "%{A1:playerctl next:} %{A}"
else
    echo ""
fi
