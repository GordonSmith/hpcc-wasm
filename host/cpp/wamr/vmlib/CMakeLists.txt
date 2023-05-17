project(vmlib)

set (WAMR_BUILD_PLATFORM "linux")
set (WAMR_BUILD_TARGET "X86_64")
set (WAMR_BUILD_INTERP 1)
set (WAMR_BUILD_FAST_INTERP 1)
set (WAMR_BUILD_AOT 0)
set (WAMR_BUILD_LIBC_BUILTIN 1)
set (WAMR_BUILD_LIBC_WASI 1)
set (WAMR_BUILD_SIMD 1)
set (WAMR_ROOT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/wasm-micro-framework)

include (${WAMR_ROOT_DIR}/build-scripts/runtime_lib.cmake)
add_library(vmlib ${WAMR_RUNTIME_LIB_SOURCE})
