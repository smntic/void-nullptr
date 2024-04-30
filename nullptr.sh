#!/bin/bash

sudo bash << EOF

xbps-install -Syu

./src/repositories.sh "$@"
./src/packages.sh "$@"
./src/misc_install.sh "$@"
./src/services.sh "$@"
./src/fonts.sh "$@"
./src/xorg_conf.sh "$@"
./src/precomp_headers.sh "$@"

EOF

./src/folders.sh "$@"
./src/user_bin.sh "$@"
./src/user_conf.sh "$@"
./src/user_install.sh "$@"
./src/desktop.sh "$@"
./src/cursors.sh "$@"

