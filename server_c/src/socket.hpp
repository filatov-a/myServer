#pragma once

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>

struct SocketHead{
    char* host;
    int port;

    char* my_host;

    int s;
    int ret;
    int client;
    sockaddr_in sa;
    sockaddr_in sd;
};