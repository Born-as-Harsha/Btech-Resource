#include <stdio.h>
#include <stdlib.h>

#define size 10

int h[size] = {-1};  

void insert() {
    int key, index, i, hkey;
    printf("\nEnter a value to insert into the hash table: ");
    scanf("%d", &key);
    hkey = key % size;

    
    for (i = 0; i < size; i++) {
        index = (hkey + i * i) % size; 
        if (h[index] == -1) {  
            h[index] = key;
            printf("Element %d inserted at index %d\n", key, index);
            return;
        }
    }

    
    printf("\nElement cannot be inserted, hash table is full.\n");
}

void display() {
    int i;
    printf("\nElements in the hash table are:\n");
    for (i = 0; i < size; i++) {
        if (h[i] != -1)  
            printf("At index %d: Value = %d\n", i, h[i]);
        else
            printf("At index %d: Value = Empty\n", i);  
    }
}

int main() {
    int opt;
    while (1) {
        printf("\nPress 1. Insert\t 2. Display \t3. Exit\n");
        scanf("%d", &opt);
        switch (opt) {
            case 1:
                insert();
                break;
            case 2:
                display();
                break;
            case 3:
                exit(0);
            default:
                printf("Invalid option\n");
        }
    }
    return 0;
}

