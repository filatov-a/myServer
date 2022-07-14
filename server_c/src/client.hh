#pragma once

#include "socket.hh"
#include <iostream>

class Client: public SocketHead{
    std::string m; 
public:
    Client(char* _host, int _port);
    ~Client(){};

    bool send(const std::string& message);
};