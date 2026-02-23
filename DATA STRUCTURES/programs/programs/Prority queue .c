#include<stdio.h>
#include<stdlib.h>

struct node {
    int data;
    int priority;
    struct node *next;
};

struct node *head = NULL;

void enqueue() {
    int value, priority;
    struct node *newnode, *temp = head;
    newnode = (struct node *)malloc(sizeof(struct node));
    
    printf("Enter value to the node:");
    scanf("%d",&value);
    printf("enter the priority to the node:");
    scanf("%d",&priority);
    
    
    newnode->data = value;
    newnode->priority = priority;
    newnode->next = NULL;
    
    if (head == NULL || newnode->priority < head->priority) {
        newnode->next = head;
        head = newnode;
    } else {
        while (temp->next != NULL && temp->next->priority <= newnode->priority) {
            temp = temp->next;
        }
        newnode->next = temp->next;
        temp->next = newnode;
    }
    printf("Node is inserted\n");
}

void dequeue() {
    if (head == NULL) {
        printf("List is empty\n");
    } else {
        struct node *temp = head;
        printf(" %d->%d\n", temp->data, temp->priority);
        head = head->next;
        free(temp);
        
    }
}

void display() {
    if (head == NULL) {
        printf("List is empty\n");
    } else {
        struct node *temp = head;
        while (temp != NULL) {
            printf("%d->%d ", temp->data, temp->priority);
            temp = temp->next;
        }
        
    }
}

int main() {
    int c;
    while (1) {
        printf("1. Enqueue\n2. Dequeue\n3. Display\n4. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &c);
        
        switch(c) {
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
                printf("Exiting program.\n");
                exit(0);
            default:
                printf("Invalid choice. Please try again.\n");
        }
    }
    
    return 0;
}

