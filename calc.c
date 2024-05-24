#include <stdio.h>

int main() {
    float num1, num2, res;
    char operand;

    printf("\nEnter the First Number: ");
    scanf("%f", &num1);
    
    printf("\nEnter the Second Number: ");
    scanf("%f", &num2);
    
    printf("\nEnter the operand from these options + - * /: ");
    scanf(" %c", &operand);
    // Calculate BMI
    
    // Provide advice based on BMI value
    if (operand == '+') {
        res= num1+num2;
        printf("\nThe sum of The numbers is %.2f", res);
    } else if (operand =='-') {
        res= num1-num2;
        printf("\nThe Difference of The numbers is %.2f", res);
    } else if (operand=='*') {
        res= num1*num2;
        printf("\nThe Multiplication of The numbers is %.2f", res);
    } else if (operand=='/') {
        res= num1/num2;
        printf("\nThe Division of The numbers is %.2f", res);
    }
    else {
        printf("Incorrect Operand entered");
    }

    return 0;
}

