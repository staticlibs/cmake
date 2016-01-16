#!/bin/bash
set -e
set -x


echo --- default
. creset
cmake ..
make

echo --- linux_amd64_gcc
. creset
cmake ../test 
make
make test

echo --- linux_amd64_gcc_RELEASE 
. creset
cmake ../test -DCMAKE_BUILD_TYPE=Release
make
make test

echo --- android_armeabi_gcc
. creset
cmake ../test \
    -DSTATICLIB_TOOLCHAIN=android_armeabi_gcc \
    -DANDROID_TOOLCHAIN_DIR=/home/alex/apps/android-ndk-r9d-arm-linux-androideabi-4.8/
make

echo --- linux_armv6rpi_gcc
. creset
cmake ../test \
    -DSTATICLIB_TOOLCHAIN=linux_armv6rpi_gcc \
    -DRASPBERRY_TOOLCHAIN_DIR=/home/alex/apps/armv6-rpi-linux-gnueabihf/
make

echo BUILD FINISHED
