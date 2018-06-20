#!/bin/sh
bt_state=$(rfkill list | grep Bluetooth -m 1 -A1 | grep "Soft blocked" | sed 's/^.*: //')

if [ "$bt_state" = "no" ]; then
    echo "1" > bt_state
else
    echo "0" > bt_state
fi