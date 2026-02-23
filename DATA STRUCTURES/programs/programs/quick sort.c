#include<stdio.h>

void quicksort(int a[], int start, int end)
{
    int i, j, temp, pivot;
    i = start;
    j = end;
    pivot = start;
    while(i<j)
    {
    while (i < j)
    {
        while (a[i] <= a[pivot] && i <= end)
        
            i++;
        
        while (a[j] > a[pivot] && j >= start)
        
            j--;
        
        if (i < j)
        {
            temp = a[i];
            a[i] = a[j];
            a[j] = temp;
        }
    }
    temp = a[j];
    a[j] = a[pivot];
    a[pivot] = temp;
        quicksort(a, start, j - 1);
        quicksort(a, j + 1, end);
   }
}

int main()
{
    int n, a[100], i;
    printf("Enter the n value: ");
    scanf("%d", &n);
    printf("Enter the elements in the array: ");
    for (i = 0; i < n; i++)
    {
        scanf("%d", &a[i]);
    }
    quicksort(a, 0, n - 1);
    printf("Array elements after the sorting: ");
    for (i = 0; i < n; i++)
    {
        printf("%d ", a[i]);
    }
    return 0;
}

