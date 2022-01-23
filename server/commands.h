#ifndef COMMANDS_H
#define COMMANDS_H

#include "server.h"
#include "api.h"

void response(int fd, struct user_info* user, char* command, char* param);
int c_USER(int fd, struct user_info* user, char*);
int c_PASS(int fd, struct user_info* user, char*);
int c_RETR(int fd, struct user_info* user, char*);
int c_STOR(int fd, struct user_info* user, char*);
int c_QUIT(int fd, struct user_info* user);
int c_SYST(int fd, struct user_info* user);
int c_TYPE(int fd, struct user_info* user, char*);
int c_PORT(int fd, struct user_info* user, char*);
int c_PASV(int fd, struct user_info* user);
int c_MKD(int fd, struct user_info* user, char*);
int c_CWD(int fd, struct user_info* user, char*);
int c_PWD(int fd, struct user_info* user);
int c_LIST(int fd, struct user_info* user, char*);
int c_RMD(int fd, struct user_info* user, char*);
int c_RNFR(int fd, struct user_info* user, char*);
int c_RNTO(int fd, struct user_info* user, char*);
int c_REST(int fd, struct user_info* user, char*);

#endif