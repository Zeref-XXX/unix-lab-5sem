#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

int main() {
    int fd;
    char buffer[200];

    fd = open("input.txt", O_RDONLY);

    if (fd < 0) {
        perror("File not found");
        return 1;
    }

    int n = read(fd, buffer, sizeof(buffer));
    write(1, buffer, n); // write to stdout

    close(fd);
    return 0;
}
