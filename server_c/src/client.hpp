#ifndef client_hpp
#define client_hpp

#include "socket.hpp"
#include <iostream>

class Client: public SocketHead{
    std::string m; 
public:
    Client(char* _host, int _port);
    ~Client(){};

    bool send(const std::string& message);
};

#endif