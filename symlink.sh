#!/bin/zsh
# pass sudo password
sudo -v

ln -s ~/.dotfiles/.config ~/.config

ln -s ~/.dotfiles/shell/.zshrc ~/.zshrc
ln -s ~/.dotfiles/shell/.zshenv ~/.zshenv
ln -s ~/.dotfiles/shell/.zprofile ~/.zprofile
ln -s ~/.dotfiles/shell/.zlogin ~/.zlogin
ln -s ~/.dotfiles/shell/.profile ~/.profile
ln -s ~/.dotfiles/shell/.p10k.zsh ~/.p10k.zshrc
ln -s ~/.dotfiles/shell/powerlevel10k ~/powerlevel10k

ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.gitignore ~/.gitignore
ln -s ~/.dotfiles/.gitignore_global ~/.gitignore_global
