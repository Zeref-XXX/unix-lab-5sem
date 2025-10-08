#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Initial: PID = %d, PPID = %d\n", getpid(), getppid());

    fork();
    printf("After 1st fork: PID = %d, PPID = %d\n", getpid(), getppid());

    fork();
    printf("After 2nd fork: PID = %d, PPID = %d\n", getpid(), getppid());

    fork();
    printf("After 3rd fork: PID = %d, PPID = %d\n", getpid(), getppid());

    return 0;
}
