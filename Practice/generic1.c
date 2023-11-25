#include <stdio.h>

#define TYPE_NAME(X) _Generic((X), int: "Integer", default: "Unknown")

int main()
{
    printf("Type Name: %s\n", TYPE_NAME(42)); //Checks the type of the given input
    return 0;
}