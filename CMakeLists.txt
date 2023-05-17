cmake_minimum_required(VERSION 3.22)

project(hpcc-wasm)

set(CMAKE_CXX_STANDARD 20)

set(HPCC_WASM_ROOT ${CMAKE_CURRENT_SOURCE_DIR})

if (NOT DEFINED CMAKE_BUILD_TYPE OR CMAKE_BUILD_TYPE STREQUAL "")
    set(CMAKE_BUILD_TYPE Debug)
endif()

add_subdirectory(guest)
add_subdirectory(host)