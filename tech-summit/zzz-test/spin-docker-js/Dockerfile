FROM scratch

COPY spin.toml /spin.toml

COPY target/spin-docker-js.wasm /target/spin-docker-js.wasm

ENTRYPOINT ["/spin.toml"]
