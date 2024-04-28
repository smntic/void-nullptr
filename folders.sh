#!/bin/bash

# Set up home folder
mkdir $HOME/apps
mkdir $HOME/audio
mkdir $HOME/bin
mkdir $HOME/desktop
mkdir $HOME/dev
mkdir $HOME/documents
mkdir $HOME/downloads
mkdir $HOME/git
mkdir $HOME/pictures
mkdir $HOME/public
mkdir $HOME/templates
mkdir $HOME/videos

# XDG user dirs config
cp config/user-dirs.dirs $HOME/.config

