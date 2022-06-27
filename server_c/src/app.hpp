#include <iostream>

class App {
    enum Stage{
        START,

        WAIT_RES,
        DECRYPT_RES,

        ENCRYPT_REQ,
        PUSH_REQ,

        END,

        ERROR
    };
public:
    App(){};
    ~App(){};
};