#!/bin/bash

# ===== cp-tool =====

# Clone repo
git clone https://github.com/smnast/cp-tool

# Link (please never do this)
ln -s cp-tool/cpt "$HOME"/bin/
ln -s cp-tool/cp-tool.py "$HOME"/bin/

# Clean up
rm -rf cp-tool

# ===== Obsidian =====
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.12/Obsidian-1.5.12.AppImage
appim -i Obsidian-1.5.12.AppImage
rm Obsidian-1.5.12.AppImage

