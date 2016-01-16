#!/bin/bash
set -e
set -x

cd ..
cd build

echo --- default
. creset
cmake .. -DCMAKE_CXX_FLAGS="--std=c++11"
make

echo --- linux_amd64_gcc
. creset
cmake ../test 
make
make test

cd ..
cd build

echo BUILD FINISHED
