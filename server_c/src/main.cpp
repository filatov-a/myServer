#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <iostream>
#include <string.h>
#include <string>

int main() {
    int s = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    sockaddr_in sa;
    
    sa.sin_family = AF_INET;
    int ret = inet_aton("127.0.0.1", &sa.sin_addr);//my id
    if (ret == 0){
        std::cout << "error adress convertion" << std::endl;
        return 1;
    }
    
    sa.sin_port = htons(50601);
    ret = bind(s, (sockaddr*)&sa, sizeof(sa));
    if (ret != 0){
        std::cout << "error bind" << std::endl;
        close(s);
        return 1;
    }
    
    int l = listen(s, 1);
    if (l != 0){
        close(s);
        return 1;
    }
    
    sockaddr_in s_client;
    socklen_t len = sizeof(s_client);
    int client = accept(s, (sockaddr*)&s_client, &len);
    
    do{
        char c;
        ret = recv(client, (void*)&c, 1, 0);
        if (ret > 0)
            printf("%c", c);
    } while (ret > 0);
    std::cout << std::endl;
    
    close(client);
    close(s);
    return 0;
}
