#ifndef LIST_H
#define LIST_H

struct cadr;
class pcap_reader;

struct Elem
{
    Elem* next;
    Elem* prev;
    cadr* data;
    Elem() : next(0), prev(0), data(0){}
    ~Elem();
};

struct List
{
    Elem* header;
    List(pcap_reader* reader);
    ~List() {
    }
    Elem* insert(Elem* pos, Elem* elem);
};

#endif/*LIST_H*/
