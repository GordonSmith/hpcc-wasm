#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>

// #include "reflect.hpp"
// #include "wasmModule.hpp"
// #include <wasm_c_api.h>
#include <wasm_export.h>

#define own

const char *const wasmFile = "/home/gordon/hpcc-wasm/guest/AssemblyScript/add/build/release.wasm";
const char *const wasmFile2 = "/home/gordon/hpcc-wasm/build/guest/cpp/bin/add.wasm";

char *read_wasm_binary_to_buffer(const char *filename, uint32_t *size)
{
    FILE *file = fopen(filename, "rb");
    if (!file)
    {
        printf("open wasm file failed!\n");
        return NULL;
    }

    fseek(file, 0, SEEK_END);
    long file_size = ftell(file);
    if (file_size < 0)
    {
        printf("get file size failed!\n");
        fclose(file);
        return NULL;
    }

    fseek(file, 0, SEEK_SET);
    char *buffer = (char *)malloc(file_size);
    if (!buffer)
    {
        printf("malloc memory failed!\n");
        fclose(file);
        return NULL;
    }

    if (fread(buffer, file_size, 1, file) != 1)
    {
        printf("read wasm file failed!\n");
        fclose(file);
        free(buffer);
        return NULL;
    }

    fclose(file);
    *size = file_size;
    return buffer;
}

int main(int argc, const char *argv[])
{
    char *buffer, error_buf[128];
    wasm_module_t module;
    wasm_module_inst_t module_inst;
    wasm_function_inst_t func;
    wasm_exec_env_t exec_env;
    uint32_t size, stack_size = 8092, heap_size = 8092;

    /* initialize the wasm runtime by default configurations */
    wasm_runtime_init();

    /* read WASM file into a memory buffer */
    buffer = read_wasm_binary_to_buffer(wasmFile2, &size);

    /* add line below if we want to export native functions to WASM app */
    // wasm_runtime_register_natives(...);

    /* parse the WASM file from buffer and create a WASM module */
    module = wasm_runtime_load((uint8_t *)buffer, size, error_buf, sizeof(error_buf));

    /* create an instance of the WASM module (WASM linear memory is ready) */
    module_inst = wasm_runtime_instantiate(module, stack_size, heap_size,
                                           error_buf, sizeof(error_buf));

    /* lookup a WASM function by its name
   The function signature can NULL here */
    func = wasm_runtime_lookup_function(module_inst, "sub", NULL);

    /* creat an execution environment to execute the WASM functions */
    exec_env = wasm_runtime_create_exec_env(module_inst, stack_size);

    /* execute the WASM function with arguments (if any) */
    uint32_t addArgv[2];
    addArgv[0] = 11;
    addArgv[1] = 22;
    wasm_runtime_call_wasm(exec_env, func, 2, addArgv);
    printf("add function return: %i\n", addArgv[0]);

    wasm_runtime_destroy_exec_env(exec_env);
    wasm_runtime_deinstantiate(module_inst);
    wasm_runtime_unload(module);
    wasm_runtime_destroy();

    return 0;
    //     wasm_engine_t *engine = wasm_engine_new();
    //     wasm_store_t *store = wasm_store_new(engine);

    //     // Load binary.
    //     printf("Loading binary...\n");
    // #if WASM_ENABLE_AOT != 0 && WASM_ENABLE_INTERP == 0
    //     FILE *file = fopen(wasmFile2, "rb");
    // #else
    //     FILE *file = fopen(wasmFile2, "rb");
    // #endif
    //     if (!file)
    //     {
    //         printf("> Error loading module!\n");
    //         return 1;
    //     }

    //     int ret = fseek(file, 0L, SEEK_END);
    //     if (ret == -1)
    //     {
    //         printf("> Error loading module!\n");
    //         fclose(file);
    //         return 1;
    //     }

    //     long file_size = ftell(file);
    //     if (file_size == -1)
    //     {
    //         printf("> Error loading module!\n");
    //         fclose(file);
    //         return 1;
    //     }

    //     ret = fseek(file, 0L, SEEK_SET);
    //     if (ret == -1)
    //     {
    //         printf("> Error loading module!\n");
    //         fclose(file);
    //         return 1;
    //     }

    //     wasm_byte_vec_t binary;
    //     wasm_byte_vec_new_uninitialized(&binary, file_size);
    //     if (fread(binary.data, file_size, 1, file) != 1)
    //     {
    //         printf("> Error loading module!\n");
    //         fclose(file);
    //         return 1;
    //     }
    //     fclose(file);

    //     // Compile.
    //     printf("Compiling module...\n");
    //     own wasm_module_t *module = wasm_module_new(store, &binary);
    //     if (!module)
    //     {
    //         printf("> Error compiling module!\n");
    //         return 1;
    //     }

    //     wasm_byte_vec_delete(&binary);

    //     // Instantiate.
    //     printf("Instantiating module...\n");
    //     wasm_extern_vec_t imports = WASM_EMPTY_VEC;
    //     own wasm_instance_t *instance =
    //         wasm_instance_new(store, module, &imports, NULL);
    //     if (!instance)
    //     {
    //         printf("> Error instantiating module!\n");
    //         return 1;
    //     }

    //     // Extract export.
    //     printf("Extracting export...\n");
    //     own wasm_exporttype_vec_t export_types;
    //     own wasm_extern_vec_t exports;
    //     wasm_module_exports(module, &export_types);
    //     wasm_instance_exports(instance, &exports);
    //     assert(exports.size == export_types.size);

    //     for (size_t i = 0; i < exports.size; ++i)
    //     {
    //         assert(wasm_extern_kind(exports.data[i]) ==
    //                wasm_externtype_kind(wasm_exporttype_type(export_types.data[i])));
    //         printf("> export %zu ", i);
    //         print_name(wasm_exporttype_name(export_types.data[i]));
    //         printf("\n");
    //         printf(">> initial: ");
    //         print_externtype(wasm_exporttype_type(export_types.data[i]));
    //         printf("\n");
    //         printf(">> current: ");
    //         own wasm_externtype_t *current = wasm_extern_type(exports.data[i]);
    //         print_externtype(current);
    //         wasm_externtype_delete(current);
    //         printf("\n");
    //         if (wasm_extern_kind(exports.data[i]) == WASM_EXTERN_FUNC)
    //         {
    //             wasm_func_t *func = wasm_extern_as_func(exports.data[i]);
    //             printf(">> in-arity: %zu", wasm_func_param_arity(func));
    //             printf(", out-arity: %zu\n", wasm_func_result_arity(func));
    //         }
    //     }

    //     wasm_module_delete(module);
    //     wasm_instance_delete(instance);
    //     wasm_extern_vec_delete(&exports);
    //     wasm_exporttype_vec_delete(&export_types);

    //     // Shut down.
    //     printf("Shutting down...\n");
    //     wasm_store_delete(store);
    //     wasm_engine_delete(engine);

    //     // All done.
    //     printf("Done.\n");
    //     return 0;
}