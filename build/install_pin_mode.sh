#!/bin/bash

set -euxo pipefail

# install pin mode
git init && git submodule update --init --recursive
cd pin_mode/libdft64
PREFIX=/ ./install_pin.sh
export PIN_ROOT=/pin-3.20-98437-gf02b61307-gcc-linux
make
cp env.init /opt/
cd ..
make OBJDIR=../bin/lib/