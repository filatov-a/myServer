#pragma once

#include <iostream>
#include "server.hpp"
#include "client.hpp"
#include "web.hpp"

class App {
    char* host;
    int port;

    char* host_storege_server;

    Server* s;
    Client* c;
    Web* w;

    enum STAGE{
        START,

        WAIT_REQ,
        DECRYPT_REQ,

        CREATE_RES,
        ENCRYPT_RES,
        PUSH_RES,

        END,

        UNDEF,
        ERROR
    } stage;

    STAGE start();
    STAGE wait_req();
    STAGE decrypt_req();
    STAGE create_res();
    STAGE encrypt_res();
    STAGE push_res();
    STAGE end();
public:
    App();
    ~App();

    void run();
};