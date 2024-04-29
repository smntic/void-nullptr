#!/bin/bash

# ===== Huemaster =====

# Clone repo
git clone --recurse-submodules https://github.com/smnast/HueMaster

# Build & install
cd HueMaster
cmake .
make
make install

# Clean up
cd ..
rm -rf HueMaster

# ===== Flatpak =====

# Add Flathub repository
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

