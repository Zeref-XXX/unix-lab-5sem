#include <stdio.h>
#include <unistd.h>
#include <sys/stat.h>

int main() {
    mkdir("myfolder", 0755);

    if (chdir("myfolder") < 0) {
        perror("chdir");
        return 1;
    }

    char path[100];
    getcwd(path, sizeof(path));

    printf("Current Directory: %s\n", path);
    return 0;
}
