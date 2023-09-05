FROM scratch

COPY spin.toml /spin.toml

COPY target/spin-docker-ts.wasm /target/spin-docker-ts.wasm

ENTRYPOINT ["/spin.toml"]
