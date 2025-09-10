#include <conio.h>
int main() {
    FILE *f = fopen("output_p1.txt", "w");
    if (f == NULL) {
        printf("Error opening file!\n");
        return 1;
    }

    for (int i = 1; i <= 1000; i++) {
        fprintf(f, "%d^2 = %d\n", i, i * i);
    }

    fclose(f);
    return 0;
}
