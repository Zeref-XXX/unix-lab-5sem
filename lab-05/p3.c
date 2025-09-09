#include <stdio.h>
#include <stdbool.h>

bool isPrime(int n) {
    if (n <= 1) return false;
    for (int i = 2; i * i <= n; i++) {
        if (n % i == 0) return false;
    }
    return true;
}

int main() {
    FILE *f = fopen("output_p3.txt", "w");
    if (f == NULL) {
        printf("Error opening file!\n");
        return 1;
    }

    for (int i = 1; i <= 1000; i++) {
        if (isPrime(i)) {
            fprintf(f, "%d\n", i);
        }
    }

    fclose(f);
    return 0;
}
