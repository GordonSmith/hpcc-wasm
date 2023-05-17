#include "wasmModule.hpp"

// #include <stdio.h>
// #include <stdlib.h>
#include <stdexcept>

#include "reflect.hpp"

#define own

WasmModule::WasmModule(const char *filename)
{
    // Initialize.
    printf("Initializing...\n");
    engine = wasm_engine_new();
    store = wasm_store_new(engine);
    // Load binary.
    printf("Loading binary...\n");
#if WASM_ENABLE_AOT != 0 && WASM_ENABLE_INTERP == 0
    FILE *file = fopen(filename, "rb");
#else
    FILE *file = fopen(filename, "rb");
#endif
    if (!file)
    {
        throw new std::runtime_error("Error loading module!");
    }

    int ret = fseek(file, 0L, SEEK_END);
    if (ret == -1)
    {
        fclose(file);
        throw new std::runtime_error("Error loading module!");
    }

    long file_size = ftell(file);
    if (file_size == -1)
    {
        fclose(file);
        throw new std::runtime_error("Error loading module!");
    }

    ret = fseek(file, 0L, SEEK_SET);
    if (ret == -1)
    {
        fclose(file);
        throw new std::runtime_error("Error loading module!");
    }

    wasm_byte_vec_t binary;
    wasm_byte_vec_new_uninitialized(&binary, file_size);
    if (fread(binary.data, file_size, 1, file) != 1)
    {
        fclose(file);
        throw new std::runtime_error("Error loading module!");
    }
    fclose(file);

    // Compile.
    printf("Compiling module...\n");
    own wasm_module_t *module = wasm_module_new(store, &binary);
    if (!module)
    {
        throw new std::runtime_error("Error compiling module!\n");
    }

    wasm_byte_vec_delete(&binary);

    // Instantiate.
    printf("Instantiating module...\n");
    wasm_extern_vec_t imports = WASM_EMPTY_VEC;
    own wasm_instance_t *instance =
        wasm_instance_new(store, module, &imports, NULL);
    if (!instance)
    {
        throw new std::runtime_error("Error instantiating module!\n");
    }

    // Extract export.
    printf("Extracting export...\n");
    own wasm_exporttype_vec_t export_types;
    own wasm_extern_vec_t exports;
    wasm_module_exports(module, &export_types);
    wasm_instance_exports(instance, &exports);
    assert(exports.size == export_types.size);

    for (size_t i = 0; i < exports.size; ++i)
    {
        assert(wasm_extern_kind(exports.data[i]) ==
               wasm_externtype_kind(wasm_exporttype_type(export_types.data[i])));
        printf("> export %zu ", i);
        print_name(wasm_exporttype_name(export_types.data[i]));
        printf("\n");
        printf(">> initial: ");
        print_externtype(wasm_exporttype_type(export_types.data[i]));
        printf("\n");
        printf(">> current: ");
        own wasm_externtype_t *current = wasm_extern_type(exports.data[i]);
        print_externtype(current);
        wasm_externtype_delete(current);
        printf("\n");
        if (wasm_extern_kind(exports.data[i]) == WASM_EXTERN_FUNC)
        {
            wasm_func_t *func = wasm_extern_as_func(exports.data[i]);
            printf(">> in-arity: %zu", wasm_func_param_arity(func));
            printf(", out-arity: %zu\n", wasm_func_result_arity(func));
        }
    }

    wasm_module_delete(module);
    wasm_instance_delete(instance);
    wasm_extern_vec_delete(&exports);
    wasm_exporttype_vec_delete(&export_types);

    // Shut down.
    printf("Shutting down...\n");
    wasm_store_delete(store);
    wasm_engine_delete(engine);

    // All done.
    printf("Done.\n");
}

WasmModule::~WasmModule()
{
    // wasm_byte_vec_delete(&binary);
    // wasm_extern_vec_delete(&imports);
    // wasm_extern_vec_delete(&exports);
    // wasm_val_vec_delete(&args_vec);
    // wasm_val_vec_delete(&results_vec);
    // wasm_module_delete(module);
    // wasm_instance_delete(instance);
    // wasm_func_delete(func);
    // wasm_trap_delete(trap);
    // wasm_store_delete(store);
    // wasm_engine_delete(engine);
}
