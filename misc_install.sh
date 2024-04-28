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

