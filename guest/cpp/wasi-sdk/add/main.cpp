#include "main.hpp"

#include <stdio.h>
#include <string.h>
#include <string>

extern "C" int sub(int a, int b)
{
    return a - b;
}

extern "C" int add(int a, int b)
{
    return a + b;
}
