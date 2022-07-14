#pragma once

#include <iostream>
#include "server.hh"
#include "client.hh"
#include "web.hh"
#include "ai.hh"

class App {
    char* host;
    int port;

    char* host_storege_server;

    Server* s;
    Client* c;
    Web* w;
    AI* ai;

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