#include <stdio.h>

int main() {
    int n;
    printf("Enter the number of elements in the array: ");
    scanf("%d", &n);
    int arr[n];
    printf("Enter %d integers:\n", n);
    for(int i = 0; i < n; i++) {
        printf("Element %d: ", i + 1);
        scanf("%d", &arr[i]);
    }
    
    // Remove duplicate values
    int unique_c=0;
    
    for(int i=0; i<n;i++){
        int duplicate=0;
        for(int j=0; j<unique_c;j++){
            if(arr[i]==arr[j]){
                printf("this loop ran\n");
                duplicate=1;
                break;
            }
                
        }
        if(!duplicate){
                arr[unique_c]=arr[i];
                unique_c++;
            }

    }
    printf("Array after duplicate values are removed:\n");
    for(int i = 0; i <unique_c; i++) {
    printf(" %d ", arr[i]);
}
    
    return 0;
}


