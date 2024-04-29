#!/bin/bash

# ===== cp-tool =====

# Clone repo
git clone https://github.com/smnast/cp-tool

# Link (please never do this)
ln -s cp-tool/cpt "$HOME"/bin/
ln -s cp-tool/cp-tool.py "$HOME"/bin/

# Clean up
rm -rf cp-tool

