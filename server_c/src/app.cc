#include "app.hh"
#include <iostream>

App::App(){
    host = "127.0.0.1";
    port = 7654;
    host_storege_server = "http://localhost:8080/api/v1/users/dfk-f93fj-fsnsvsd";

    w = new Web();
    s = new Server(host, port);
    c = new Client(host, port);
    ai = new AI();
    ai->run();
    stage = START;
}

App::~App(){
    delete w;
    delete s;
    delete c;
    delete ai;
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
    // return WAIT_REQ;
    return UNDEF;
}

App::STAGE App::wait_req(){
    if (!s->run()){
        return ERROR;
    }
    std::cout << "wait_req done" << std::endl;
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
    std::string tmp;
    tmp = "data=";
    tmp += s->getMessage();
    std::cout << tmp << std::endl;
    // bool is_valid = w->sendMethod(host_storege_server, "POST", tmp);
    // if (!is_valid) return ERROR;
    // std::cout << w->getRes() << std::endl;
    return END;
}

App::STAGE App::end(){
    return START;
}