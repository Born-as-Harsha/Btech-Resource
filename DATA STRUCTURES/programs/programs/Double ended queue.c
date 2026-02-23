#include<stdio.h>
#include<stdlib.h>
#define N 5
int queue[N];
int front=-1;
int rear=-1;
void enqueue(int element);
void dequeue();
void display();
int main()
{ 
    int ch,element;
    while(1)
    {  printf("\nmenu\n1.enqueue\n2.dequeue\n3.display\n4.exit\n");
    printf("enter your choice:\t");
        scanf("%d",&ch);
        switch(ch)
        { 
           case 1: printf("enter the element\n");
		   			scanf("%d",&element);
                     enqueue(element);
                    break;
                 
            case 2: 
                     dequeue();
                    break;
                    
            case 3: display();
                    break;
            case 4: exit(0);
                    break;
            default :printf("enter a right choice");
        }
    }
}
  void enqueue(int element)
  { 
      if(front==-1 && rear==-1)
      { 
          front=rear=0;
          queue[rear]=element;
        printf("insertion is success");
      }
	  else if((rear+1)%N==front)
      { 
          printf("queue is full");
      }
	  else
	  { 
          rear=(rear+1)%N;
           queue[rear]=element;         
          printf("insertion is success");
      }
  }
                    
  void dequeue()
  { 
      if(front==-1 && rear==-1)
      { 
          printf("queue is empty");
      }
	  else if(front==rear)
        { 
            front=-1;
            rear=-1;
            printf("deletion is success");
        }
		else
		{
            front=(front+1)%N;
            printf("deletion is success");
        }
  }
 void display()
 { 
      int i=front;
      if(front==-1 && rear==-1)
    { 
        printf("queue is empty");
    }
	else
	 {
      while(i!=rear)
      { 
          printf("%d ",queue[i]);
          i=(i+1)%N;
      }
       printf("%d",queue[i]);
    }
 }
