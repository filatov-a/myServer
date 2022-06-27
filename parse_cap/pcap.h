#ifndef PCAP_H
#define PCAP_H

#include "cadr.h"

class pcap_reader;

typedef struct pcap_header_s
{
    unsigned int magic_number;   /* magic number */
    unsigned short version_major;  /* major version number */
    unsigned short version_minor;  /* minor version number */
    int thiszone;       /* GMT to local correction */
    unsigned int sigfigs;        /* accuracy of timestamps */
    unsigned int snaplen;        /* max length of captured packets, in octets */
    unsigned int network;     
} pcap_header_t;

class pcap_header : public data
{
public:
    pcap_header(pcap_reader* reader);
    bool parseData() override;
    data* createData() override;
    const char* getCadrTypeName() override;
    void print() override;
    
    pcap_header_t m_data;
};

typedef struct pcap_record_s
{
    unsigned int ts_sec;         /* timestamp seconds */
    unsigned int ts_usec;        /* timestamp microseconds */
    unsigned int incl_len;       /* number of octets of packet saved in file */
    unsigned int orig_len;
} pcap_record_t;


class pcap_record : public data
{
    pcap_reader* m_reader;
public:
    pcap_record(pcap_reader* reader, unsigned int snaplen);
    bool parseData() override;
    data* createData() override;
    const char* getCadrTypeName() override;
    void print() override;
    
    pcap_record_t m_data;
    unsigned int m_snaplen;
};

#endif/*PCAP_H*/
