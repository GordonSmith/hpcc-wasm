project(add)

# Set the working directory to the project directory
set(CMAKE_JS_WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

# Generate a file with the hash of package.json
configure_file(package.json ${CMAKE_CURRENT_BINARY_DIR}/package.json.hash)

# Add a custom command to run npm install when package.json changes
add_custom_command(
    OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/node_modules
    COMMAND npm install
    DEPENDS package.json
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)

# Add a custom target to run the npm install command
add_custom_target(npm_install DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/npm_installed)

# Build the project using npm
add_custom_command(
    OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/build/release.wasm
    COMMAND npm run asbuild
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/assembly/index.ts
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)

# Add a custom target to build the project
add_custom_target(build_project ALL DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/build/release.wasm)