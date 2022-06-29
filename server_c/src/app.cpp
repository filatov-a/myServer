#include "app.hpp"
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <iostream>
#include <string.h>
#include <string>

App::App(){
    stage = START;
}

void App::run(){
    while (stage != UNDEF || stage != ERROR){
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

App::STAGE App::start(){
    printf("start\n");
    s = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    sockaddr_in sa;
    
    sa.sin_family = AF_INET;
    ret = inet_aton(host, &sa.sin_addr);//my id
    if (ret == 0){
        std::cout << "error adress convertion" << std::endl;
        return ERROR;
    }
    
    sa.sin_port = htons(port);
    ret = bind(s, (sockaddr*)&sa, sizeof(sa));
    if (ret != 0){
        std::cout << "error bind" << std::endl;
        close(s);
        return ERROR;
    }

    int l = listen(s, 1);
    if (l != 0){
        close(s);
        return ERROR;
    }
    std::cout << "app, host: " << host << ", port: " << port << std::endl;
    return WAIT_REQ;
}

App::STAGE App::wait_req(){
    sockaddr_in s_client;
    socklen_t len = sizeof(s_client);
    client = accept(s, (sockaddr*)&s_client, &len);

    do {
        char c;
        ret = recv(client, (void*)&c, 1, 0);
        if (ret > 0){
            m.push_back(c);
        }
    } while (ret > 0);
    
    close(client);
    close(s);
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
    printf("%s", m.c_str());
    return END;
}

App::STAGE App::end(){
    m.clear();
    return START;
}