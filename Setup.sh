##############################################################################
# Run Script Automatically
##############################################################################

sudo -v

chmod +x /Users/ymy/.dotfiles/Scripts/sudo.sh
chmod +x /Users/ymy/.dotfiles/Scripts/symlink.sh
chmod +x /Users/ymy/.dotfiles/Scripts/InstallHomebrew.sh
chmod +x /Users/ymy/.dotfiles/Scripts/launchctl.sh

/Users/ymy/.dotfiles/Scripts/sudo.sh
/Users/ymy/.dotfiles/Scripts/symlink.sh
/Users/ymy/.dotfiles/Scripts/InstallHomebrew.sh
/Users/ymy/.dotfiles/Scripts/launchctl.sh

wait 10

#/Users/ymy/.dotfiles/.macos
# brew bundle