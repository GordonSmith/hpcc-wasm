FROM scratch

COPY spin.toml /spin.toml

COPY target/wasm32-wasi/release/spin_docker_rust.wasm /target/wasm32-wasi/release/spin_docker_rust.wasm

ENTRYPOINT ["/spin.toml"]
