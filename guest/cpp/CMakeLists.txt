include(ExternalProject)

set(WASI_SDK_PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/wasi-sdk/wasi-sdk-20.0)

ExternalProject_Add(wasi-sdk
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/wasi-sdk
    CMAKE_ARGS 
        -DWASI_SDK_PREFIX=${WASI_SDK_PREFIX}
        -DCMAKE_TOOLCHAIN_FILE=${WASI_SDK_PREFIX}/share/cmake/wasi-sdk.cmake
        -DCMAKE_SYSROOT=${WASI_SDK_PREFIX}/share/wasi-sysroot
        -DCMAKE_INSTALL_PREFIX=${CMAKE_CURRENT_BINARY_DIR}
)
