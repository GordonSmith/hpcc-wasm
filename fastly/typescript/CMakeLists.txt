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

# add_custom_command (
#     OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/no.file
#     COMMAND npm run clean
#     WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
# )
# add_custom_target( componentize-js-clean
#     DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/no.file
# )

# add_custom_command (
#     OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/lib/package-lock.json
#     COMMAND npm install && ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/package-lock.json ${CMAKE_CURRENT_SOURCE_DIR}/lib/package-lock.json
#     DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/package.json
#     WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
# )

# add_custom_target( componentize-js-fetchdeps
#     DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/lib/package-lock.json
# )

# add_custom_command ( OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/test.component.wasm
#     COMMAND npm run build
#     DEPENDS ${SRCS}
#     DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/lib/package-lock.json
#     WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
# )

# add_custom_target ( componentize-js-build ALL 
#     DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/test.component.wasm
# )

