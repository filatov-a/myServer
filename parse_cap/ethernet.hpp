#ifndef ethernet_hpp
#define ethernet_hpp

#include <stdio.h>
#include "cadr.h"

class pcap_reader;

class pcap_ethernet{
public:
    unsigned char da[6];//адрес назгачения
    unsigned char sa[6];//адрес источника
    unsigned short l;//длина поля даних
};

class Ethernet: public data{
public:
    Ethernet(pcap_reader* reader);
    
    bool parseData() override;
    data* createData() override;
    const char* getCadrTypeName() override;
    void print() override;
    
    pcap_reader* reader;
    pcap_ethernet eth;
};


#endif /* ethernet_hpp */
