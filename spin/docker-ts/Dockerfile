FROM scratch

COPY spin.toml /spin.toml
COPY target/docker-ts.wasm /target/docker-ts.wasm 

ENTRYPOINT ["/spin.toml"]