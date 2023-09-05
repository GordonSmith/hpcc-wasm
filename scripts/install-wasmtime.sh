#!/bin/bash

# List of current vertsion can be found in https://github.com/bytecodealliance/wasmtime/releases  ---
WASMTIME_C_VERSION=12.0.1

# List of current vertsion can be found in https://github.com/bytecodealliance/wasmtime-cpp/tags
WASMTIME_CPP_VERSION=9.0.0
if [ ! -d "./wasmtime" ] 
then
    wget https://github.com/bytecodealliance/wasmtime/releases/download/v${WASMTIME_C_VERSION}/wasmtime-v${WASMTIME_C_VERSION}-x86_64-linux-c-api.tar.xz
    tar xvf wasmtime-v${WASMTIME_C_VERSION}-x86_64-linux-c-api.tar.xz
    rm wasmtime-v${WASMTIME_C_VERSION}-x86_64-linux-c-api.tar.xz
    mv wasmtime-v${WASMTIME_C_VERSION}-x86_64-linux-c-api wasmtime

    wget https://github.com/bytecodealliance/wasmtime-cpp/archive/refs/tags/v${WASMTIME_CPP_VERSION}.tar.gz
    tar xvf v${WASMTIME_CPP_VERSION}.tar.gz
    rm v${WASMTIME_CPP_VERSION}.tar.gz
    mv wasmtime-cpp-${WASMTIME_CPP_VERSION}/include/* wasmtime/include/
    rm -rf wasmtime-cpp-${WASMTIME_CPP_VERSION}
fi
