#ifndef server_hpp
#define server_hpp

#include "socket.hpp"
#include <iostream>

class Server: public SocketHead{
    std::string m; 
public:
    Server(char* _host, int _port);
    ~Server(){};

    bool run();
};

#endif