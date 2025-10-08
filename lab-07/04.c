#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid == 0) {
        for (int i = 1; i <= 5; i++) {
            printf("Child printing: %d\n", i);
            sleep(1);
        }
    } else {
        wait(NULL);
        printf("Parent: Child finished execution.\n");
    }
    return 0;
}
