#!/bin/bash

# List of current vertsion can be found in https://github.com/bytecodealliance/wit-bindgen/releases  ---
VERSION=0.9.0

if [ ! -d "./wit-bindgen" ] 
then
    mkdir wit-bindgen

    curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh -s -- -y
    cargo install wasm-tools

    cargo install --git https://github.com/bytecodealliance/wit-bindgen --tag wit-bindgen-cli-$VERSION wit-bindgen-cli

    curl https://wasmtime.dev/install.sh -sSf | bash

    wget https://github.com/bytecodealliance/preview2-prototyping/releases/download/latest/wasi_preview1_component_adapter.command.wasm
    mv ./wasi_preview1_component_adapter.command.wasm ./wit-bindgen

    wget https://github.com/bytecodealliance/preview2-prototyping/releases/download/latest/wasi_preview1_component_adapter.reactor.wasm
    mv ./wasi_preview1_component_adapter.reactor.wasm ./wit-bindgen
fi
