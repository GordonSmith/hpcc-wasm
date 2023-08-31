#!/bin/bash

REPO_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && cd ../../ && pwd )"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $SCRIPT_DIR

docker build -f ./hello-world.dockerfile \
    -t hello-world:ubuntu \
    $REPO_DIR/hello-world/cpp/build

docker build -f ./hello-world-wasm.dockerfile \
    --platform wasi/wasm32 \
    --provenance=false \
    -t hello-world:wasm \
    $REPO_DIR/hello-world/cpp/build-wasm

cd - > /dev/null
