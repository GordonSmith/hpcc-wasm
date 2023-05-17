cmake_minimum_required(VERSION 3.22)

project(host)

set(CMAKE_CXX_STANDARD 20)

add_subdirectory(vmlib)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/vmlib/wasm-micro-framework/core/iwasm/include)

add_subdirectory(util)
add_subdirectory(main)
