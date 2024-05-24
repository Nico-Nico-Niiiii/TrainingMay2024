#include <stdio.h>

int main() {
    float weight, height, BMI;

    printf("Enter the weight in KG: ");
    scanf("%f", &weight);
    
    printf("Enter the height in Metre: ");
    scanf("%f", &height);
    
    // Calculate BMI
    BMI = weight / (height * height);
    
    // Provide advice based on BMI value
    if (BMI > 30) {
        printf("You are suffering from Obesity. Please take care of your health. Your BMI is %.2f\n", BMI);
    } else if (BMI >= 25 && BMI <= 29.9) {
        printf("You are overweight. Your BMI is %.2f\n", BMI);
    } else if (BMI >= 18.5 && BMI <= 24.9) {
        printf("You are healthy. Your BMI is %.2f\n", BMI);
    } else {
        printf("You are underweight. Your BMI is %.2f\n", BMI);
    }

    return 0;
}

