#include <stdlib.h>
#ifndef CADR_H
#define CADR_H

struct cadr
{
    cadr() : child(0){};
    virtual ~cadr(){};
    cadr* child;
    virtual void print() = 0;
    virtual const char* getCadrTypeName() = 0;
};

class data : public cadr
{
protected:
    const char* m_data;
    unsigned int m_len;
public:
    data(const char* data_, unsigned int len)
    : m_data(data_), m_len(len){}
    virtual ~data() {
        delete [] m_data;
    }
    
    virtual bool parseData() = 0;
    virtual data* createData() = 0;
    unsigned int getRowDataLen(){
        return m_len;
    }
};

#endif/*CADR_H*/
