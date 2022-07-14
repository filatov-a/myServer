#include "web.hh"

Web::Web(){
    curl_global_init(CURL_GLOBAL_ALL);
    curl = curl_easy_init();
}
Web::~Web(){
    if (curl) curl_easy_cleanup(curl);
    curl_global_cleanup();
    /* always cleanup */
}

bool Web::sendMethod(const std::string& host, const std::string& type, const std::string& body){
    if (!curl) return false;
    if (!checkMethod(type));

    curl_easy_setopt(curl, CURLOPT_CUSTOMREQUEST, type.c_str()); 
    curl_easy_setopt(curl, CURLOPT_URL, host.c_str());
    if (type == "POST" || type == "PUT" || type == "PATCH"){
        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, body.c_str());
    }
 
    res = curl_easy_perform(curl);

    if(res != CURLE_OK){
        fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));
        return false;
    }

    curl_easy_reset(curl);
    return true;
}

bool Web::checkMethod(const std::string& type){
    if (!(
        type == "GET" ||
        type == "HEAD" ||
        type == "POST" ||
        type == "PUT" ||
        type == "DELETE" ||
        type == "CONNECT" ||
        type == "OPTIONS" ||
        type == "TRACE" ||
        type == "PATCH"
        )) return false;
    return true;
}
