#include <stdio.h>
#include "sniff.h"
#include <stdlib.h>

int main(int argc, char **argv) {    
    struct Sniff* s = malloc(sizeof(struct Sniff));

    // while (1)
    // {
        run(s);
    // }
    
    free(s);
    return 0;
}