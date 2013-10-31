#include <stdio.h>
#include <stdlib.h>

void
bubble_sort(int *array, int length)
{

    if(NULL == array || 0 >= length)
    {
	printf("args error\n");
        return;
    }

    int i,j;
   
    for(i = 0; i < length -1 ; i ++)
    {
	for(j = i; j < length - 1; j ++)
	{
	    if(array[j] > array[j + 1])
	    {
		int temp = array[j];
		array[j] = array[j + 1];
		array[j + 1] = temp;
   	    }
 	}
    }
}

void print(int *array, int length)
{
    if(NULL == array || 0 >= length)
    {
	printf("args error\n");
    	return;
    }

    int i = 0;
  
    for(i = 0; i < length; i ++)
    {
	printf("%d\t", array[i]);
    }
}

int
main(void)
{
    
    int array[] = {30, 4, 13, 54, 34, 23, 98, 78, 76, 100};
 
    int length = 10;

    print(array, length);

    printf("\n");

    bubble_sort(array, length);
 
    print(array, length);   
  
    printf("\n");
}
