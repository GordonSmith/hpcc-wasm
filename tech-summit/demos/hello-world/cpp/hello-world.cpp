#include <iostream>
#include <string>

int main(int argc, char *argv[])
{
    if (argc < 3)
    {
        std::cout << "Insufficient arguments provided. Usage: ./hello-world <input1> <input2>\n";
        return 1;
    }

    std::string input1 = argv[1];
    std::string input2 = argv[2];

    std::string concatenated = input1 + "-" + input2;
    std::cout << concatenated << std::endl;

    return 0;
}
