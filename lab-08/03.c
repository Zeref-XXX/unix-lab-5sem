#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Usage: ./copy src dest\n");
        return 1;
    }

    int fs = open(argv[1], O_RDONLY);
    if (fs < 0) {
        perror("Source file error");
        return 1;
    }

    int fd = open(argv[2], O_CREAT | O_WRONLY | O_TRUNC, 0644);

    char buffer[1024];
    int n;

    while ((n = read(fs, buffer, sizeof(buffer))) > 0) {
        write(fd, buffer, n);
    }

    close(fs);
    close(fd);
    return 0;
}
