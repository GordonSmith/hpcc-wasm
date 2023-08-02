#include "test.h"

#include <string>

std::string s;
void test_echo(test_string_t *msg, test_string_t *ret)
{
    s = msg->ptr;
    s += ":echo";

    test_string_set(ret, s.c_str());
    test_print(ret);
}

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
