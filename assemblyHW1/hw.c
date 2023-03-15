#include <stdio.h>

void swap(int *d1p, int *d2p) 
{
  int temp0 = *d1p;
  int temp1 = *d2p;

  *d1p = temp1;
  *d2p = temp0;
    
}

int main(){
 
    int x = 4;
    int y = 2;

    //assigning the value of variables to different pointers. The pointer holds the address of the variable.
    int *d1p;
    d1p = &x;
    int *d2p;
    d2p = &y;


    swap(d1p, d2p);
    
    return 0;
}