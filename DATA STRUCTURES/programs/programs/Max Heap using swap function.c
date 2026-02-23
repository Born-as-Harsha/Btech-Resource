#include<stdio.h>

// Function to swap two integers
void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

void heapify(int a[], int n, int i) {
    int largest = i;
    int l = i * 2 + 1;
    int r = i * 2 + 2;
    
    if (l < n && a[l] > a[largest])  
        largest = l;
    if (r < n && a[r] > a[largest])
        largest = r;
    if (largest != i) {
        swap(&a[i], &a[largest]);  // Using swap function
        heapify(a, n, largest);
    }
}

void heapsort(int a[], int n) {
    for (int i = (n / 2) - 1; i >= 0; i--)
        heapify(a, n, i);
    for (int i = n - 1; i >= 0; i--) {
        swap(&a[0], &a[i]);  // Using swap function
        heapify(a, i, 0);
    }
}

void printarray(int a[], int n) {  
    for (int i = 0; i < n; i++) {
        printf("%d ", a[i]);  
    }
    printf("\n");
}

int main() {
    int a[100], n;
    printf("Enter the number of elements: ");
    scanf("%d", &n);
    printf("Enter the elements: ");
    for (int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }
    printf("Original array: ");
    printarray(a, n);
    heapsort(a, n);
    printf("Sorted array: ");
    printarray(a, n);
    return 0;
}
