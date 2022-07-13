#include "sniff.h"
#include <netinet/in.h>
#include <netinet/if_ether.h>
#include <stdlib.h>
#include <string.h>
#include "client.h"

void 
run(struct Sniff * s)
{
    // infoDevice(s);
    initSniff(s);
    s->handle = pcap_open_live(s->device, s->snapshot_length, 0, 10000, s->error_buffer);
    pcap_loop(s->handle, s->total_packet_count, my_packet_handler, s->my_arguments);
}

void
initSniff(struct Sniff * s){
    s->device = "en0";
    s->snapshot_length = 1024;
    s->total_packet_count = -1;
    s->my_arguments = NULL;
}

void
infoDevice(struct Sniff * s){
    /* Find a device */
    s->device = pcap_lookupdev(s->error_buffer);
    if (s->device == NULL) {
        printf("1) %s\n", s->error_buffer);
return;
    }
    
    /* Get device info */
    s->lookup_return_code = pcap_lookupnet(
        s->device,
        &s->ip_raw,
        &s->subnet_mask_raw,
        s->error_buffer
    );
    if (s->lookup_return_code == -1) {
        printf("2) %s\n", s->error_buffer);
return;
    }

    /*
    If you call inet_ntoa() more than once
    you will overwrite the buffer. If we only stored
    the pointer to the string returned by inet_ntoa(),
    and then we call it again later for the subnet mask,
    our first pointer (ip address) will actually have
    the contents of the subnet mask. That is why we are
    using a string copy to grab the contents while it is fresh.
    The pointer returned by inet_ntoa() is always the same.

    This is from the man:
    The inet_ntoa() function converts the Internet host address in,
    given in network byte order, to a string in IPv4 dotted-decimal
    notation. The string is returned in a statically allocated
    buffer, which subsequent calls will overwrite. 
    */

    /* Get ip in human readable form */
    s->address.s_addr = s->ip_raw;
    strcpy(s->ip, inet_ntoa(s->address));
    if (s->ip == NULL) {
        perror("3) inet_ntoa"); /* print error */
return;
    }
    
    /* Get subnet mask in human readable form */
    s->address.s_addr = s->subnet_mask_raw;
    strcpy(s->subnet_mask, inet_ntoa(s->address));
    if (s->subnet_mask == NULL) {
        perror("4) inet_ntoa");
return;
    }

    printf("Device: %s\n", s->device);
    printf("IP address: %s\n", s->ip);
    printf("Subnet mask: %s\n", s->subnet_mask);
}

/* Finds the payload of a TCP/IP packet */
void 
my_packet_handler(
    u_char *args,
    const struct pcap_pkthdr *header,
    const u_char *packet
)
{
    struct ether_header *eth_header;
    eth_header = (struct ether_header *) packet;
    if (ntohs(eth_header->ether_type) != ETHERTYPE_IP) {
        printf("Not an IP packet. Skipping...\n\n");
        return;
    }

    printf("Total packet available: %d bytes\n", header->caplen);
    printf("Expected packet size: %d bytes\n", header->len);

    const u_char *ip_header;
    const u_char *tcp_header;
    const u_char *payload;

    int ethernet_header_length = 14; /* const */
    int ip_header_length;
    int tcp_header_length;
    int payload_length;

    ip_header = packet + ethernet_header_length;
    ip_header_length = ((*ip_header) & 0x0F);
    ip_header_length = ip_header_length * 4;
    printf("IP header length (IHL) in bytes: %d\n", ip_header_length);
    printf("IP header: ");
     = memcpy(s->ip_raw, ip_header);
    s->address.s_addr = s->ip_raw;
    strcpy(s->ip, inet_ntoa(s->address));
    if (s->ip == NULL) {
        perror("3) inet_ntoa"); /* print error */
return;
    }

    u_char protocol = *(ip_header + 9);
    if (protocol != IPPROTO_TCP) {
        printf("Not a TCP packet. Skipping...\n\n");
        return;
    }

    tcp_header = packet + ethernet_header_length + ip_header_length;
    tcp_header_length = ((*(tcp_header + 12)) & 0xF0) >> 4;
    tcp_header_length = tcp_header_length * 4;
    printf("TCP header length in bytes: %d\n", tcp_header_length);

    int total_headers_size = ethernet_header_length+ip_header_length+tcp_header_length;
    printf("Size of all headers combined: %d bytes\n", total_headers_size);
    payload_length = header->caplen -
        (ethernet_header_length + ip_header_length + tcp_header_length);
    printf("Payload size: %d bytes\n", payload_length);
    payload = packet + total_headers_size;
    printf("Memory address where payload begins: %p\n", payload);

    // if (payload_length > 0) {
    //     const u_char *temp_pointer = payload;
    //     int byte_count = 0;
    //     while (byte_count++ < payload_length) {
    //         printf("%c", *temp_pointer);
    //         temp_pointer++;
    //     }
    //     printf("\n");
    // }

    struct Client* c = malloc(sizeof(struct Client));

    char* str = malloc(payload_length+1);
    strncpy(str, payload, payload_length);

    printf("%s\n\n", str);
    
    // initUser(c, "127.0.0.1", 7654);
    // sendMessage(c, payload, payload_length);

    free(str);
    free(c);
    return;
}