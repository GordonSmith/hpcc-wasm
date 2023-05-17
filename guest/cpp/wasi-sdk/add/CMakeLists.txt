project(test)

add_definitions(-D_WASI_EMULATED_SIGNAL)
add_link_options(-lwasi-emulated-signal)

# set(CMAKE_CXX_STANDARD 20)
set(CMAKE_EXECUTABLE_SUFFIX ".wasm")
set(CMAKE_SHARED_LIBRARY_SUFFIX ".wasm")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -nostdlib -fno-exceptions")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,--no-entry -Wl,--export-all")

include_directories(
)

add_executable(add
    main.cpp
    main.hpp
)

target_link_libraries(add
)

# Install the target and export the target information
install(TARGETS add
    EXPORT addConfig
    RUNTIME DESTINATION bin
)
# install(FILES main.hpp DESTINATION include)

# Export the target information to a file
install(EXPORT addConfig
    FILE addConfig.cmake
    NAMESPACE add::
    DESTINATION lib/cmake/add
)
