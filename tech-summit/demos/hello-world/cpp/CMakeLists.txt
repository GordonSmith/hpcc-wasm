cmake_minimum_required(VERSION 3.22)

project(hello-world)

if(WASI_SDK_PREFIX)
    set(CMAKE_EXECUTABLE_SUFFIX ".wasm")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-exceptions --sysroot=${WASI_SDK_PREFIX}/share/wasi-sysroot")

    add_custom_target(hello-world-wat
        COMMAND wasmtime compile -o ${CMAKE_CURRENT_BINARY_DIR}/hello-world-wat.cwasm ${CMAKE_CURRENT_SOURCE_DIR}/hello-world.wat
        DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/hello-world.wat
    )
endif()

add_executable(hello-world hello-world.c)

if(WASI_SDK_PREFIX)
    add_dependencies(hello-world hello-world-wat)
endif()

# add_executable(list-dir list-dir.cpp)

