#!/bin/bash

sudo bash << EOF

./repositories.sh "$@"
./packages.sh "$@"
./services.sh "$@"
./xorg_conf.sh "$@"

EOF

./folders.sh "$@"

