#!/bin/bash

# address: cb-aa-9e-33-86-fd, connected (master, 0 dBm), not favourite, paired, name: "DRGO-NP01", recent access date: 2025-03-18 15:59:13 +0000

DEVICE_MAC="cb-aa-9e-33-86-fd"
LOG_FILE=/Users/ymy/.dotfiles/Scripts/Logs/NumberpadAutoSync.log

# 블루투스 전원이 꺼져 있다면 켜기
if [ "$(blueutil --power)" != "1" ]; then
    blueutil --power 1
    sleep 2
fi

# 블루투스 기기가 연결되지 않았는지 확인
if [ "$(blueutil --is-connected "$DEVICE_MAC")" != "1" ]; then
    echo "$(date '+%Y-%m-%d %H:%M:%S'): No Bluetooth Device detected." >> "$LOG_FILE"
    
    # 강제 페어링 후 연결 시도
    blueutil --pair "$DEVICE_MAC"
    sleep 2
    blueutil --connect "$DEVICE_MAC"
    
    # 연결이 성공했는지 다시 확인
    if [ "$(blueutil --is-connected "$DEVICE_MAC")" != "1" ]; then
        echo "$(date '+%Y-%m-%d %H:%M:%S'): Bluetooth connection failed." >> "$LOG_FILE"
        exit 1
    fi

    sleep 2
    osascript -e 'tell application "System Events" to key code 71'
else
    echo "$(date '+%Y-%m-%d %H:%M:%S'): Num Pad Is Already Connected" >> "$LOG_FILE"
fi