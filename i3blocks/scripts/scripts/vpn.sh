#!/bin/bash

vpn=$((pgrep -a openvpn$ | head -n 1 | awk '{print $NF }' | cut -d '.' -f 1 && echo down) | head -n 1)

if [ "$vpn" = "down" ]; then
    echo ""
    echo ""
    echo \#2f2f2f
else
    echo ""
    echo ""
    echo \#869dc6
fi
