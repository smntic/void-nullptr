#!/bin/bash

echo "$HOME"

# Set up home folder
mkdir "$HOME"/apps
mkdir "$HOME"/audio
mkdir "$HOME"/bin
mkdir "$HOME"/desktop
mkdir "$HOME"/dev
mkdir "$HOME"/documents
mkdir "$HOME"/downloads
mkdir "$HOME"/git
mkdir "$HOME"/pictures
mkdir "$HOME"/public
mkdir "$HOME"/templates
mkdir "$HOME"/videos
mkdir "$HOME"/.config
mkdir -p "$HOME"/.local/share/applications
mkdir -p "$HOME"/.icons

# XDG HOME dirs config
cp config/user-dirs.dirs "$HOME"/.config

# Huemaster config directories
mkdir "$HOME"/.config/alacritty
mkdir "$HOME"/.config/i3
mkdir "$HOME"/.config/i3status
mkdir "$HOME"/.config/dunst
mkdir "$HOME"/.config/gtk-3.0
mkdir -p "$HOME"/.config/nvim/lua/theme
mkdir "$HOME"/.config/qt5ct
mkdir -p "$HOME"/.local/share/fcitx5/themes/default-dark
mkdir "$HOME"/.config/flameshot

