#pragma once

#include "socket.hh"
#include <iostream>

class Server: public SocketHead{
    std::string m;
public:
    enum STATUS{
        OK,
        ERROR
    } status;

    Server(char* _host, int _port);
    ~Server();

    bool run();
    std::string getMessage(){return m;}
};