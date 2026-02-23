#include<stdio.h>  
#include<stdlib.h>  
struct node  
{  
    struct node *prev;  
    struct node *next;  
    int data;  
};  
struct node *head;  
void insertion_beginning();  
void insertion_last();  
void insertion_specified();  
void deletion_beginning();  
void deletion_last();  
void deletion_specified();  
void display();  
void search();  
void main ()  
{  
int choice =0;  
    while(choice != 9)  
    {  
       
        printf("\n1.Insert in begining\n2.Insert at last\n3.Insert at any random location\n4.Delete from Beginning\n  5.Delete from last\n6.Delete the node after the given data\n7.Search\n8.Display\n9.Exit\n");  
        printf("\nEnter your choice:  ");  
        scanf("%d",&choice);  
        switch(choice)  {  
            case 1:  
            insertion_beginning();  
            break;  
            case 2:  
                    insertion_last();  
            break;  
            case 3:  
            insertion_specified();  
            break;  
            case 4:  
            deletion_beginning();  
            break;  
            case 5:  
            deletion_last();  
            break;  
            case 6:  
            deletion_specified();  
            break;  
            case 7:  
            search();  
            break;  
            case 8:  
            display();  
            break;  
            case 9:  
            exit(0);  
            break;  
            default:  
            printf("Please enter valid choice..");  
        }  
    }  
}  


void insertion_beginning()  
{  
   struct node *newnode;   
   int item;  
   newnode = (struct node *)malloc(sizeof(struct node));  
    printf("\nEnter Item value: ");  
    scanf("%d",&item);
    newnode->data=item;
    newnode->next = NULL;  
    newnode->prev=NULL;  
      
   if(head==NULL)  
   {  
       
       head=newnode;  
   }  
   else   
   {  
       newnode->next = head;  
       head->prev=newnode;  
       head=newnode;  
   }  
   printf("\nNode inserted\n");  
}  

void insertion_last()  
{  
   struct node *newnode,*temp;  
   int item;  
   newnode = (struct node *) malloc(sizeof(struct node));  
       printf("\nEnter value: ");  
       scanf("%d",&item);  
        newnode->data=item; 
        newnode->next = NULL;  
        newnode->prev = NULL; 
       if(head == NULL)  
       {  
            
           head = newnode;  
       }  
       else  
       {  
          temp = head;  
          while(temp->next!=NULL)  
          {  
              temp = temp->next;  
          }  
          temp->next = newnode;  
          newnode ->prev=temp;  
          }  
             
      
     printf("\nnode inserted\n");  
}  
void insertion_specified()  
{  
   struct node *newnode,*temp=head;  
   int pos,i;  
   newnode = malloc(sizeof(struct node));  
   printf("Enter the position");  
       scanf("%d",&pos);  
       printf("Enter data");  
       scanf("%d",&newnode->data);  
       for(i=0;i<pos-1;i++)  
       {
            if(temp ->next!=NULL)
            {
                temp = temp ->next;

            }
        }
 	newnode->next=temp ->next;          
    temp ->next->prev=newnode;    
       temp ->next = newnode;  
       newnode -> prev = temp;  

       printf("\nnode inserted\n");  
 } 
void deletion_beginning()  
{  
    struct node *temp;  
    if(head == NULL)  
    {  
        printf("\n UNDERFLOW");  
    }  
    else if(head->next == NULL)  
    {  
        head = NULL;   
        free(head);  
        printf("\nnode deleted\n");  
    }  
    else  
    {  
        temp= head;  
        head = head -> next;  
        head -> prev = NULL;  
        free(temp);  
        printf("\nnode deleted\n");  
    }  
  
}  
void deletion_last()  
{  
    struct node * temp =head;  
     
     if(head->next == NULL)  
    {  
        head = NULL;   
        printf("\nnode deleted\n");  
    }  
    else   
    {  
        while(temp ->next != NULL)  
        {  
            temp = temp -> next;   
        }  
       temp -> prev -> next = NULL;   
        printf("\nnode deleted\n");  
    }  
}  
void deletion_specified() {
    if (head == NULL) { // Check if list is empty
        printf("List is empty.\n");
        return;
    }

    int pos, i = 1;
    struct node *temp = head;

    printf("\nEnter the position: ");
    scanf("%d", &pos);

    if (pos < 1) {
        printf("Invalid position!\n");
        return;
    }

    // Deleting the first node
    if (pos == 1) {
        head = head->next;
        if (head != NULL) {
            head->prev = NULL;
        }
        free(temp);
        printf("Node deleted from position %d.\n", pos);
        return;
    }

    // Traverse to the specified position
    while (temp != NULL && i < pos) {
        temp = temp->next;
        i++;
    }

    if (temp == NULL) { // Position out of range
        printf("Position out of range!\n");
        return;
    }

    // Adjust pointers
    if (temp->prev != NULL) {
        temp->prev->next = temp->next;
    }

    if (temp->next != NULL) {
        temp->next->prev = temp->prev;
    }

    free(temp);
    printf("Node deleted from position %d.\n", pos);
}
 
void display()  
{  
    struct node *newnode;  
    printf("\n printing values...\n");  
    newnode = head;  
    while(newnode != NULL)  
    {  
        printf("%d-->",newnode->data);  
        newnode=newnode->next;  
    }  
printf(“null\n”);
}   
void search()  
{  
    struct node *newnode;  
    int item,i=0,flag;  
    newnode = head;   
    if(newnode == NULL)  
    {  
        printf("\nEmpty List\n");  
    }  
    else  
    {   
        printf("\nEnter item which you want to search?: \n");   
        scanf("%d",&item);  
        while (newnode!=NULL)  
        {  
            if(newnode->data == item)  
            {  
                printf("\nitem found at location %d ",i+1);  
                flag=0;  
                break;  
            }   
            else  
{  
                flag=1;  
            }  
            i++;  
            newnode = newnode -> next;  
        }  
        if(flag==1)  
        {  
            printf("\nItem not found\n");  
        }  
    }     
          
}
