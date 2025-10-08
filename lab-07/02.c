#include <stdio.h>
#include <unistd.h>

int main() {
    fork();
    fork();
    fork();
    printf("Hello from process PID = %d\n", getpid());
    return 0;
}
