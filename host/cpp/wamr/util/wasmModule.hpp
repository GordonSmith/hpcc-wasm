#include <wasm_c_api.h>

class WasmModule
{
protected:
    wasm_engine_t *engine;
    wasm_store_t *store;
    wasm_byte_vec_t binary;
    wasm_module_t *module;
    wasm_extern_vec_t imports;
    wasm_extern_vec_t exports;
    wasm_instance_t *instance;
    wasm_trap_t *trap;
    wasm_func_t *func;
    // wasm_val_t args[2], results[1];
    // wasm_val_vec_t args_vec, results_vec;

public:
    WasmModule(const char *filename);
    ~WasmModule();
};