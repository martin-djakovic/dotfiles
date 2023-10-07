#!/bin/bash

aptupgrades=$(apt-get -s upgrade | grep upgraded, | cut -c-1)

if [ "$aptupgrades" = "0" ]; then
    echo ""
else
    echo "%{F#5d75a1} $aptupgrades%{F-}"
fi
