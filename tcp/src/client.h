#ifndef user_a_hpp
#define user_a_hpp

#include <stdio.h>

struct Client 
{
    int s;
    char* host;
    int port;
};

void 
initUser(struct Client * c, char* host, int p);

void 
sendMessage(struct Client * c, char* data, int len);

#endif /* user_a_hpp */
