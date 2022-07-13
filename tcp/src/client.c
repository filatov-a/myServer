#include "client.h"
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>

void initUser(struct Client * c, char* host, int p)
{
    c->s = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    c->host = host;
    c->port = p;
    
    struct sockaddr_in sa;
    
    sa.sin_family = AF_INET;
    int ret = inet_aton("127.0.0.1", &sa.sin_addr);//my id
    if (ret == 0)
    {
        printf("error adress convertion");
        close(c->s);
        c->s = 0;
return;
    }

    ret = bind(c->s, (struct sockaddr*)&sa, sizeof(sa));
    if (ret != 0)
    {
        printf("error bind");
        close(c->s);
        c->s = 0;
return;
    }
        
    struct sockaddr_in sd;
    sd.sin_family = AF_INET;
    sd.sin_port = htons(c->port);
    ret = inet_aton(c->host, &sd.sin_addr);// id server
    if (ret == 0)
    {
        printf("error adress convertion");
        close(c->s);
        c->s = 0;
return;
    }
        
    ret = connect(c->s, (struct sockaddr*)&sd, sizeof(sd));
}

void 
sendMessage(struct Client * c, char* data, int len)
{
    size_t tmp = len;
    ssize_t ret = 1;
    while(tmp) 
    {
        ret = send(c->s, data+len-tmp, tmp, 0);
        if(ret < 0) 
        {
            close(c->s);
            c->s = 0;
return;
        }
        tmp -= ret;
    }
    close(c->s);
    c->s = 0;
}
