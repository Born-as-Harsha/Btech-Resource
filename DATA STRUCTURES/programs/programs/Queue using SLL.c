#include <stdio.h>
#include <stdlib.h>

struct node {
    int data;
    struct node* next;
};

struct node* front = NULL;
struct node* rear = NULL;


void enqueue() {
    int value;
    struct node* newnode;
    
    newnode = (struct node*)malloc(sizeof(struct node));
    printf("Enter data to the node: ");
    scanf("%d", &value);
    
    newnode->data = value;
    newnode->next = NULL;
    
    if (rear == NULL) {
        front = rear = newnode;
    } else {
        rear->next = newnode;
        rear = newnode;
    }
}


void dequeue() {
    if (front == NULL) {
        printf("QUEUE is empty\n");
    } else {
        struct node* temp = front;
        printf("Dequeued element: %d\n", front->data);
        front = front->next;
        free(temp);
        
        if (front == NULL) {
            rear = NULL; 
        }
    }
}


void display() {
    struct node* temp = front;
    if (front == NULL) {
        printf("QUEUE is empty\n");
    } else {
        printf("Queue elements: ");
        while (temp != NULL) {
            printf("%d ", temp->data);
            temp = temp->next;
        }
        printf("\n");
    }
}

int main() {
    int choice;
    
    while (1) {
        printf("\nEnter your choice:\n");
        printf("1. Enqueue\n");
        printf("2. Dequeue\n");
        printf("3. Display\n");
        printf("4. Exit\n");
        scanf("%d", &choice);
        
        switch (choice) {
            case 1:
                enqueue();
                break;
            case 2:
                dequeue();
                break;
            case 3:
                display();
                break;
            case 4:
                exit(0);
            default:
                printf("Invalid choice. Please try again.\n");
        }
    }

    return 0;
}

