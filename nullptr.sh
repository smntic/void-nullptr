#!/bin/bash

sudo bash << EOF

./repositories.sh "$@"
./packages.sh "$@"
./services.sh "$@"
sudo -u "$SUDO_USER" ./folders.sh "$@"

EOF
