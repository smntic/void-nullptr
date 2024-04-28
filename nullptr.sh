#!/bin/bash

sudo bash << EOF

./repositories.sh "$@"
./packages.sh "$@"
./misc_install.sh "$@"
./services.sh "$@"
./xorg_conf.sh "$@"

EOF

./folders.sh "$@"
./huemaster.sh "$@"

