#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

int main() {
    int fd;
    char buffer[100];

    printf("Enter a string: ");
    scanf("%[^\n]", buffer);

    fd = open("output.txt", O_CREAT | O_WRONLY | O_TRUNC, 0644);

    if (fd < 0) {
        perror("open");
        return 1;
    }

    write(fd, buffer, sizeof(buffer));
    close(fd);

    printf("File created and data written.\n");
    return 0;
}
