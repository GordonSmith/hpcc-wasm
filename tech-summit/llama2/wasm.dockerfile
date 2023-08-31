FROM scratch

WORKDIR /app

COPY build-wasm/llama2.wasm /app/llama2.wasm

WORKDIR /wf

ENTRYPOINT ["/app/llama2.wasm"]
