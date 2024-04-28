#!/bin/bash

sudo bash << EOF

./repositories.sh $@
./packages.sh $@
./services.sh $@
./folders.sh $@

EOF
