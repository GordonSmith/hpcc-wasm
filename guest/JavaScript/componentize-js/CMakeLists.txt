project(componentize-js-index)

file(GLOB SRCS ${CMAKE_CURRENT_SOURCE_DIR}/*)


# Create a custom command to copy files to the build folder
add_custom_command(
    OUTPUT copy_files_marker  # A dummy output file to track the custom command
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${SRCS} "${CMAKE_CURRENT_BINARY_DIR}"
    DEPENDS ${SRCS}
    COMMENT "Copying files to the build folder"
    VERBATIM
    USES_TERMINAL
)

# Add a target that depends on the custom command
add_custom_target(CopyFiles ALL 
    DEPENDS copy_files_marker
)
# file(REMOVE_RECURSE
#     ${CMAKE_CURRENT_BINARY_DIR}/src
# )

# file(COPY
#     ${SRCS}
#     DESTINATION ${CMAKE_CURRENT_BINARY_DIR})

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
        ${CMAKE_CURRENT_BINARY_DIR}/hello.wasm
    COMMAND npm run build
    DEPENDS ${SRCS}
    DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/lib/package-lock.json
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)
add_custom_target ( componentize-js-index ALL 
    DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/hello.wasm
)

add_dependencies ( componentize-js-index CopyFiles componentize-js-index-fetchdeps )
