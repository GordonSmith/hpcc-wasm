#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

$DIR/install-wasi-sdk.sh &
$DIR/install-javy.sh
$DIR/install-wasmtime.sh
$DIR/install-wit-bindgen.sh
$DIR/install-emsdk.sh

wait
