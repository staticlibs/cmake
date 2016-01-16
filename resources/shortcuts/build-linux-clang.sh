#!/bin/bash
set -e
set -x

echo --- linux_amd64_clang
. creset
cmake ../test -DSTATICLIB_TOOLCHAIN=linux_amd64_clang
make
make test

echo BUILD FINISHED
