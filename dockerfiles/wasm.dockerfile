# syntax=docker/dockerfile:1
FROM scratch

COPY sieve.wasm /sieve.wasm

ENTRYPOINT ["/sieve.wasm"]
