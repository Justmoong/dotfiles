#!/bin/zsh

ln -sf ~/.dotfiles/.config ~/.config

ln -sf ~/.dotfiles/macOS/shell/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/macOS/shell/.zshenv ~/.zshenv
ln -sf ~/.dotfiles/macOS/shell/.zprofile ~/.zprofile
ln -sf ~/.dotfiles/macOS/shell/.zlogin ~/.zlogin
ln -sf ~/.dotfiles/macOS/shell/.profile ~/.profile
ln -sf ~/.dotfiles/macOS/shell/.p10k.zsh ~/.p10k.zshrc
ln -sf ~/.dotfiles/macOS/shell/powerlevel10k ~/powerlevel10k

ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.gitignore ~/.gitignore
ln -sf ~/.dotfiles/.gitignore_global ~/.gitignore_global
