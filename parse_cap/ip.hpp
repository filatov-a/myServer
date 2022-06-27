#ifndef ip_hpp
#define ip_hpp

#include <stdio.h>
#include "cadr.h"

class pcap_reader;

struct pcap_ip{
    char vr:4;
    char Hlen:4;
    char typeS;
    short fullLen;
    int fragment;
    char ttl;
    char protokol;
    short ksum;
    int src;
    int dsc;
};

class ip : public data{
public:
    ip(pcap_reader* reader);
    
    bool parseData() override;
    data* createData() override;
    const char* getCadrTypeName() override;
    void print() override;
    
    pcap_reader * reader;
    pcap_ip ip_data;
};

#endif /* ip_hpp */
