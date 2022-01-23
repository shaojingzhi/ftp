//#include "server.h"
#include "commands.h"
#include <stdlib.h>
#include <stdio.h>

void init_server(struct Server* sv, int port, char* root_dir){

    int sock;
    strcpy(sv->root_dir, root_dir);

    if((sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1){
        printf("GG!!!\n");
        return ;
    }

    sv->sock = sock;

    memset(&sv->addr, 0, sizeof(sv->addr));
    sv->addr.sin_family = AF_INET;
    sv->addr.sin_port = htons(port);
    sv->addr.sin_addr.s_addr = htonl(INADDR_ANY);

    if(bind(sock, (struct sockaddr*)&sv->addr, sizeof(sv->addr)) == -1){
        printf("GG!!!!\n");
        return ;
    }

    if(listen(sock, 10) == -1){
         printf("GG!!!!!\n");
        return ;
    }
}

void start_server(struct Server *sv){

    int max_sock;
    int cs;
    int act;
    int n;
    int read_error;
    int p;
    char sentence[8192];
    
    fd_set readfds;
    struct user_info* clients[MAX_CLIENTS];
    for (int i = 0; i < MAX_CLIENTS; ++i){
        clients[i] = (struct user_info*)malloc(sizeof(struct user_info));
        init_client(clients[i]);
    }

    while(1){

        FD_ZERO(&readfds);
        FD_SET(sv->sock, &readfds);

        max_sock = sv->sock;

        for(int i = 0; i < MAX_CLIENTS; ++i){

            cs = clients[i]->sockfd;

            if(cs >= 0)
                FD_SET(cs, &readfds);
            if(cs > max_sock)
                max_sock = cs;
        }

        act = select(max_sock + 1, &readfds, NULL, NULL, NULL);

        if(act < 0 && errno != EINTR){
            continue;
        }

        if(FD_ISSET(sv->sock, &readfds)){
            struct sockaddr_in client_addr;
            socklen_t client_len = sizeof(client_addr);

            if((cs = accept(sv->sock, (struct sockaddr*)&client_addr, &client_len)) == -1){
                continue;
            }
            printf("2333\n");

            int i = 0;
            for(; i < MAX_CLIENTS && clients[i]->sockfd != -1; ++i);

            if(i >= MAX_CLIENTS){
                //over_connections(cs);
                char *message = "421 sorry, but the server is busy, please try again later.\r\n";
                write(cs, message, strlen(message));
                continue;
            }
            
            clients[i]->sockfd = cs;
            clients[i]->addr = client_addr;
            clients[i]->len = client_len;
            strcpy(clients[i]->root_dir, sv->root_dir);
            strcpy(clients[i]->dir, "/");

            char* message = "220 Anonymous FTP server ready.\r\n";
            write(cs, message, strlen(message));

        }
        else{

            int i = 0;
            for(; i < MAX_CLIENTS && !FD_ISSET(clients[i]->sockfd, &readfds); ++i);
            
            if(i >= MAX_CLIENTS) {
                continue;
            }

            cs = clients[i]->sockfd;
            read_error = 0;
            p = 0;            

            while(1){
                n = read(cs, sentence + p, 8191 - p);
                if(n < 0){
                    read_error = 1;
                    break;
                }
                else if(n == 0){
                    break;
                }
                else{
                    p += n;
                    if(sentence[p - 1] == '\n')
                        break;
                }
            }
            if(read_error || p == 0){
                close(cs);
                init_client(clients[i]);
                continue;
            }

            sentence[p - 1] = '\0';

            char command[20];
            char message[200];

            sscanf(sentence, "%s %s",command ,message);
            response(cs, clients[i], command, message);

        }
    }
}

void init_client(struct user_info* c){
    c->sockfd = -1;

}