#!/bin/bash

vpn=$((pgrep -a openvpn$ | head -n 1 | awk '{print $NF }' | cut -d '.' -f 1 && echo down) | head -n 1)

if [ "$vpn" = "down" ]; then
    echo "%{A1:pkexec /usr/sbin/openvpn --config /etc/openvpn/CG_Serbia.conf:}%{F#2f2f2f}%{F-}%{A}"
else
    echo "%{A1:pkexec killall -SIGINT openvpn:}%{F#5d75a1}%{F-}%{A}"
fi
