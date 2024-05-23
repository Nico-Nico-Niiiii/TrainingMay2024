/*
 * Area of circle program
 * Author : Aditya 
 * DOC ; 23rd may 2024
 * */

#include<stdio.h>
#define PI (22/7)
int main(){
	float r;
	float area;
	printf("Enter the radius");
	scanf("%f",&r);
	area=PI*r*r;
	printf("The area is %f ",area);
	return 0;



}


