#ifndef PCAP_READER_H
#define PCAP_READER_H
#include <stdio.h>

class pcap_reader
{
    FILE* f;
public:
    pcap_reader() = delete;
    pcap_reader(const char* file_path);
    pcap_reader(const pcap_reader& reader) = delete;
    ~pcap_reader();
    
    char* read(unsigned int len);
};

#endif/*PCAP_READER_H*/
