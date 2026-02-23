#include<stdio.h>

void swap(int *x, int *y)
{
    int temp = *x;
    *x = *y;
    *y = temp;
}

int main()
{
    int a[100], n, gap, i, j;
    printf("Enter n value: ");
    scanf("%d", &n);
    printf("enter the elements in the array:");
    for(i = 0; i < n; i++)
    {
        scanf("%d", &a[i]);
    }
    for(gap = n / 2; gap >= 1; gap /= 2)
    {
        for(j = gap; j < n; j++)
        {
            for(i = j - gap; i >= 0; i -= gap)
            {
                if(a[i + gap] > a[i])
                {
                    break;
                }
                else
                {
                    swap(&a[i + gap], &a[i]);
                }
            }
        }
    }
    for(i = 0; i < n; i++)
    {
        printf("%d ", a[i]);
    }
    return 0;
}

