//  output "hello world" and list the files in the root folder  ---

#include <stdio.h>
#include <dirent.h>

int main(void)
{
    printf("hello world\n\n");
    DIR *d;
    struct dirent *dir;
    d = opendir("/");
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
