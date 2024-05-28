//Write a program that prompts the user for a positive integer and then computes the sum of all the digits of the number. For example, if the user enters 2784, then the program reports 21. If the user enters 59, then the program reports 14. The program should work for any number having one to ten digits.
#include <stdio.h>

int main() {
    int num;
    printf("Enter the number: ");
    scanf("%d", &num);

    int sum = 0;
    while (num > 0) {
        sum += num % 10; // Add the last digit to sum
        num /= 10; // Remove the last digit from the number
    }

    printf("Sum of digits is %d\n", sum);

    return 0;
}

