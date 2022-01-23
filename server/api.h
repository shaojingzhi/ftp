#ifndef API_H
#define API_H

#include "server.h"
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <fcntl.h>
#include <sys/select.h>
#include <pthread.h>
#include <stdio.h>
#include <errno.h>
#include <strings.h>
#include <unistd.h>
#include <errno.h>
#include <ctype.h>
#include <string.h>
#include <memory.h>

int send_response(int fd, const char* message);
int parse_port(char* address, char* ip, int* port);
void parse_dir(char* pwd, char* input, char* output);
int listen_port(int port);
int send_file_stat(int fd, struct stat* status, char* name);
void *transfer_file(void* cv);
void *store_file(void *cv);
#endif