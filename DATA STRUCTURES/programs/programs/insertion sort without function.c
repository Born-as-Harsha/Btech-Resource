#include<stdio.h>

int main() {
    int arr[100], n,i;

    printf("Enter the number of elements (n): ");
    scanf("%d", &n);
    
    printf("Enter the elements: ");
    for ( i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }
    
    for ( i = 1; i < n; i++) {
        int temp = arr[i];
        int j = i - 1;
        
        while (j >= 0 && arr[j] > temp) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = temp;
    }

    printf("Elements after sorting: ");
    for (i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    return 0;
}

