#!/bin/bash

aptupgrades=$(apt-get -s upgrade | grep upgraded, | cut -c-2)


if [ "$aptupgrades" = "0 " ]; then
    echo ""
else
    echo "$aptupgrades" | xargs
    echo "$aptupgrades"
fi
