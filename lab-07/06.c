#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid == 0) {
        sleep(3);
        printf("Child: My PID = %d, My PPID (after parent exit) = %d\n", getpid(), getppid());
    } else {
        printf("Parent exiting...\n");
    }
    return 0;
}
