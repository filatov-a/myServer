#include <iostream>
#include "list.h"
#include "pcap_reader.h"
#include "pcap.h"
#include "ethernet.hpp"

using namespace std;

int main(int argc, char **argv) {
    cout << "hello" << endl;
    pcap_reader reader("/Users/f/basic/http.cap");
    List list(&reader);
    unsigned int snapLen = ((pcap_header*)list.header->data)->m_data.snaplen;
    Elem* curElem(list.header);

    while(true) {
        pcap_record *record = new pcap_record(&reader, snapLen);
        if(!record->parseData()){ //||
//           !reader.read(record->m_data.incl_len)) {
            delete record;
            break;
        }
        curElem = list.insert(curElem, new Elem);
        curElem->data = record;
    }
    
    curElem = list.header;
    while (true){
        cadr* pos = curElem->data;
        while (true){
            pos->print();
            if (!pos->child) break;
            pos = pos->child;
        }
        if (curElem->next == 0) break;
        curElem = curElem->next;
    }
    
    curElem = list.header;
    while (curElem){
        Elem* next = curElem->next;
        delete curElem;
        curElem = next;
    }
    
    return 0;
}
