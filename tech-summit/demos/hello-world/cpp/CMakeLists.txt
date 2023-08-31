project(hello-world)

if(WASI_SDK_PREFIX)
    set(CMAKE_EXECUTABLE_SUFFIX ".wasm")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-exceptions --sysroot=${WASI_SDK_PREFIX}/share/wasi-sysroot")
    # set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -nostartfiles -fno-exceptions --sysroot=${WASI_SDK_PREFIX}/share/wasi-sysroot -Wl,--no-entry")
endif()

add_executable(hello-world hello-world.c)

# add_executable(list-dir list-dir.cpp)

