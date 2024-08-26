#!/bin/bash

source ~/.bashrc
pip install swig # must be installed before box2d is installed
pip install -r python/requirements.txt
conda install -c conda-forge -y mesalib llvm


