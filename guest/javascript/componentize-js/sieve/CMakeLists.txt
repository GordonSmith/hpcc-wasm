project(componentize-js-sieve)

set (SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/src/index.js
    ${CMAKE_CURRENT_SOURCE_DIR}/util/componentize.mjs
)

set (OUTPUTS
    ${CMAKE_CURRENT_BINARY_DIR}/sieve.component.wasm
)

npm_project(componentize-js-sieve ${SRCS} ${OUTPUTS})
