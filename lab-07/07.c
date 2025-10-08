#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid == 0) {
        printf("Child process exiting...\n");
    } else {
        sleep(5);
        printf("Parent: Now calling wait()\n");
        wait(NULL);
    }
    return 0;
}
