#include<stdio.h>

void insertionsort(int arr[], int n) {
	int i;
    for ( i = 1; i < n; i++) {
        int temp = arr[i];
        int j = i - 1;
        while (j >= 0 && arr[j] > temp) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = temp;
    }
}

void printArray(int arr[], int n) {
	int i;
    printf("Elements after sorting: ");
    for ( i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main() {
    int arr[100], n,i;
    printf("Enter the number of elements (n): ");
    scanf("%d", &n);
    printf("Enter the elements: ");
    for (i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }
    
    insertionsort(arr, n);
    printArray(arr, n);
    return 0;
}
