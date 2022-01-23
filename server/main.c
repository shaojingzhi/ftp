#include <stdio.h>
#include "server.h"
#include "api.h"
#include <stdlib.h>

int main(int argc, char** argv){
    int port = 21;
    char root_dir[100] = "/tmp";

    if(argc == 1) { 
    }
    else {
        if(argc != 3 && argc != 5)
            //return -1;
            printf("Parameters Error.");
        
        if(argc == 3){
            if(strcmp(argv[1], "-port") == 0)
                port = atoi(argv[2]);
            else if(strcmp(argv[2], "-root") == 0)
                strcpy(root_dir, argv[2]);
        }

        if(argc == 5){
            for(int i = 0; i < 2; ++i)
                if(strcmp(argv[i * 2 + 1], "-port") == 0)
                    port = atoi(argv[i * 2 + 2]);
                else if(strcmp(argv[i * 2 + 1], "-root") == 0)
                    strcpy(root_dir, argv[i * 2 + 2]);
        }
    }

   // return 0;

    struct Server *sv = (struct Server*)malloc(sizeof(struct Server));

    init_server(sv, port, root_dir); // ok!
    start_server(sv);

    return 0;
}
