#!/bin/bash

REPO_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && cd ../../ && pwd )"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $SCRIPT_DIR

mkdir -p build
mkdir -p build-wasm

if [[ $1 == "-f" ]]; then
    rm -rf ./build/CMakeFiles ./build/CMakeCache.txt
    rm -rf ./build-wasm/CMakeFiles ./build-wasm/CMakeCache.txt
fi

cmake -B ./build -S . -DCMAKE_BUILD_TYPE=MinSizeRel
cmake -B ./build-wasm -S . -DCMAKE_BUILD_TYPE=MinSizeRel -DWASI_SDK_PREFIX=$REPO_DIR/wasi-sdk-20.0 -DCMAKE_TOOLCHAIN_FILE=$REPO_DIR/wasi-sdk-20.0/share/cmake/wasi-sdk.cmake

cmake --build ./build
cmake --build ./build-wasm

cd - > /dev/null
