#!/bin/bash

# Virtualization
if [[ "$1" == "--vm" ]]; then
    xbps-install -y qemu-ga spice-vdagent
fi

# Xorg and display manager
xbps-install -y xorg
xbps-install -y dbus elogind

# Terminals
xbps-install -y alacritty

# Web browsers
xbps-install -y firefox chromium

# File managers and utilities
xbps-install -y ranger atool

# Development tools
xbps-install -y git python3-virtualenv ffmpeg flex
xbps-install -y make cmake gcc Bear gdb
xbps-install -y scons pkgconf
xbps-install -y libopencv-devel speech-dispatcher ntfs-3g
xbps-install -y openjdk8 openjdk17

# Other tools
xbps-install -y htop neofetch psmisc CPU-X hdparm
xbps-install -y yt-dlp git wget curl
xbps-install -y fzf pnpm xtools ark ripgrep unzip
xbps-install -y ImageMagick flameshot
xbps-install -y autorandr kdeconnect xdg-utils xdg-user-dirs
xbps-install -y cronie
xbps-install -y cloc

# Packages for splatmoji
xbps-install -y rofi xdotool xsel

# Text editors and IDEs
xbps-install -y kate5 neovim vscode

# Graphics and media
xbps-install -y krita gwenview feh blender godot obs vlc

# Office and productivity
xbps-install -y libreoffice

# Fonts
xbps-install -y noto-fonts-emoji noto-fonts-cjk nerd-fonts-symbols-ttf

# Window managers and utilities
xbps-install -y i3 i3status i3lock-color picom dunst dmenu
xbps-install -y breeze breeze-gtk
xbps-install -y qt5ct
xbps-install -y xss-lock xclip
xbps-install -y redshift

# Audio
xbps-install -y pulseaudio alsa-plugins-pulseaudio pamixer

# Shell
xbps-install -y zsh

# Virtualization
xbps-install -y qemu libvirt virt-manager bridge-utils iptables

# Logging
xbps-install -y socklog-void

# Input method
xbps-install -y fcitx5 fcitx5-mozc fcitx5-qt fcitx5-gtk fcitx5-gtk+2 fcitx5-gtk+3 fcitx5-anthy fcitx5-configtool

# Package management
xbps-install -y flatpak

# Wine
xbps-install -y wine winetricks wine-32bit

# Network
xbps-install -y NetworkManager network-manager-applet

