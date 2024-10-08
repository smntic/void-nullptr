#!/bin/bash

# Virtualization
if [[ "$1" == "--vm" ]]; then
    xbps-install -y qemu-ga spice-vdagent
fi

# Docker
xbps-install -y docker docker-compose podman

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
xbps-install -y base-devel
xbps-install -y git python3-virtualenv ffmpeg flex ncurses-devel
xbps-install -y make cmake gcc Bear gdb ccache
xbps-install -y ninja
xbps-install -y scons pkgconf
xbps-install -y libopencv-devel speech-dispatcher ntfs-3g
xbps-install -y openjdk8 openjdk17
xbps-install -y SDL2-devel SDL2_image-devel SDL2_mixer-devel SDL2_ttf-devel SDL2_gfx-devel

# Other tools
xbps-install -y htop neofetch psmisc CPU-X hdparm
xbps-install -y yt-dlp git wget curl
xbps-install -y fzf pnpm xtools dolphin ark ripgrep unzip
xbps-install -y ImageMagick flameshot
xbps-install -y autorandr kdeconnect xdg-utils xdg-user-dirs
xbps-install -y cronie chrony
xbps-install -y cloc strace
xbps-install -y gparted

# Hacking
xbps-install -y netcat ghidra kicad

# Scrcpy
xbps-install -y scrcpy

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
xbps-install -y fonts-roboto-ttf

# Window managers and utilities
xbps-install -y i3 i3status i3lock-color picom dunst dmenu
xbps-install -y breeze breeze-gtk
xbps-install -y qt5ct qt6ct
xbps-install -y xss-lock xclip
xbps-install -y redshift brightnessctl

# Audio
xbps-install -y pipewire alsa-pipewire alsa-utils pamixer

# Bluetooth
xbps-intsall -y bluez
xbps-install -y libspa-bluetooth

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

# Java
xbps-install -y openjdk21
