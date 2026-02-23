#include<stdio.h>
#define SIZE 5
int stack[SIZE];
int top =-1;
void push();
void pop();
void peek();
void display();

int main(){
    int choice;
    while(1){
        printf("1.push 2.pop 3.peek 4.display 5.exit \n");
        printf("Enter your choice = ");
        scanf("%d",&choice);
        if(choice==1)
        push();
        else if(choice==2)
        pop();
        else if(choice==3)
        peek();
        else if(choice==4)
        display();
        else if(choice==5)
        break;
        else
        printf("Invalid choice.Please try again\n");
    }
    return 0;
}

void push(){
    int value;
    if(top==SIZE-1){
        printf("Stack is overflow!\n");
    }else{
        printf("Enter value = ");
        scanf("%d",&value);top++;
        stack[top]=value;
    }
}

void pop(){
    if(top==-1){
        printf("Stack is empty.\n");
    }else{
        printf("Popped value is %d\n",stack[top]);
        top--;
    }
}

void peek(){
    if(top==-1){
        printf("Stack is empty.\n");
    }else{
        printf("Top element is %d\n",stack[top]);
    }
}

void display(){
    if(top==-1){
        printf("Stack is empty.\n");
    }else{
        printf("Stack elements are : \n");
        for(int i=0;i<=top;i++){
            printf("%d\n",stack[i]);
        }
    }
}
