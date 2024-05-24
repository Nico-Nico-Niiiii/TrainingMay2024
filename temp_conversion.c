// Online C compiler to run C program online
#include <stdio.h>

int main() {
    printf("Press 1 to convert from Fahrenheit (F) to Celsius (C)\n");
    printf("Press 2 to convert from Celsius (C) to Fahrenheit (F)\n");
    char option;
    scanf(" %c",&option);
    
    float temp,res;
    
    if(option=='1'){
        printf("Enter the temperature\n");
        scanf("%f", &temp);
        res=(temp-32)/1.8;
        printf("The Converted temperature in Celsius is %f",res);
    }
    else if (option=='2'){
        printf("Enter the temperature\n");
        scanf("%f", &temp);
        res=(temp*1.8)+32;
        printf("The Converted temperature in Fahrenheit is %f",res);
    }
    else{
        printf("\nThe option provided is wrong");
    }
    return 0;
}
