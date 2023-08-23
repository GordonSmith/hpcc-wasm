project(sieve)

include_directories(
    ${HPCC_WASM_ROOT}/build/guest/edge/cpp
)

add_executable(sieve
    main.cpp
)

target_link_libraries(sieve
)

install(TARGETS sieve
    EXPORT addConfig
    RUNTIME DESTINATION bin
)

# Export the target information to a file
install(EXPORT addConfig
    FILE addConfig.cmake
    NAMESPACE sieve::
    DESTINATION lib/cmake/sieve
)
