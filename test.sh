#!/bin/bash
rm -rf build
git pull 
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release
./build/test/dd_package_test
./build/test/dd_package_example
