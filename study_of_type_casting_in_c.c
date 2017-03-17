#include <stdio.h>
int main(void)
{
 // some sample variables
    char c;
    c = 12; (int) c;
    double d, j;
    d = 1; (int) d;
    j = 1.43; (float) j;
    float f;
    f = 10200000; (double) f;
    int i;
    i = "a"; (char) i;
     // report the sizes of variables' types
    printf("char: %d\n", sizeof(c));
    printf("double: %d\n", sizeof((char)d));
    printf("float: %d\n", sizeof(f));
    printf("int: %d\n", sizeof(i));
}
