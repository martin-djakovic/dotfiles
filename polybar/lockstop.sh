#!/bin/bash
autolock=$(pgrep -a xautolock$ | head -n 1 | awk '{print $NF }' | cut -d '.' -f 1)

if [ "$autolock" != "" ]; then
    echo "%{A1:killall xautolock:}%{F#2f2f2f}%{F-}%{A}"
else
    echo "%{A1:xautolock -time 5 -locker /home/martin/.config/i3/autolock.sh:}%{F#5d75a1}%{F-}%{A}"
fi
