#!/bin/bash
set -e
set -x

echo --- default
. creset
cmake ..
make

echo --- macosx_amd64_clang
. creset
cmake ../test -DSTATICLIB_TOOLCHAIN=macosx_amd64_clang
make
make test

echo --- macosx_amd64_clang_RELEASE
. creset
cmake ../test \
    -DSTATICLIB_TOOLCHAIN=macosx_amd64_clang \
    -DCMAKE_BUILD_TYPE=Release
make
make test

echo --- ios_i386_clang
. creset
cmake ../test -DSTATICLIB_TOOLCHAIN=ios_i386_clang
make

echo BUILD FINISHED
