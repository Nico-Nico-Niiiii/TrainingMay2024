#include <stdio.h>

int main() {
    int arr1[5] = {1, 2, 3, 4, 5};
    int arr2[7] = {3, 4, 5, 6, 7, 8, 9};
    int len1 = sizeof(arr1) / sizeof(arr1[0]);
    int len2 = sizeof(arr2) / sizeof(arr2[0]);
    int combined_len = len1 + len2;
    int arr3[combined_len];

    for (int i = 0; i < len1; i++) {
        arr3[i] = arr1[i];
    }

    for (int i = 0; i < len2; i++) {
        arr3[len1 + i] = arr2[i];
    }

    for (int i = 0; i < combined_len - 1; i++) {
        for (int j = 0; j < combined_len - i - 1; j++) {
            if (arr3[j] > arr3[j + 1]) {
                int temp = arr3[j];
                arr3[j] = arr3[j + 1];
                arr3[j + 1] = temp;
            }
        }
    }

    printf("Sorted combined array: ");
    for (int i = 0; i < combined_len; i++) {
        printf("%d ", arr3[i]);
    }
    printf("\n");

    return 0;
}

