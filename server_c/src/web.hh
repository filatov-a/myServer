#pragma once

#include "curl/curl.h"
#include <iostream>

class Web{
    CURL *curl;
    CURLcode res;

    bool checkMethod(const std::string& type);
public:
    Web();
    ~Web();

    bool sendMethod(const std::string& host,
                    const std::string& type, 
                    const std::string& body = "");

    CURLcode getRes(){return res;}
};