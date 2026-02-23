 #include <stdio.h>
#include <ctype.h>
#include <string.h>

char stack[20];
int top = -1;

void push(char x) {   
    top=top+1;
    stack[top] = x;
}

char pop() {
    if (top == -1)
        return '$';
    return stack[top--];
}

int priority(char x) {
    if (x == '^')
        return 2;
    else if (x == '/' || x == '*' || x == '%')
        return 1;
    else if (x == '+' || x == '-')
        return 0;
    else
        return -1; 
}

int main() {
    char exp[50], x;
    int i, len;

    printf("Enter the expression: ");
    scanf("%s", exp);
    len = strlen(exp);

    for (i = 0; i < len; i++) {   
        if (isalnum(exp[i])) 
            printf("%c ", exp[i]); 
        else if (exp[i] == '(')
            push(exp[i]);
        else if (exp[i] == ')') {
            while (top != -1 && (x = pop()) != '(')
                printf("%c ", x);
        } else {
            while (top >= 0 && priority(stack[top]) >= priority(exp[i]))
                printf("%c ", pop());
            push(exp[i]);
        }      
    }

    while (top != -1) 
        printf("%c ", pop());

    return 0;
}
