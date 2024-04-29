#!/bin/bash

sudo bash << EOF

./repositories.sh "$@"
./packages.sh "$@"
./misc_install.sh "$@"
./services.sh "$@"
./fonts.sh "$@"
./xorg_conf.sh "$@"
./precomp_headers.sh "$@"

EOF

./folders.sh "$@"
./user_bin.sh "$@"
./user_conf.sh "$@"
./user_install.sh "$@"
./desktop.sh "$@"
./huemaster.sh "$@"
./cursors.sh "$@"

