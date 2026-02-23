#include <stdio.h>

void merge(int a[], int low, int mid, int high, int b[])
{
    int i,j,k;
    i = low;
    j = mid + 1;
    k = low;
    
    
    while (i <= mid && j <= high) 
    {
        if (a[i] <= a[j])
        {
            b[k] = a[i];
            i++;
        }
        else
        {
            b[k] = a[j];
            j++;
        }
        k++;
    }

    while (i <= mid)
    {
        b[k] = a[i];
        i++;
        k++;
    }

    while (j <= high) 
    {
        b[k] = a[j];
        j++;
        k++;
    }

    for (k = low; k <= high; k++) 
    {
        a[k] = b[k];
    }
}

void merge_sort(int a[], int low, int high, int b[]) 
{
    if (low < high) 
    {
        int mid = (low+ high) / 2;
        merge_sort(a, low, mid, b);
        merge_sort(a, mid + 1, high, b);
        merge(a, low, mid, high, b);
    }
}

int main() {
    int n,i;
    printf("Enter the number of elements: ");
    scanf("%d", &n);

    int a[n], b[n];
    printf("Enter the elements: ");
    for ( i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }

    merge_sort(a, 0, n - 1, b);

    printf("Sorted array: ");
    for ( i = 0; i < n; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n");

    return 0;
}
