#include <stdio.h>

int main() {
    FILE *f = fopen("output_p2.txt", "w");
    if (f == NULL) {
        printf("Error opening file!\n");
        return 1;
    }

    for (int i = 1; i <= 1000; i++) {
        if (i % 2 != 0) {
            fprintf(f, "%d\n", i);
        }
    }

    fclose(f);
    return 0;
}
