#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include<sys/wait.h>

int main() {
    int a = 5, b = 10;
    pid_t pid = fork();

    if (pid == 0) {
        char str1[10], str2[10];
        sprintf(str1, "%d", a);
        sprintf(str2, "%d", b);
        execlp("./child", "child", str1, str2, NULL);
    } else {
        printf("Parent: Passing numbers %d and %d to child.\n", a, b);
    }
    return 0;
}
