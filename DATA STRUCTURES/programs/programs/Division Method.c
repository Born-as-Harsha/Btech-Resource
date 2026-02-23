#include<stdio.h>
int main()
{
    int M, i, k, key;
    printf("Enter the table size: ");
    scanf("%d", &M);
    int a[M];  
    for(i = 0; i < M; i++)  
    {
        a[i] = -1;
    }

    printf("Enter the number of keys: ");
    scanf("%d", &k);
    for(i = 0; i < k; i++)
    {
        printf("Enter key %d: ", i+1);
        scanf("%d", &key);
        int x = key % M; 
        if(a[x] == -1)  
        {
            a[x] = key; 
        }
        else  
        {
            printf("Collision occurred for key %d at index %d\n", key, x);
        }
    }
    printf("Hash table content:\n");
    for(i = 0; i < M; i++)
    {
        printf("%2d ", a[i]);
    }
    printf("\n");

    return 0;
}

