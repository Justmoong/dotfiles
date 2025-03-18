#!/bin/bash

DEVICE_MAC="cb-aa-9e-33-86-fd"

if ! blueutil --is-connected "$DEVICE_MAC"; then
    echo "$(date), $(time): No Bluetooth Device detected." >> ~/User/.dotfiles.Scripts/Logs/NumberpadAutoSync.log
    blueutil --connect "$DEVICE_MAC"
else
    echo "$(date), $(time): Num Pad Is Already Connected" >> ~/User/.dotfiles.Scripts/Logs/NumberpadAutoSync.log
