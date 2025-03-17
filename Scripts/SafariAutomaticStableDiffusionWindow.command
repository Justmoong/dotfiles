#!/bin/zsh

if pgrep -x "Safari" > /dev/null; then
    sudo -u $(logname) osascript -e 'tell application "Safari"
        activate
        make new document
        set URL of front document to "http://192.168.35.246:7860/"
    end tell'
    
    exit 0
fi

osascript -e 'tell application "iTerm2" to tell current tab to close'