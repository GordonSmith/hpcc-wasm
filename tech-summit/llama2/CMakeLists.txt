cmake_minimum_required(VERSION 3.22)

project(lllama2 C)

set(CMAKE_CXX_STANDARD 20)

if(WASI_SDK_PREFIX)
    set(CMAKE_EXECUTABLE_SUFFIX ".wasm")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -D_WASI_EMULATED_MMAN -fno-exceptions --sysroot=${WASI_SDK_PREFIX}/share/wasi-sysroot")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_WASI_EMULATED_MMAN -fno-exceptions --sysroot=${WASI_SDK_PREFIX}/share/wasi-sysroot")
    SET(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} -lwasi-emulated-mman")
endif()

add_executable(llama2 run.c)

target_link_libraries(llama2 PRIVATE 
    m
)

