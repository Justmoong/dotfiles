#!/bin/zsh

user=$(whoami)

sudo -v

chmod +x ~/.dotfiles/Scripts/*.sh

~/.dotfiles/Scripts/InstallHomebrew.sh
echo "Homebrew installed"

~/.dotfiles/Scripts/sudo.sh
echo "Set NOPASSWD sudo"

~/.dotfiles/Scripts/symlink.sh
echo "Symlink dir $user dir"

~/.dotfiles/Scripts/launchctl.sh
echo "Apply launchd"

~/.macos
echo "Apply macOS Preference "

echo "Start Install All Required Packages"
brew bundle
echo "All Package Installed"