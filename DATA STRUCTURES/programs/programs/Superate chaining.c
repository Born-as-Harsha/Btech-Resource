#include <stdio.h>
#include <stdlib.h>
#define size 10

struct node {
    int data;
    struct node *next;
};

struct node *chain[size];

void init() {
    int i;
    for(i = 0; i < size; i++)
        chain[i] = NULL;
}

void insert(int value) {
    struct node *newNode = (struct node *)malloc(sizeof(struct node));
    newNode->data = value;
    newNode->next = NULL;
 
    int key = value % size;

    if(chain[key] == NULL) {
        chain[key] = newNode;
    } else {
        struct node *temp = chain[key];
        while(temp->next != NULL) {
            temp = temp->next;
        }
        temp->next = newNode;
    }
}

void print() {
    int i;
    for(i = 0; i < size; i++) {
        struct node *temp = chain[i];
        printf("chain[%d] --> ", i);
        while(temp != NULL) {
            printf("%d --> ", temp->data);
            temp = temp->next;
        }
        printf("NULL\n");
    }
}

void search(int value) {
    int key = value % size;
    struct node *temp = chain[key];

    while(temp != NULL) {
        if(temp->data == value) {
            printf("\nElement %d found at chain[%d].\n", value, key);
            return;
        }
        temp = temp->next;
    }

    printf("\nElement %d not found in the hash table.\n", value);
}

int main() {
    init();
    insert(7);
    insert(0);
    insert(3);
    insert(10);
    insert(4);
    insert(5);r

    print();

    search(10); 
    search(8); 

    return 0;
}

