project(javy)

set (SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/src/index.js
    ${CMAKE_CURRENT_SOURCE_DIR}/util/componentize.mjs
)

add_custom_command (
    OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/no.file
    COMMAND npm run clean
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)
add_custom_target( javy-clean
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/no.file
)

add_custom_command (
    OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/lib/package-lock.json
    COMMAND npm install && ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/package-lock.json ${CMAKE_CURRENT_SOURCE_DIR}/lib/package-lock.json
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/package.json
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)

add_custom_target( javy-fetchdeps
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/lib/package-lock.json
)

add_custom_command ( OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/test.component.wasm
    COMMAND npm run build
    DEPENDS ${SRCS}
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/lib/package-lock.json
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)

add_custom_target ( javy-build ALL 
    DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/test.component.wasm
)

