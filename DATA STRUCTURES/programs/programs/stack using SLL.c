#include <stdio.h>
#include <stdlib.h>

struct node {
    int data;
    struct node* next;
};

struct node* top = NULL; 


void push() {
    int value;
    struct node* newnode;
    newnode = (struct node*)malloc(sizeof(struct node));
    printf("Enter the data to the node: ");
    scanf("%d", &value);
    newnode->data = value;
    newnode->next = NULL;
    
    if (top == NULL) {
        top = newnode;
    } else {
        newnode->next = top;
        top = newnode;
    }
}


void pop() {
    struct node* temp;
    if (top == NULL) {
        printf("Stack is empty\n");
    } else {
        temp = top;
        printf("Popped element: %d\n", top->data);
        top = top->next;
        free(temp);
    }
}


void peek() {
    if (top != NULL) {
        printf("Top element: %d\n", top->data);
    } else {
        printf("Stack is empty\n");
    }
}


void display() {
    struct node* temp = top;
    if (top == NULL) {
        printf("Stack is empty\n");
    } else {
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
        printf("1. Push\n");
        printf("2. Pop\n");
        printf("3. Peek\n");
        printf("4. Display\n");
        printf("5. Exit\n");
        scanf("%d", &choice);
        
        switch (choice) {
            case 1:
                push();
                break;
            case 2:
                pop();
                break;
            case 3:
                peek();
                break;
            case 4:
                display();
                break;
            case 5:
                exit(0);
            default:
                printf("Invalid choice. Please try again.\n");
        }
    }

    return 0;
}

