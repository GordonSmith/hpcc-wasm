#include "wit/test.h"

uint32_t test_add(uint32_t a, uint32_t b)
{
    test_string_t msg;
    test_string_set(&msg, "test_add");
    test_print(&msg);
    return a + b;
}

uint32_t test_sub(uint32_t a, uint32_t b)
{
    test_string_t msg;
    test_string_set(&msg, "test_sub");
    test_print(&msg);
    return a - b;
}
