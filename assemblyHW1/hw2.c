#include <stdio.h>

void swapl(long *d1p, long *d2p) 
{
  long temp0 = *d1p;
  long temp1 = *d2p;

  *d1p = temp1;
  *d2p = temp0;
}

int main(){
 
    long x = 12345;
    long y = 67890;

    //assigning the value of variables to different pointers. The pointer holds the address of the variable.
    long *d1p;
    d1p = &x;
    long *d2p;
    d2p = &y;

    swapl(d1p, d2p);

    
    return 0;
}