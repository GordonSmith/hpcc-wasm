cmake_minimum_required(VERSION 3.22)

# set(VCPKG_FILES_DIR "${CMAKE_BINARY_DIR}")
# set(CMAKE_TOOLCHAIN_FILE ${CMAKE_CURRENT_SOURCE_DIR}/vcpkg/scripts/buildsystems/vcpkg.cmake)
# set(VCPKG_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/vcpkg)
# set(VCPKG_OVERLAY_PORTS ${CMAKE_CURRENT_SOURCE_DIR}/vcpkg_overlays)
# set(VCPKG_OVERLAY_TRIPLETS ${CMAKE_CURRENT_SOURCE_DIR}/vcpkg_triplets)
# set(VCPKG_INSTALLED_DIR "${VCPKG_FILES_DIR}/vcpkg_installed")
# set(VCPKG_INSTALL_OPTIONS "--downloads-root=${VCPKG_FILES_DIR}/vcpkg_downloads;--x-buildtrees-root=${VCPKG_FILES_DIR}/vcpkg_buildtrees;--x-packages-root=${VCPKG_FILES_DIR}/vcpkg_packages")
# set(VCPKG_VERBOSE ON)

# # set(VCPKG_TARGET_TRIPLET "wasm32-wasi-sdk")
# # set(ENV{WASI_SDK_PREFIX} ${CMAKE_CURRENT_SOURCE_DIR}/wasi-sdk-20.0)

# set(VCPKG_CHAINLOAD_TOOLCHAIN_FILE ${CMAKE_CURRENT_SOURCE_DIR}/emsdk/upstream/emscripten/cmake/Modules/Platform/Emscripten.cmake)
# set(VCPKG_TARGET_TRIPLET "wasm32-emscripten")

project(hpcc-wasm)

set(CMAKE_CXX_STANDARD 20)

set(HPCC_WASM_ROOT ${CMAKE_CURRENT_SOURCE_DIR})

if (NOT DEFINED CMAKE_BUILD_TYPE OR CMAKE_BUILD_TYPE STREQUAL "")
    set(CMAKE_BUILD_TYPE Debug)
endif()

function(npm_project NAME SRCS OUTPUTS)

    add_custom_command (
        OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/no.file
        COMMAND npm run clean
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    )

    add_custom_target(${NAME}-clean
        DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/no.file
    )

    add_custom_command (
        OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/.tmp/package-lock.json
        COMMAND npm install && ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/package-lock.json ${CMAKE_CURRENT_BINARY_DIR}/.tmp/package-lock.json
        DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/package.json
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    )

    add_custom_target(${NAME}-fetchdeps
        DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/.tmp/package-lock.json
    )

    add_custom_command (OUTPUT ${OUTPUTS}
        COMMAND npm run build
        DEPENDS ${SRCS}
        DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/.tmp/package-lock.json
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    )

    add_custom_target (${NAME}-build ALL 
        DEPENDS ${OUTPUTS}
    )
endfunction()

add_subdirectory(guest)
add_subdirectory(host)
add_subdirectory(fastly)