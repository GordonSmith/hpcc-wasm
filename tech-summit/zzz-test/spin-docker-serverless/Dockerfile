FROM scratch

COPY spin.toml /spin.toml

COPY target/spin-docker-serverless.wasm /target/spin-docker-serverless.wasm

ENTRYPOINT ["/spin.toml"]
