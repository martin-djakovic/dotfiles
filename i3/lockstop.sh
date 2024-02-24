#!/bin/bash
 autolock=$(pgrep -a xautolock$ | head -n 1 | awk '{print $NF }' | cut -d '.' -f 1)

 if [ "$autolock" != "" ]; then
     killall xautolock
     pkill -SIGRTMIN+10 i3blocks
 else
     xautolock -time 5 -locker ~/.config/i3/autolock.sh &
     pkill -SIGRTMIN+10 i3blocks
 fi
