#include <stdio.h>
#include <stdlib.h>

__attribute__((__export_name__("add"))) 
int add(int a, int b)
{
    return a + b;
}

int main(int argc, char *argv[])
{
    printf("Hello World!\n%i\n\n", add(strtol(argv[1], NULL, 10), strtol(argv[2], NULL, 10)));
    return 0;
}