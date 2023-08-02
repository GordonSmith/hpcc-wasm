function(wit2code witFile)
    add_custom_command(
        MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/${witFile}.wit
        OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${witFile}/cpp/${witFile}.c ${CMAKE_CURRENT_BINARY_DIR}/${witFile}/cpp/${witFile}.h ${CMAKE_CURRENT_BINARY_DIR}/${witFile}/cpp/${witFile}_component_type.o
        COMMAND wit-bindgen markdown ${CMAKE_CURRENT_SOURCE_DIR}/${witFile}.wit
        COMMAND wit-bindgen c --out-dir ${CMAKE_CURRENT_BINARY_DIR}/${witFile}/cpp ${CMAKE_CURRENT_SOURCE_DIR}/${witFile}.wit
        COMMAND wit-bindgen rust --ownership owning --out-dir ${CMAKE_CURRENT_BINARY_DIR}/${witFile}/rust ${CMAKE_CURRENT_SOURCE_DIR}/${witFile}.wit
        COMMAND wit-bindgen teavm-java --out-dir ${CMAKE_CURRENT_BINARY_DIR}/${witFile}/java ${CMAKE_CURRENT_SOURCE_DIR}/${witFile}.wit
        COMMAND wit-bindgen tiny-go --out-dir ${CMAKE_CURRENT_BINARY_DIR}/${witFile}/go ${CMAKE_CURRENT_SOURCE_DIR}/${witFile}.wit
    )
    add_custom_target(wit-generate-${witFile} ALL DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/${witFile}/cpp/${witFile}.c)
endfunction()

wit2code(test)
wit2code(edge)

add_subdirectory(AssemblyScript)
add_subdirectory(cpp)
add_subdirectory(JavaScript)