#include "app.hpp"

App::App(){
    host = "127.0.0.1";
    port = 7654;
    host_storege_server = "http://localhost:8080/api/v1/";

    w = new Web();
    s = new Server(host, port);
    c = new Client(host, port);
    stage = START;
}

App::~App(){
    delete w;
    delete s;
    delete c;
    stage = UNDEF;
}

void App::run(){
    while (stage != ERROR && stage != UNDEF){
        switch (stage){
            case START:
                stage = start();
                break;
            case WAIT_REQ:
                stage = wait_req();
                break;
            case DECRYPT_REQ:
                stage = decrypt_req();
                break;
            case CREATE_RES:
                stage = create_res();
                break;
            case ENCRYPT_RES:
                stage = encrypt_res();
                break;
            case PUSH_RES:
                stage = push_res();
                break;
            case END:
                stage = end();
                break;
            default:
                stage = UNDEF;
                break;
        }
    }
}

// stage function

App::STAGE App::start(){
    return WAIT_REQ;
}

App::STAGE App::wait_req(){
    if (!s->run()){
        return ERROR;
    }
    return DECRYPT_REQ;
}

App::STAGE App::decrypt_req(){
    return CREATE_RES;
}

App::STAGE App::create_res(){
    return ENCRYPT_RES;
}

App::STAGE App::encrypt_res(){
    return PUSH_RES;
}

App::STAGE App::push_res(){
    w->sendMethod(host_storege_server, "POST", "data=data&name=name");
    return END;
}

App::STAGE App::end(){
    return START;
}