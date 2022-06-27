#include "list.h"
#include "pcap_reader.h"
#include "pcap.h"
#include <stdlib.h>

Elem::~Elem()
{
    if(data) delete data;
}

List::List(pcap_reader* reader)
{
    header = new Elem;
    pcap_header* pcapheader = new pcap_header(reader);
    if(!pcapheader->parseData()) {
        delete pcapheader;
        delete header;
        exit(0);
    }
    header->data = pcapheader;
}

Elem * List::insert(Elem* pos, Elem* elem)
{
    if (pos->next != 0){
        elem->next = pos->next;
        pos->next->prev = elem;
    }
    pos->next = elem;
    elem->prev = pos;
    
    return elem;
}
