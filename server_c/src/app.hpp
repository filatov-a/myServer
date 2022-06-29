#include <iostream>

class App {
    int s;
    int ret;
    int client;

    char* host = "127.0.0.1";
    int port = 9821;

    std::string m;

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
    ~App(){};

    void run();
};