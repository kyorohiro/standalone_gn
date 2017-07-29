#!/bin/bash

set -e
set -v
# Build
cp gn-standalone.tools.gn.bootstrap.py gn-standalone/tools/gn/bootstrap/bootstrap.py 

cd gn-standalone/tools/gn
./bootstrap/bootstrap.py -s

# At this point, the resulting binary is at:
# gn-standalone/out/Release/gn
