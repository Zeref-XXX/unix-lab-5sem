#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

int main() {
    int fd1 = open("dupfile.txt", O_CREAT | O_WRONLY | O_TRUNC, 0644);
    if (fd1 < 0) {
        perror("open");
        return 1;
    }

    int fd2 = dup(fd1); // duplicate descriptor

    write(fd1, "Written via fd1\n", 16);
    write(fd2, "Written via fd2\n", 16);

    close(fd1);
    close(fd2);

    return 0;
}
