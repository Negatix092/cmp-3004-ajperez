#include <stdio.h>
#include <stdlib.h>
 
int abs_diff(int x, int y)
{
     
    int r=abs(x-y);
 
    return r;
}

int main(){
 
    int x = 4;
    int y = 2;
    
    int r = abs_diff(x,y);
    
    printf("%d", r);
    
    return 0;
}