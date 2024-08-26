#!/bin/bash

# ===== cp-tool =====
pushd "$HOME"/git
git clone https://github.com/smnast/cp-tool
ln -s "$HOME"/git/cp-tool/cpt "$HOME"/bin/
ln -s "$HOME"/git/cp-tool/cp-tool.py "$HOME"/bin/
popd

# ===== cp-tool =====
pushd "$HOME"/git
git clone https://github.com/cspeterson/splatmoji
ln -s "$HOME"/git/splatmoji/splatmoji "$HOME"/bin/
popd

# ===== Obsidian =====
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.6.7/Obsidian-1.6.7.AppImage
"$HOME"/bin/appim -i Obsidian-1.6.7.AppImage -b obsidian
rm Obsidian-1.6.7.AppImage

# ===== Miniconda =====
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b -p "$HOME"/bin/miniconda
rm Miniconda3-latest-Linux-x86_64.sh
~/bin/miniconda/bin/conda init

