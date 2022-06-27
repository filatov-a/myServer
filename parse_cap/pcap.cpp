#include "pcap.h"
#include "pcap_reader.h"
#include <cstring>
#include <iostream>
#include <time.h>
#include "ethernet.hpp"
#define MAGIC_NUMBER 0xa1b2c3d4

using namespace std;

pcap_record::pcap_record(pcap_reader* reader, unsigned int snaplen)
: data(reader->read(sizeof(pcap_record_t)), sizeof(pcap_record_t))
, m_snaplen(snaplen)
, m_reader(reader)
{
}

bool pcap_record::parseData()
{
    if(!data::m_data) return false;
    memcpy((void*)&m_data, (const void*)data::m_data, m_len);
    if (m_data.incl_len > m_snaplen) return false;
    Ethernet* eth = new Ethernet(m_reader);
    if (!eth->parseData()) return false;
    child = eth;
    return true;
}

data* pcap_record::createData()
{
    return 0;
}

const char* pcap_record::getCadrTypeName()
{
    static const char* name = "pcap_record";
    return name;
}

pcap_header::pcap_header(pcap_reader* reader)
: data(reader->read(sizeof(pcap_header_t)), sizeof(pcap_header_t))
{
}

bool pcap_header::parseData()
{
    if(!data::m_data) return false;
    memcpy((void*)&m_data, (const void*)data::m_data, m_len);
    if (m_data.magic_number != MAGIC_NUMBER) return false;
    return true;
}

data * pcap_header::createData()
{
    return 0;
}

const char * pcap_header::getCadrTypeName()
{
    static const char* name = "pcap_header";
    return name;
}

void pcap_header::print(){
    printf("version of file %d.%d\n", m_data.version_major, m_data.version_minor);
    printf("network link type = %d\n", m_data.network);
}

void pcap_record::print(){
    char s[50] = {0};
    struct tm t;
    time_t t_ = m_data.ts_sec;
    localtime_r(&t_, &t);
    strftime(s, 50, "%d-%m-%Y %H:%M:%S", &t);
    cout << "record time stamp: " << s  << ":" << m_data.ts_usec << endl;
}
