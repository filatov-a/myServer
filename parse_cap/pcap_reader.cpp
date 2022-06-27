#include "pcap_reader.h"
#include <stdio.h>
#include <iostream>

using namespace std;

pcap_reader::pcap_reader(const char* file_path)
{
    f = fopen(file_path, "rb");
    if (!f) {
        cout << "error open file " << errno << endl;
        exit(0);
    }
}

pcap_reader::~pcap_reader(){
    fclose(f);
}

char * pcap_reader::read(unsigned int len)
{
    char* ch = new char [len];
    if(!fread(ch, 1, len, f)) return 0;
    return ch;
}
