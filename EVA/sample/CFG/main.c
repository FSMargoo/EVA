#include <stdio.h>
#include <stdlib.h>

/* Compute factorial of n */
int factorial(int n) {
    if (n <= 1) {
        return 1;
    }
    return n * factorial(n - 1);
}

int main(void) {
    int n;
    printf("Enter a non-negative integer: ");
    if (scanf("%d", &n) != 1 || n < 0) {
        fprintf(stderr, "Invalid input! Using n=3.\n");
        n = 3;
    }

    /* Simple recursion */
    int fact = factorial(n);
    printf("Factorial of %d is %d\n", n, fact);

    /* For loop */
    printf("Numbers from 0 to %d:\n", n);
    for (int i = 0; i <= n; i++) {
        if (i % 2 == 0) {
            printf("%d is even\n", i);
        } else {
            printf("%d is odd\n", i);
        }
    }

    /* Switch-case */
    int code = n % 4;
    printf("Switch on n mod 4 (=%d): ", code);
    switch (code) {
        case 0:
            printf("Zero\n");
            break;
        case 1:
            printf("One\n");
            break;
        case 2:
            printf("Two\n");
            break;
        default:
            printf("Three\n");
    }

    printf("Program complete.\n");
    return EXIT_SUCCESS;
}