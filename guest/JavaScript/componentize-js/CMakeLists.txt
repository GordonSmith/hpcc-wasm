project(componentize-js-index)

file(GLOB SRCS ${CMAKE_CURRENT_SOURCE_DIR}/*)

file(REMOVE_RECURSE
    ${CMAKE_CURRENT_BINARY_DIR}/src
)

file(COPY
    ${SRCS}
    DESTINATION ${CMAKE_CURRENT_BINARY_DIR})

add_custom_command (
    OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/no.file
    COMMAND npm run clean
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)

add_custom_target( componentize-js-index-clean
    DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/no.file
)

add_custom_command (
    OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/lib/package-lock.json
    COMMAND npm install && ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_BINARY_DIR}/package-lock.json ${CMAKE_CURRENT_BINARY_DIR}/lib/package-lock.json
    DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/package-lock.json
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)

add_custom_target( componentize-js-index-fetchdeps
    DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/lib/package-lock.json
)

add_custom_command (
    OUTPUT 
        ${CMAKE_CURRENT_BINARY_DIR}/target/release/wasmtime-test
    COMMAND npm run build
    DEPENDS ${SRCS}
    DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/lib/package-lock.json
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)

add_custom_target ( componentize-js-index ALL 
    DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/target/release/wasmtime-test
)

add_dependencies ( componentize-js-index componentize-js-index-fetchdeps )
