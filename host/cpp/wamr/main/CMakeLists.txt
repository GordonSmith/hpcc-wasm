project(main)

# find_package(add REQUIRED
#     PATHS /home/gordon/hpcc-wasm/build/guest/cpp/lib/cmake/add
# )

include_directories (
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/../util
 )

add_executable(host
    main.cpp
)

target_link_libraries(host
    util
    vmlib
)

