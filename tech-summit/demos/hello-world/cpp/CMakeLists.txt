project(hello-world)

if(WASI_SDK_PREFIX)
    set(CMAKE_EXECUTABLE_SUFFIX ".wasm")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-exceptions --sysroot=${WASI_SDK_PREFIX}/share/wasi-sysroot -target wasm32-wasi")
endif()

add_executable(hello-world hello-world.cpp)
add_executable(list-dir list-dir.cpp)

