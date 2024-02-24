#!/bin/bash
autolock=$(pgrep -a xautolock$ | head -n 1 | awk '{print $NF }' | cut -d '.' -f 1)

if [ "$autolock" != "" ]; then
    echo ""
    echo ""
    echo \#2f2f2f
else
    echo ""
    echo ""
    echo \#869dc6
fi
