const char *const wasmFile1 = "/home/gordon/hpcc-wasm/build/guest/JavaScript/componentize-js/hello.core.wasm";
const char *const wasmFile = "/home/gordon/hpcc-wasm/build/guest/cpp/bin/add.wasm";
const char *const wasmFile3 = "/home/gordon/hpcc-wasm/build/guest/AssemblyScript/build/release.wasm";
const char *const wasmFile4 = "/home/gordon/hpcc-wasm/build/guest/JavaScript/Javy/build/index.wasm";

#include <fstream>
#include <iostream>
#include <sstream>
#include <wasmtime.hh>

using namespace wasmtime;

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

int main()
{
    Engine engine;
    Store store(engine);

    std::cout << "Compiling module\n";
    auto wasm = read_wasm_binary_to_buffer(wasmFile);
    auto module = Module::compile(engine, wasm).unwrap();

    std::cout << "Create wasi\n";
    WasiConfig wasi;
    // wasi.inherit_argv();
    // wasi.inherit_env();
    // wasi.inherit_stdin();
    // wasi.inherit_stdout();
    // wasi.inherit_stderr();
    store.context().set_wasi(std::move(wasi)).unwrap();

    std::cout << "Linking\n";
    Linker linker(engine);
    linker.define_wasi().unwrap();

    std::cout << "Creating callback...\n";
    auto host_func = linker.func_wrap("global", "print",
                                      [](Caller caller, uint32_t msg, uint32_t msg_len)
                                      {

                                          // const uint8_t* data = memory.data();
                                          //     std::string str(reinterpret_cast<const char*>(data + msg), reinterpret_cast<const char*>(data + msg + msg_len));

                                          // auto memory = std::get<Memory>(*caller.get_export("memory"));
                                          // auto type = memory.type(caller.context());
                                          // auto data = memory.data(caller.context());
                                          // auto size = memory.size(caller.context());

                                          // std::string str(data[msg], data[msg] + msg_len);

                                          // Copy the string from the Wasm memory into the C++ string
                                          // const char *msg_ptr = reinterpret_cast<const char *>(data[msg]);
                                          // auto memory = std::get<Memory>(caller.get_export("memory")).unwrap();
                                          // auto xxx = memory[msg];
                                          // auto msg = memory.data(store)[msg];
                
        auto memory = std::get<Memory>(*caller.get_export("memory"));
        auto data = memory.data(caller.context());
        auto msg_ptr = (char *)&data[msg];
        std::string str(msg_ptr, msg_len);
        printf("print: %s\n", str.c_str()); })
                         .unwrap();

    // Once we've got that all set up we can then move to the instantiation
    // phase, pairing together a compiled module as well as a set of imports.
    // Note that this is where the wasm `start` function, if any, would run.
    std::cout << "Instantiating module...\n";
    Instance wasmInstance = linker.instantiate(store, module).unwrap();
    linker.define_instance(store, "linking", wasmInstance).unwrap();

    // std::cout << "Extracting memory...\n";
    // auto memory = std::get<Memory>(*wasmInstance.get(store, "memory"));

    std::cout << "Extracting add...\n";
    auto add = std::get<Func>(*wasmInstance.get(store, "add"));

    // And last but not least we can call it!
    std::cout << "Calling add(22, 11)...\n";
    std::cout << add.call(store, {22, 11}).unwrap()[0].i32() << "\n";

    std::cout << "Done\n";
}