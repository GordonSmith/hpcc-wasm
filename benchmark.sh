#!/bin/bash

# Command array to benchmark, add your commands here
wasmtime compile build/guest/cpp/bin/sieve.wasm
./wamrc -o sieve.aot build/guest/cpp/bin/sieve.wasm

commands_to_benchmark=("docker run --rm sieve" "docker run --rm --runtime=io.containerd.wasmedge.v1 --platform=wasi/wasm sieve-wasm" "./iwasm sieve.aot" "./iwasm build/guest/cpp/bin/sieve.wasm" "wasmtime build/guest/cpp/bin/sieve.wasm" "wasmtime --allow-precompiled sieve.cwasm" "build/guest/cpp/native/seive/seive")

# Benchmark function
benchmark() {
  local command="$1"
  local start_time=$(date +%s%3N)
  local end_time duration calls=0

  while true; do
    end_time=$(date +%s%3N)
    duration=$((end_time - start_time))

    if (( duration >= 10000 )); then
      echo "Benchmark for '$command' completed!"
      echo "Total number of calls: $calls"
      echo "Total duration: $duration ms"
      break
    fi

    # Execute the command
    $command >/dev/null 2>&1

    calls=$((calls + 1))
  done
}

# Loop through the commands array and run benchmark for each command
for cmd in "${commands_to_benchmark[@]}"; do
  benchmark "$cmd"
  echo
done
