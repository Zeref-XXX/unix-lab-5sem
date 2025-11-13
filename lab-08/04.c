#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <ctype.h>

int main() {
    int fd = open("input.txt", O_RDONLY);
    if (fd < 0) {
        perror("open");
        return 1;
    }

    char ch;
    int chars = 0, words = 0, lines = 0;
    int inWord = 0;

    while (read(fd, &ch, 1) > 0) {
        chars++;

        if (ch == '\n')
            lines++;

        if (isspace(ch))
            inWord = 0;
        else if (!inWord) {
            inWord = 1;
            words++;
        }
    }

    close(fd);

    printf("Characters: %d\nWords: %d\nLines: %d\n", chars, words, lines);
    return 0;
}
