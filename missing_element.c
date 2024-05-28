#include <stdio.h>

int main() {
    
    int size;
    printf("Enter the Size of the array\n");
    scanf("%d",&size);
    int arr[size];
    printf("Enter the %d elements in the array\n", size);
    for(int i=0; i<size; i++){
        printf("Enter the %d number\n", i);
        scanf("%d", &arr[i]);
    }
    
    for(int j=0;j<size-1;j++){
        if(arr[j+1]-arr[j]!=1){
            int n=arr[j+1];
            n=n-1;
            printf("The missing element is %d", n);
        }
    }
    // for(int i=0;i<size;i++){
    //     printf("%d", arr[i]);
    // }
    return 0;
}
