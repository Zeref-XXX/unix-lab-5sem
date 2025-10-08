#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid == 0) {
        execlp("ls", "ls", "-l", NULL);
        printf("This won't print if execlp succeeds.\n");
    } else {
        wait(NULL);
        printf("Parent: Child executed ls command.\n");
    }
    return 0;
}
