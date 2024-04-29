#!/bin/bash

sudo bash << EOF

./repositories.sh "$@"
./packages.sh "$@"
./misc_install.sh "$@"
./services.sh "$@"
./fonts.sh "$@"
./xorg_conf.sh "$@"

EOF

./folders.sh "$@"
./user_conf.sh "$@"
./user_bin.sh "$@"
./desktop.sh "$@"
./huemaster.sh "$@"
./cursors.sh "$@"

