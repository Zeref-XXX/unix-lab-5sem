#include <stdio.h>
#include <sys/stat.h>
#include <unistd.h>

int main() {
    struct stat s;

    if (stat("input.txt", &s) < 0) {
        perror("stat");
        return 1;
    }

    printf("Size: %ld bytes\n", s.st_size);
    printf("Permissions: %o\n", s.st_mode & 0777);
    printf("Owner ID: %d\n", s.st_uid);
    printf("Group ID: %d\n", s.st_gid);
    printf("Last Modified: %ld\n", s.st_mtime);

    return 0;
}
