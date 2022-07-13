#ifndef sniff_hpp
#define sniff_hpp

#include <stdio.h>
#include <pcap.h>
#include <arpa/inet.h>
#include <string.h>


struct Sniff
{
    char *device;
    char error_buffer[PCAP_ERRBUF_SIZE];
    pcap_t *handle;
    /* Snapshot length is how many bytes to capture from each packet. This includes*/
    int snapshot_length;
    /* End the loop after this many packets are captured */
    int total_packet_count;
    u_char *my_arguments;
    char ip[13];
    char subnet_mask[13];
    bpf_u_int32 ip_raw; /* IP address as integer */
    bpf_u_int32 subnet_mask_raw; /* Subnet mask as integer */
    int lookup_return_code;
    struct in_addr address; /* Used for both ip & subnet */
};

void
run(struct Sniff * s);

void
infoDevice(struct Sniff * s);

void
initSniff(struct Sniff * s);

void 
my_packet_handler(
    u_char *args,
    const struct pcap_pkthdr *header,
    const u_char *packet
);

#endif