#!/bin/bash

# address: cb-aa-9e-33-86-fd, connected (master, 0 dBm), not favourite, paired, name: "DRGO-NP01", recent access date: 2025-03-18 15:59:13 +0000

DEVICE_MAC="cb-aa-9e-33-86-fd"

if ! blueutil --is-connected "$DEVICE_MAC"; then
    echo "$(date), $(time): No Bluetooth Device detected." >> ~/User/.dotfiles/Scripts/Logs/NumberpadAutoSync.log
    blueutil --connect "$DEVICE_MAC"
    osascript -e 'tell application "System Events" to key code 71'
else
    echo "$(date), $(time): Num Pad Is Already Connected" >> ~/User/.dotfiles/Scripts/Logs/NumberpadAutoSync.log
