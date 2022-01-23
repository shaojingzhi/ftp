#ifndef SERVER_H
#define SERVER_H

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

#define MAX_CLIENTS 10

struct user_info{
	//server
	int sockfd;
	int connfd;
	struct sockaddr_in addr;
    socklen_t len;

	//status
	int login;//0 represents unlogin, 1 represents login
	int mode;//0,1,2 for NO,PORT,PASV
	char username[200];
	char password[200];
	char dir[8192];
	char rnfrname[8192];
	char root_dir[256];

	//transfer file
	char ip[4];
	int transferconnfd;
	int transferport;
	int transferfd;
	char file[256];
	int skip_byte;

};

struct Server{
    int sock;
    char root_dir[100];
    struct sockaddr_in addr;
};

void init_server(struct Server*, int, char*);

void start_server();

void init_client(struct user_info*);

#endif
