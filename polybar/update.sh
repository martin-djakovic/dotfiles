#!/bin/bash

aptupgrades=$(apt-get -s upgrade | tail -1 | cut -c-1)

if [ "$aptupgrades" = "0" ]; then
    echo ""
else
    echo "%{F#ECA021}%{F-}"
fi
