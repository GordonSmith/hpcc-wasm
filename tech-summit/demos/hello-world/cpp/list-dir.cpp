#include <iostream>
#include <dirent.h>

int main(int argc, char *argv[])
{
    if (argc < 2)
    {
        std::cout << "Insufficient arguments provided. Usage: ./list-dir <input1>\n";
        return 1;
    }

    //  List all the folders in the root folder using stdio.h
    DIR *d;
    struct dirent *dir;
    d = opendir(argv[1]);
    if (d)
    {
        while ((dir = readdir(d)) != NULL)
        {
            printf("%s\n", dir->d_name);
        }
        closedir(d);
    }

    return 0;
}
