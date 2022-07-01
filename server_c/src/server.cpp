#include "server.hpp"
#include <iostream>
#include <string.h>

Server::Server(char* _host, int _port){
    status = OK;

    host = _host;
    port = _port;

    s = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);

    sa.sin_family = AF_INET;
    ret = inet_aton(host, &sa.sin_addr);//data from
    if (ret == 0){
        std::cout << "error adress convertion" << std::endl;
        status = ERROR;
        return;
    }

    sa.sin_port = htons(port);
    ret = bind(s, (sockaddr*)&sa, sizeof(sa));
    if (ret != 0){
        std::cout << "error bind" << std::endl;
        close(s);
        status = ERROR;
        return;
    }

    int l = listen(s, 1);
    if (l != 0){
        close(s);
        status = ERROR;
        return;
    }
    std::cout << "app, host: " << host << ", port: " << port << std::endl;
}

Server::~Server(){
    close(s);
}

bool Server::run(){
    if (status == ERROR) return false;

    sockaddr_in s_client;
    socklen_t len = sizeof(s_client);
    client = accept(s, (sockaddr*)&s_client, &len);
    
    do {
        char c;
        ret = recv(client, (void*)&c, 1, 0);
        if (ret > 0){
            m.push_back(c);
        }
    } while (ret > 0);
    
    close(client);
    
    return true;
}