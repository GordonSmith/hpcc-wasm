project(util)

add_library(util
    reflect.cpp
    wasmModule.cpp
)

target_link_libraries (util)
