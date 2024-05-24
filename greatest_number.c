#include <stdio.h>

int main() {
    // Write C code here
int a,b,c;
printf("Enter Three numbers to match\n");
scanf("%d%d%d", &a,&b,&c);

if(a>b & a>c){
    printf("\nThe largest number is %d", a);
    }
else if(b>a & b>c){
    printf("\nThe largest number is %d", b);
}
else{
    printf("\nThe largest number is %d", c);
}

return 0;
}
