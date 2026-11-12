#!/bin/bash

echo "User: $(whoami) UID: $(id -u) GID: $(id -g)"

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" # linux, double confirmed

cd userspace
./run_lme2510_libusb.sh probe
./run_lme2510_libusb.sh run --sync-ts -r 602000000 -o /tmp/602.ts -s 10
