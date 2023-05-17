#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>

#include "reflect.hpp"

#define own

extern "C" void print_mutability(wasm_mutability_t mut)
{
    switch (mut)
    {
    case WASM_VAR:
        printf("var");
        break;
    case WASM_CONST:
        printf("const");
        break;
    }
}

extern "C" void print_limits(const wasm_limits_t *limits)
{
    if (!limits)
    {
        printf("unknown limits");
        return;
    }
    printf("%ud", limits->min);
    if (limits->max < wasm_limits_max_default)
        printf(" %ud", limits->max);
}

extern "C" void print_valtype(const wasm_valtype_t *type)
{
    switch (wasm_valtype_kind(type))
    {
    case WASM_I32:
        printf("i32");
        break;
    case WASM_I64:
        printf("i64");
        break;
    case WASM_F32:
        printf("f32");
        break;
    case WASM_F64:
        printf("f64");
        break;
    case WASM_ANYREF:
        printf("anyref");
        break;
    case WASM_FUNCREF:
        printf("funcref");
        break;
    }
}

extern "C" void print_valtypes(const wasm_valtype_vec_t *types)
{
    bool first = true;
    for (size_t i = 0; i < types->size; ++i)
    {
        if (first)
        {
            first = false;
        }
        else
        {
            printf(" ");
        }
        print_valtype(types->data[i]);
    }
}

extern "C" void print_externtype(const wasm_externtype_t *type)
{
    if (!type)
    {
        printf("unknown extern type");
        return;
    }
    switch (wasm_externtype_kind(type))
    {
    case WASM_EXTERN_FUNC:
    {
        const wasm_functype_t *functype =
            wasm_externtype_as_functype_const(type);
        printf("func ");
        print_valtypes(wasm_functype_params(functype));
        printf(" -> ");
        print_valtypes(wasm_functype_results(functype));
    }
    break;
    case WASM_EXTERN_GLOBAL:
    {
        const wasm_globaltype_t *globaltype =
            wasm_externtype_as_globaltype_const(type);
        printf("global ");
        print_mutability(wasm_globaltype_mutability(globaltype));
        printf(" ");
        print_valtype(wasm_globaltype_content(globaltype));
    }
    break;
    case WASM_EXTERN_TABLE:
    {
        const wasm_tabletype_t *tabletype =
            wasm_externtype_as_tabletype_const(type);
        printf("table ");
        print_limits(wasm_tabletype_limits(tabletype));
        printf(" ");
        print_valtype(wasm_tabletype_element(tabletype));
    }
    break;
    case WASM_EXTERN_MEMORY:
    {
        const wasm_memorytype_t *memorytype =
            wasm_externtype_as_memorytype_const(type);
        printf("memory ");
        print_limits(wasm_memorytype_limits(memorytype));
    }
    break;
    }
}

extern "C" void print_name(const wasm_name_t *name)
{
    if (!name)
    {
        printf("unknown name");
        return;
    }
    printf("\"%.*s\"", (int)name->size, name->data);
}
