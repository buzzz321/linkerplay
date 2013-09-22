#include <stdio.h>
#include "mylib.h"

int data[]={1,2,3,4,5,6,7,8,9};

static int sub(int a, int b);

int main(int argc, char **argv){
    int n;

    n = adder(0x10,0x20);

    printf("n=%d\n",n);
    return 0;
}

int sub(int a, int b){
    return a-b;
}
