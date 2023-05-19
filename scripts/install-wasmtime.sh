#!/bin/bash

# List of current vertsion can be found in https://github.com/bytecodealliance/wasmtime/releases  ---
WASMTIME_VERSION=8.0.1
if [ ! -d "./wasmtime" ] 
then
    wget https://github.com/bytecodealliance/wasmtime/releases/download/v${WASMTIME_VERSION}/wasmtime-v${WASMTIME_VERSION}-x86_64-linux-c-api.tar.xz
    tar xvf wasmtime-v${WASMTIME_VERSION}-x86_64-linux-c-api.tar.xz
    rm wasmtime-v${WASMTIME_VERSION}-x86_64-linux-c-api.tar.xz
    mv wasmtime-v${WASMTIME_VERSION}-x86_64-linux-c-api wasmtime
fi
