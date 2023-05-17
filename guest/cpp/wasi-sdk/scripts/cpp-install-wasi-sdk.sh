#!/bin/bash

# List of current vertsion can be found in https://github.com/WebAssembly/wasi-sdk/releases  ---
WASI_VERSION=20
WASI_VERSION_FULL=${WASI_VERSION}.0
if [ ! -d "./wasi-sdk-${WASI_VERSION_FULL}" ] 
then
    wget https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-${WASI_VERSION}/wasi-sdk-${WASI_VERSION_FULL}-linux.tar.gz
    tar xvf wasi-sdk-${WASI_VERSION_FULL}-linux.tar.gz
    rm wasi-sdk-${WASI_VERSION_FULL}-linux.tar.gz

    # wget https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-${WASI_VERSION}%2Bthreads/wasi-sdk-${WASI_VERSION_FULL}.threads-linux.tar.gz
    # tar xvf wasi-sdk-${WASI_VERSION_FULL}.threads-linux.tar.gz
    # rm wasi-sdk-${WASI_VERSION_FULL}.threads-linux.tar.gz
fi
