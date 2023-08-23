vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO ggerganov/llama.cpp
    REF 64639555ff93c8ead2b80becb49cc6b60aeac240
    SHA512 63f8f2a1e004dd06d2bb49a97e02abf9d8fad8b9231751ea25e078a56c8a49394f20d1b7fc5cf9b348521938feed58db022a7fc3107d00362efd7fda02defde1
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
    OPTIONS
)
vcpkg_cmake_build()

file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/llama" RENAME copyright)
