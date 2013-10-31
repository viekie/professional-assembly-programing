/*ifthen.c - a sample c if-then program*/

#include <stdio.h>
int
main(void)
{

    int a = 100;
    int b = 25;

    if(a > b)
    {
	printf("the higher value is %d\n", a);
    }
    else
    {
	printf("the higher value is %d\n", b);
    }

    return 0;
}
