#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
    pid_t pid = fork();

    if (pid < 0) {
        printf("Fork failed!\n");
    } 
    else if (pid == 0) {
        printf("Child Process:\nPID = %d, PPID = %d\n", getpid(), getppid());
    } 
    else {
        printf("Parent Process:\nPID = %d, PPID = %d\n", getpid(), getppid());
    }
    return 0;
}
