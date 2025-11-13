#include <stdio.h>
#include <unistd.h>

int main() {
    if (unlink("delete_me.txt") == 0)
        printf("File deleted.\n");
    else
        perror("unlink");

    return 0;
}
