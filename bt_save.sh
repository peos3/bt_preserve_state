#!/bin/sh
bt_state=$(rfkill list | grep acpi_bluetooth_sw -A1 | grep "Soft blocked" | sed 's/^.*: //')

if [ "$bt_state" = "no" ]; then
    echo "1" > bt_state
else
    echo "0" > bt_state
fi