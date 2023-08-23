set(VCPKG_TARGET_ARCHITECTURE wasm32)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)

if(NOT DEFINED ENV{WASI_SDK_PREFIX})
   find_path(WASI_SDK_PREFIX "../wasi-sdk-20.0")
else()
   set(WASI_SDK_PREFIX "$ENV{WASI_SDK_PREFIX}")
endif()

set(VCPKG_CMAKE_SYSTEM_NAME unknown)
set(VCPKG_CHAINLOAD_TOOLCHAIN_FILE "${CMAKE_CURRENT_SOURCE_DIR}/../vcpkg_triplets/wasi-sdk-pthread.cmake")
