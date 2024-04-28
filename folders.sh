#!/bin/bash

user_home=$1

# Set up home folder
mkdir "$user_home"/apps
mkdir "$user_home"/audio
mkdir "$user_home"/bin
mkdir "$user_home"/desktop
mkdir "$user_home"/dev
mkdir "$user_home"/documents
mkdir "$user_home"/downloads
mkdir "$user_home"/git
mkdir "$user_home"/pictures
mkdir "$user_home"/public
mkdir "$user_home"/templates
mkdir "$user_home"/videos
mkdir "$user_home"/.config

# XDG user dirs config
cp config/user-dirs.dirs "$user_home"/.config

