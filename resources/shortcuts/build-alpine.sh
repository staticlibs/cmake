#!/bin/bash
set -e
set -x

echo --- alpine_amd64_gcc
. creset
cmake ../test -DSTATICLIB_TOOLCHAIN=alpine_amd64_gcc
make
make test

echo --- alpine_amd64_gcc_RELEASE
. creset
cmake ../test \
    -DSTATICLIB_TOOLCHAIN=alpine_amd64_gcc \
    -DCMAKE_BUILD_TYPE=Release
make
make test

echo BUILD FINISHED
