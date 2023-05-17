#include "wasm_c_api.h"

extern "C"
{
    void print_mutability(wasm_mutability_t mut);
    void print_limits(const wasm_limits_t *limits);
    void print_valtype(const wasm_valtype_t *type);
    void print_valtypes(const wasm_valtype_vec_t *types);
    void print_externtype(const wasm_externtype_t *type);
    void print_name(const wasm_name_t *name);
}