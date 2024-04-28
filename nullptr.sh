#!/bin/bash

user_home=$HOME 

sudo bash << EOF

./repositories.sh "$@"
./packages.sh "$@"
./services.sh "$@"
./folders.sh "$user_home" "$@"

EOF
