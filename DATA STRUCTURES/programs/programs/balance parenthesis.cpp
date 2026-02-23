#include <stdio.h>
#include <string.h>

char stack[100];
int top = -1;

void push(char x) {
    top++;
    stack[top] = x;
}

void pop() {
    if (top >= 0)
        top--;
}

int main() {
    char exp[50], ch;
    int i, len;

    printf("Enter expression: ");
    scanf("%s", exp);
    len = strlen(exp);

    for (i = 0; i < len; i++) {
        ch = exp[i];

        if (ch == '(' || ch == '{' || ch == '[')
            push(ch);
        else if ((ch == ')' && top >= 0 && stack[top] == '(') ||
                 (ch == ']' && top >= 0 && stack[top] == '[') ||
                 (ch == '}' && top >= 0 && stack[top] == '{'))
            pop();
        else if (ch == '(' || ch == '[' || ch == '{') {
            top = -1;
            break;
        }
    }

    if (top == -1)
        printf("Balanced\n");
    else
        printf("Not Balanced\n");

    return 0;
}
