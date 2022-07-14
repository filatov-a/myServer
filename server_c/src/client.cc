#include "client.hh"

Client::Client(char* _host, int _port){
    my_host = "127.0.0.1";

    host = _host;
    port = _port;
    s = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    sa.sin_family = AF_INET;
    sd.sin_family = AF_INET;
    sd.sin_port = htons(port);
}

bool Client::send(const std::string& message){
    ret = inet_aton(host, &sa.sin_addr);//my id
    if (ret == 0){
        std::cout << "error adress convertion" << std::endl;
        ::close(s);
        s = 0;
        return false;
    }

    ret = bind(s, (sockaddr*)&sa, sizeof(sa));
    if (ret != 0){
        std::cout << "error bind" << std::endl;
        ::close(s);
        s = 0;
        return false;
    }
        
    ret = inet_aton(my_host, &sd.sin_addr);// id server
    if (ret == 0){
        std::cout << "error adress convertion" << std::endl;
        ::close(s);
        s = 0;
        return false;
    }
        
    ret = connect(s, (sockaddr*)&sd, sizeof(sd));

    size_t tmp = m.size();
    ssize_t ret = 1;
    while(tmp) {
        ret = ::send(s, m.c_str()+m.size()-tmp, tmp, 0);
        if(ret < 0) {
            ::close(s);
            s = 0;
            return false;
        }
        tmp -= ret;
    }

    ::close(s);
    return true;
}