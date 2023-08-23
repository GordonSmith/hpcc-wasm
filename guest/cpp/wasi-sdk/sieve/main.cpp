#include <edge.h>

#include <string>
#include <iostream>

//  Sieve function
std::string sieve(int n)
{
    std::string result;
    bool prime[n + 1];
    memset(prime, true, sizeof(prime));

    for (int p = 2; p * p <= n; p++)
    {
        if (prime[p] == true)
        {
            for (int i = p * p; i <= n; i += p)
                prime[i] = false;
        }
    }

    for (int p = 2; p <= n; p++)
        if (prime[p])
            result += std::to_string(p) + " ";

    return result;
}

void edge_sieve(uint32_t n, edge_string_t *ret)
{
    edge_string_dup(ret, sieve(n).c_str());
}

int main(int argc, char *argv[])
{
    // Get the input, default to 100
    int n = 100;
    if (argc > 1)
    {
        n = atoi(argv[1]);
    }

    // Call the sieve function
    std::string result = sieve(n);

    // Return the result
    std::cout << result << std::endl;

    return 0;
}
