project(regress-test)

set(WASM_PATH "${CMAKE_CURRENT_BINARY_DIR}/bin/${PROJECT_NAME}.wasm")

add_custom_command(
    MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/hpcc-scalar-test.wit
    OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/hpcc_scalar_test.c ${CMAKE_CURRENT_SOURCE_DIR}/hpcc_scalar_test.h ${CMAKE_CURRENT_SOURCE_DIR}/hpcc_scalar_test_component_type.o
    COMMAND wit-bindgen c --out-dir ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/hpcc-scalar-test.wit
)
add_custom_target(wit-generate ALL DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/hpcc_scalar_test.c)

set(CMAKE_EXECUTABLE_SUFFIX ".wasm")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -nostartfiles -fno-exceptions --sysroot=${WASI_SDK_PREFIX}/share/wasi-sysroot -Wl,--no-entry")

include_directories(
    ${WIT_OUTPUT_DIR}
)

add_executable(regress-test
    main.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/hpcc_scalar_test.c
    ${CMAKE_CURRENT_SOURCE_DIR}/hpcc_scalar_test.h
)

target_link_libraries(regress-test
    ${CMAKE_CURRENT_SOURCE_DIR}/hpcc_scalar_test_component_type.o
)

# add_custom_command(
#     TARGET test POST_BUILD
#     COMMAND wasm-tools component new ${CMAKE_CURRENT_BINARY_DIR}/test.wasm -o ${CMAKE_CURRENT_BINARY_DIR}/test.component.wasm --adapt wasi_snapshot_preview1=${WIT_BINDGEN_PREFIX}/wasi_preview1_component_adapter.reactor.wasm
#     # COMMAND npx jco transpile ${CMAKE_CURRENT_BINARY_DIR}/test.component.wasm -o ${CMAKE_CURRENT_BINARY_DIR}/js --wasi-shim --map wasi-*=@bytecodealliance/preview2-shim/* --map print=../../../../src-components/test/logger.js 
# )
# set_property(SOURCE main.cpp APPEND PROPERTY OBJECT_DEPENDS ${WIT_OUTPUT_DIR}/wit/test.c)

# Install the target and export the target information
install(TARGETS regress-test
    RUNTIME DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}
)
