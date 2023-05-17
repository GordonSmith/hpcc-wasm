#include <memory>
#include <fstream>
#include <vector>

#include "wasm_export.h"

#define own

const char *const wasmFile = "/home/gordon/hpcc-wasm/guest/AssemblyScript/add/build/release.wasm";
const char *const wasmFile2 = "/home/gordon/hpcc-wasm/build/guest/cpp/bin/add.wasm";

std::vector<uint8_t> read_wasm_binary_to_buffer(const std::string &filename)
{
    std::ifstream file(filename, std::ios::binary | std::ios::ate);
    if (!file)
    {
        throw std::runtime_error("Failed to open file");
    }

    std::streamsize size = file.tellg();
    file.seekg(0, std::ios::beg);

    std::vector<uint8_t> buffer(size);
    if (!file.read(reinterpret_cast<char *>(buffer.data()), size))
    {
        throw std::runtime_error("Failed to read file");
    }

    return buffer;
}

struct WASMRuntime
{
    bool initialized = false;
    WASMRuntime() : initialized(wasm_runtime_init())
    {
    }
    ~WASMRuntime()
    {
        if (initialized)
        {
            wasm_runtime_destroy();
        }
    }
};

int main(int argc, const char *argv[])
{
    char error_buf[128];
    wasm_function_inst_t func;
    uint32_t stack_size = 8092, heap_size = 8092;

    /* initialize the wasm runtime by default configurations */
    WASMRuntime runtime;

    /* read WASM file into a memory buffer */
    auto buffer = read_wasm_binary_to_buffer(wasmFile2);

    /* add line below if we want to export native functions to WASM app */
    // wasm_runtime_register_natives(...);

    /* parse the WASM file from buffer and create a WASM module */
    std::unique_ptr<WASMModuleCommon, decltype(&wasm_runtime_unload)> module(wasm_runtime_load(buffer.data(), buffer.size(), error_buf, sizeof(error_buf)), &wasm_runtime_unload);

    /* create an instance of the WASM module (WASM linear memory is ready) */
    std::unique_ptr<WASMModuleInstanceCommon, decltype(&wasm_runtime_deinstantiate)> module_inst(wasm_runtime_instantiate(module.get(), stack_size, heap_size, error_buf, sizeof(error_buf)), &wasm_runtime_deinstantiate);

    /* lookup a WASM function by its name
   The function signature can NULL here */
    func = wasm_runtime_lookup_function(module_inst.get(), "sub", NULL);

    /* creat an execution environment to execute the WASM functions */
    // std::unique_ptr<wasm_exec_env_t, wasm_runtime_destroy_exec_env> exec_env = wasm_runtime_create_exec_env(module_inst, stack_size);
    std::unique_ptr<WASMExecEnv, decltype(&wasm_runtime_destroy_exec_env)> exec_env(wasm_runtime_create_exec_env(module_inst.get(), stack_size), &wasm_runtime_destroy_exec_env);
    // auto exec_env = wasm_runtime_create_exec_env(module_inst, stack_size);

    /* execute the WASM function with arguments (if any) */
    uint32_t addArgv[2];
    addArgv[0] = 11;
    addArgv[1] = 22;
    wasm_runtime_call_wasm(exec_env.get(), func, 2, addArgv);
    printf("add function return: %i\n", addArgv[0]);

    return 0;
}