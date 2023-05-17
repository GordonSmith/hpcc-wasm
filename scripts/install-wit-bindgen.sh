#!/bin/bash

if [ ! -d "./wit-bindgen" ] 
then
    mkdir wit-bindgen

    curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh -s -- -y
    cargo install wasm-tools

    cargo install --git https://github.com/bytecodealliance/wit-bindgen --tag wit-bindgen-cli-0.6.0 wit-bindgen-cli

    curl https://wasmtime.dev/install.sh -sSf | bash

    wget https://github.com/bytecodealliance/preview2-prototyping/releases/download/latest/wasi_preview1_component_adapter.command.wasm
    mv ./wasi_preview1_component_adapter.command.wasm ./wit-bindgen

    wget https://github.com/bytecodealliance/preview2-prototyping/releases/download/latest/wasi_preview1_component_adapter.reactor.wasm
    mv ./wasi_preview1_component_adapter.reactor.wasm ./wit-bindgen
fi
