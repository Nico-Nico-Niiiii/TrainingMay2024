/*
 * Author : Aditya Narayan Jha 
 * Binary to decimal converter
 * 
 * */


#include <stdio.h>
#include <string.h>

int main() {
    // Write C code here
    char binary[65];
    printf("\n Enter the binary number\n");
    scanf("%s",binary);
    int base=1;
    int decimal=0;
    int length = strlen(binary);
    for (int i = length-1;i>=0;i--){
        if(binary[i]=='1'){
            decimal+=base;
            }
        base *=2;
        };
    printf("\n the decimal no is %d", decimal );
    return 0;
    }
    
