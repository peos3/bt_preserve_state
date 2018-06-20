#!/bin/sh
# Get first line after column header
bt_state=$(rfkill list bluetooth -o SOFT | head -2 | tail -1)

if [ "$bt_state" = "unblocked" ]; then
    echo "1" > bt_state
else
    echo "0" > bt_state
fi