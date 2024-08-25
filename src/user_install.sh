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
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.12/Obsidian-1.5.12.AppImage
"$HOME"/bin/appim -i Obsidian-1.5.12.AppImage -b obsidian
rm Obsidian-1.5.12.AppImage

# ===== Miniconda =====
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b -p "$HOME"/bin/miniconda
rm Miniconda3-latest-Linux-x86_64.sh
ln -sf /usr/lib/libstdc++.so.6 ${CONDA_PREFIX}/lib/libstdc++.so.6
