#include <stdio.h>

#define N 50

int main()
{
    
    int i, arr[N];

    for (i = 1; i < N; i++) 
    {
        if(((i/2) * 2) == i)
        {
            arr[i] = i;
            printf("arr[%d] = %d\n", i, arr[i]);
        }
        
    }  

    return 0;
}