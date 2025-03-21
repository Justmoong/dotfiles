#!/bin/zsh

LOG_PATH=~/.dotfiles/Scripts/Logs/AutoShutdownLog_$(date +"%Y%m%d_%H%M%S").txt

mkdir -p ~/.dotfiles/Scripts/Logs
touch $LOG_PATH

echo "=== Auto Shutdown Log ===" >> $LOG_PATH
echo "Shutdown initiated at $(date)" >> $LOG_PATH

osascript -e "
tell application \"System Events\"
    set appList to (name of every process whose background only is false)
    repeat with appName in appList
        try
            do shell script \"echo Quitting \" & quoted form of appName & \" >> $LOG_PATH\"
            tell application appName to quit
            delay 2
            if (exists process appName) then
                do shell script \"echo Forcibly killing \" & quoted form of appName & \" >> $LOG_PATH\"
                do shell script \"killall \" & quoted form of appName
            else
                do shell script \"echo Successfully quit \" & quoted form of appName & \" >> $LOG_PATH\"
            end if
        on error errMsg
            do shell script \"echo Error quitting \" & quoted form of appName & \": \" & quoted form of errMsg & \" >> $LOG_PATH\"
        end try
    end repeat
end tell
"

echo "Syncing and purging memory caches..." >> $LOG_PATH
sync
sudo purge

echo "Terminating user session for $(whoami)" >> $LOG_PATH
sudo pkill -KILL -u $(whoami)

echo "System log snapshot:" >> $LOG_PATH
log show --info >> $LOG_PATH

echo "System shutdown at $(date)" >> $LOG_PATH
sudo shutdown -h now