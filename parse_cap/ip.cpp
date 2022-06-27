#include "ip.hpp"
#include "pcap_reader.h"
#include <iostream>

using namespace std;

ip::ip(pcap_reader* reader)
:data(reader->read(sizeof(pcap_ip)), sizeof(pcap_ip)), reader(reader)
{}

bool ip::parseData(){
    if(!data::m_data) return false;
    memcpy((void*)&ip_data, (const void*)data::m_data, m_len);
    reader->read(ip_data.fullLen-m_len);
    return true;
}

data* ip::createData(){
    return 0;
}

const char* ip::getCadrTypeName(){
    static const char* name = "ip";
    return name;
}

void ip::print(){
    printf("ttl: %hhu ", ip_data.ttl);
    printf("protocol: %hhu\n", ip_data.protokol);
    char* src = (char*)&ip_data.src;
    printf("src: %hhu.%hhu.%hhu.%hhu\n", src[0], src[1] ,src[2], src[3]);
    
    char* dst = (char*)&ip_data.dsc;
    cout << "dst: ";
    for (int i = 0; i < 4; i++){
        if (i != 3){
            printf("%hhu.", dst[i]);
        } else {
            printf("%hhu\n", dst[i]);
        }
    }
}
