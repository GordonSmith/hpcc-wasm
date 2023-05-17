#include <memory>
#include <fstream>
#include <vector>

#include "wasm_export.h"

#define own

const char *const wasmFile = "/home/gordon/hpcc-wasm/guest/AssemblyScript/build/release.wasm";
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

void print(wasm_exec_env_t exec_env, char *msg, uint32_t msg_len)
{
    std::string s = msg;
    printf("print: %s\n", s.c_str());
}

static NativeSymbol native_symbols[] = {
    {"print", (void *)print, "(*~)"},
};

int main(int argc, const char *argv[])
{
    char error_buf[128];
    uint32_t stack_size = 8092, heap_size = 8092;

    WASMRuntime runtime;

    int n_native_symbols = sizeof(native_symbols) / sizeof(NativeSymbol);
    wasm_runtime_register_natives("$root", native_symbols, n_native_symbols);

    auto buffer = read_wasm_binary_to_buffer(wasmFile2);
    std::unique_ptr<WASMModuleCommon, decltype(&wasm_runtime_unload)> module(wasm_runtime_load(buffer.data(), buffer.size(), error_buf, sizeof(error_buf)), &wasm_runtime_unload);
    std::unique_ptr<WASMModuleInstanceCommon, decltype(&wasm_runtime_deinstantiate)> module_inst(wasm_runtime_instantiate(module.get(), stack_size, heap_size, error_buf, sizeof(error_buf)), &wasm_runtime_deinstantiate);

    wasm_function_inst_t addFunc = wasm_runtime_lookup_function(module_inst.get(), "add", NULL);
    wasm_function_inst_t subFunc = wasm_runtime_lookup_function(module_inst.get(), "sub", NULL);

    /* creat an execution environment to execute the WASM functions */
    std::unique_ptr<WASMExecEnv, decltype(&wasm_runtime_destroy_exec_env)> exec_env(wasm_runtime_create_exec_env(module_inst.get(), stack_size), &wasm_runtime_destroy_exec_env);

    /* execute the WASM function with arguments (if any) */
    uint32_t addArgv[2];
    addArgv[0] = 11;
    addArgv[1] = 22;
    wasm_runtime_call_wasm(exec_env.get(), addFunc, 2, addArgv);
    printf("add function return: %i\n", addArgv[0]);
    uint32_t subArgv[2];
    subArgv[0] = 100;
    subArgv[1] = 1;
    wasm_runtime_call_wasm(exec_env.get(), subFunc, 2, subArgv);
    printf("sub function return: %i\n", subArgv[0]);

    return 0;
}