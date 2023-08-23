project(fastly-ts)

set (SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/src/client/index.ts
    ${CMAKE_CURRENT_SOURCE_DIR}/src/server/index.ts
)

set (OUTPUTS
    ${CMAKE_CURRENT_SOURCE_DIR}/dist/index.js
    ${CMAKE_CURRENT_SOURCE_DIR}/dist/index.css
    ${CMAKE_CURRENT_SOURCE_DIR}/bin/main.wasm
)

npm_project(fastly-js ${SRCS} ${OUTPUTS})
