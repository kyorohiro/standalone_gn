#!/bin/bash

set -e
set -v

# Get the sources
mkdir gn-standalone
cd gn-standalone
mkdir tools
cd tools
git clone https://chromium.googlesource.com/chromium/src/tools/gn
cd ..
mkdir -p third_party/libevent
cd third_party/libevent
wget --no-check-certificate https://chromium.googlesource.com/chromium/chromium/+archive/master/third_party/libevent.tar.gz
tar -xvzf libevent.tar.gz
cd ../..
mkdir third_party/apple_apsl
cd third_party/apple_apsl
wget --no-check-certificate https://chromium.googlesource.com/chromium/chromium/+archive/master/third_party/apple_apsl.tar.gz
tar -xvzf apple_apsl.tar.gz
cd ../..
git clone https://chromium.googlesource.com/chromium/src/base
git clone https://chromium.googlesource.com/chromium/src/build
git clone https://chromium.googlesource.com/chromium/src/build/config
mkdir testing
cd testing
git clone https://chromium.googlesource.com/chromium/testing/gtest
cd ..

# Build
#cd tools/gn
#./bootstrap/bootstrap.py -s

# At this point, the resulting binary is at:
# gn-standalone/out/Release/gn
