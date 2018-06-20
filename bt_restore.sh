#!/bin/sh
state=`cat bt_state`

if [ "$state" = "1" ]; then
    rfkill unblock bluetooth
elif [ "$state" = "0" ]; then
    rfkill block bluetooth
fi