./bench.sh "node ./hello-world/js/src/index.js"
./bench.sh "node ./hello-world/js/hello/index.js"

# ./bench.sh "./hello-world/cpp/build/hello-world hello world"
# ./bench.sh "wasmtime ./hello-world/cpp/build-wasm/hello-world.wasm hello world"
# docker run --rm hello-world:ubuntu hello world
# docker run --rm --runtime=io.containerd.wasmedge.v1 --platform=wasi/wasm32 hello-world:wasm hello world