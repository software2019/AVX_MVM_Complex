
/* By executing below command, We get the all intermediate files in the current directory along with the executable:
    $gcc -Wall -save-temps test.c -o test
 */

#include<stdio.h>

#define mul(a,b) (a*b) //function like macro     


int main(){
    int a=2, b=2;

    printf("a*b = %d\n", mul(a,b));

    return 0;
}