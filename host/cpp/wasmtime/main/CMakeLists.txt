project(wasmtime-host)

# find_package(add REQUIRED
#     PATHS /home/gordon/hpcc-wasm/build/guest/cpp/lib/cmake/add
# )

include_directories (
    ${HPCC_WASM_ROOT}/wasmtime/include
 )

add_executable(wasmtime-host
    main.cpp
)

target_link_libraries(wasmtime-host
    ${HPCC_WASM_ROOT}/wasmtime/lib/libwasmtime.a
)

