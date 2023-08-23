#include <stdio.h>
#include <stdlib.h>

int call_count = 1;

int main()
{
    printf("content-type: text/plain\n\n");
    printf("Hello from %s\n", getenv("SERVER_SOFTWARE"));
    printf("Call Count: %d\n", call_count++);
}
