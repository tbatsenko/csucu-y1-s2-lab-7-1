#include <stdio.h>
#include <stdlib.h>

int main() {
    /* code */
    int n;
    int m;
    printf("Enter the heigth:\n");
    scanf("%d", &n);
    printf("Enter the width:\n");
    scanf("%d", &m);

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            if (j % 2 == 1 || (i == 0 || i == n - 1 )) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }
    return 0;
}
