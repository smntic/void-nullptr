#!/bin/bash

sudo bash << EOF

./repositories.sh "$@"
./packages.sh "$@"
./services.sh "$@"

EOF

./folders.sh "$@"

