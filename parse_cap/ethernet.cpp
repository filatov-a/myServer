#include "ethernet.hpp"
#include "pcap_reader.h"
#include "ip.hpp"
#include <cstring>
#include <iostream>

using namespace std;

Ethernet::Ethernet(pcap_reader* reader)
:data(reader->read(sizeof(pcap_ethernet)), sizeof(pcap_ethernet)), reader(reader)
{
}

const char* Ethernet::getCadrTypeName(){
    static const char* name = "Ethernet";
    return name;
}

bool Ethernet::parseData(){
    if(!data::m_data) return false;
    memcpy((void*)&eth, (const void*)data::m_data, m_len);
    if (!eth.l) return false;
    ip * Ip = new ip(reader);
    if (!Ip->parseData()) return false;
    child = Ip;
    return true;
}

data* Ethernet::createData(){
    return 0;
}

void Ethernet::print(){
    cout << "destination address: ";
    printf("%.2x", eth.da[0]);
    for (int i = 1; i < 6; i++){
        printf("-%.2x", eth.da[i]);
    }
    cout << endl;
    
    cout << "source address: ";
    printf("%.2x", eth.sa[0]);
    for (int i = 1; i < 6; i++){
        printf("-%.2x", eth.sa[i]);
    }
    cout << endl;
    
    cout << "len: " << eth.l << endl;
}
