#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

int main() {
    int fd = open("output.txt", O_WRONLY | O_APPEND);

    if (fd < 0) {
        perror("open");
        return 1;
    }

    char buffer[100];
    printf("Enter text to append: ");
    scanf("%[^\n]", buffer);

    write(fd, buffer, sizeof(buffer));
    close(fd);

    printf("Text appended.\n");
    return 0;
}
