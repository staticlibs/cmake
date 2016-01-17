#!/bin/sh
set -e
set -x

cd ..
cd build

echo --- alpine_amd64_gcc
. creset
cmake ../test \
    -DSTATICLIB_TOOLCHAIN=alpine_amd64_gcc \
    -DSTATICLIB_USE_DEPLIBS_CACHE=ON
make
make test

echo --- alpine_amd64_gcc_RELEASE
. creset
cmake ../test \
    -DSTATICLIB_TOOLCHAIN=alpine_amd64_gcc \
    -DCMAKE_BUILD_TYPE=Release \
    -DSTATICLIB_USE_DEPLIBS_CACHE=ON
make
make test

echo BUILD FINISHED
