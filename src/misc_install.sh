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

# ===== Android SDK =====

# Update Java symlinks
sudo xbps-alternatives -g jdk -s openjdk17

# SDK root
export ANDROID_SDK_ROOT=/usr/lib/android-sdk
mkdir -p $ANDROID_SDK_ROOT
pushd $ANDROID_SDK_ROOT

# Download
wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip
unzip commandlinetools-linux-11076708_latest.zip

# Move folders
mv cmdline-tools tools
mkdir cmdline-tools
mv tools cmdline-tools/tools
cd cmdline-tools/tools/bin

# Accept licenses (don't tell them!)
yes | ./sdkmanager --licenses
popd

