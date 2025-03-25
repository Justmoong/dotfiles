#!/bin/zsh

user=$(whoami)

sudo -v
zsh --version

chmod +x ~/.dotfiles/Scripts/*.sh
chmod +x ~/.dotfiles/macOS/macos

xcode-select --install
~/.dotfiles/Scripts/InstallHomebrew.sh
echo "Homebrew installed"

~/.dotfiles/Scripts/sudo.sh
echo "Set NOPASSWD sudo"

~/.dotfiles/Scripts/symlink.sh
echo "Symlink dir $user dir"

mkdir ~/Library/LaunchAgents
~/.dotfiles/Scripts/launchctl.sh
echo "Apply launchd"

~/macOS/macos
echo "Apply macOS Preference "

echo "Start Install All Required Packages"
brew bundle
echo "All Package Installed"

brew doctor
brew --version
ls -l ~/.dotfiles

sudo reboot