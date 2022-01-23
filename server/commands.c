#include "server.h"
#include "commands.h"
#include "api.h"
#include <string.h>
#include <pthread.h>
#include <ctype.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <dirent.h>
#include <libgen.h>
#include <errno.h>

char* const message_unknown = "500 unknown command.\r\n";
char* const message_requirepassword = "331 Guest login ok, send your complete e-mail address as password.\r\n";
char* const message_haslogin = "530 has login.\r\n";
char* const message_loginsuccess = "230 Guest login ok.\r\n";
char* const message_loginfail = "530 Fail to login.\r\n";
char* const message_needusername = "530 Need username.\r\n";
char* const message_requirelogin = "530 Please login.\r\n";
char* const message_sys = "215 UNIX Type: L8\r\n";
char* const message_typeI = "200 Type set to I.\r\n";
char* const message_typeA = "200 Type set to A.\r\n";
char* const message_unsupported = "502 Type not supported.\r\n";
char* const message_port = "200 PORT command successful.\r\n";
char* const message_modeundefined = "503 Mode undefined.\r\n";
char* const message_221 = "221 Goodbye.\r\n";
char* const message_mkfail = "550 Fail to create directory.\r\n";
char* const message_rmfail = "550 Fail to remove directory.\r\n";   
char* const message_350 = "350 File exists.\r\n";
char* const message_filenotexist = "550 File does not exist.\r\n";
char* const message_nornfr = "503 RNTO without RNFR.\r\n";
char* const message_renameok = "250 Rename OK.\r\n";
char* const message_renamefail = "550 Rename fail.\r\n";
char* const message_responsebegin = "150 Response begin.\r\n";
char* const message_responseend = "150 Response end.\r\n";
char* const message_readfail = "451 Read fail.\r\n";
char* const message_426 = "426 Connection break down.\r\n";
char* const message_425 = "425 No connection.\r\n";
char* const message_551 = "551 Fail to create file.\r\n";

void response(int fd, struct user_info* user, char* command, char* param)
{
    if (!strcmp(command, "USER")) c_USER(fd, user, param);
    else if (!strcmp(command, "PASS")) c_PASS(fd, user, param);
    else if (!strcmp(command, "SYST")) c_SYST(fd, user);
    else if (!strcmp(command, "TYPE")) c_TYPE(fd, user, param);
    else if (!strcmp(command, "PORT")) c_PORT(fd, user, param);
    else if (!strcmp(command, "PASV")) c_PASV(fd, user);
    else if (!strcmp(command, "RETR")) c_RETR(fd, user, param);
    else if (!strcmp(command, "STOR")) c_STOR(fd, user, param);
    else if (!strcmp(command, "MKD")) c_MKD(fd, user, param);
    else if (!strcmp(command, "CWD")) c_CWD(fd, user, param);
    else if (!strcmp(command, "PWD")) c_PWD(fd, user);
    else if (!strcmp(command, "LIST")) c_LIST(fd, user, param);
    else if (!strcmp(command, "RMD")) c_RMD(fd, user, param);
    else if (!strcmp(command, "RNFR")) c_RNFR(fd, user, param);
    else if (!strcmp(command, "RNTO")) c_RNTO(fd, user, param);
    //else if (!strcmp(command, "QUIT")) c_REST(fd, user);
    else if (!strcmp(command, "QUIT")) c_QUIT(fd, user);
    else {
    	send_response(fd, message_unknown);
    }
}

int c_USER(int fd, struct user_info* user, char* username) {
	char* message;
	if (user->login == 1){
		message = message_haslogin;
	}
	else{
		message = message_requirepassword;
		strcpy(user->username, username);	
	} 
	send_response(fd, message);
	return 0;
}

int c_PASS(int fd, struct user_info* user, char* password) {
	char* message;
	if (strcmp(user->username, "")) {
		if (!strcmp(user->username, "anonymous") && strlen(password) > 0) {
			message = message_loginsuccess;
			strcpy(user->password, password);
			user->login = 1;
		}
		else message = message_loginfail;
	}
	else message = message_needusername;
	send_response(fd, message);
	return 0;
}

int c_SYST(int fd, struct user_info* user) {
	if (!user->login) send_response(fd, message_requirelogin);
	else send_response(fd, message_sys);
	return 0;
}

int c_TYPE(int fd, struct user_info* user, char* type) {
	if (!user->login) {
		send_response(fd, message_requirelogin);
		return 1;
	}
	if (!strcmp(type, "I"))
		send_response(fd, message_typeI);
	else if(!strcmp(type, "A"))
		send_response(fd, message_typeA);
	else {
		send_response(fd, message_unsupported);
		return 1;
	}
	return 0;
}

int c_PORT(int fd, struct user_info* user, char* s) {
	if (!user->login) {
        send_response(fd, message_requirelogin);
        return 0;
    }

    if (user->mode == 2) {
    	close(user->transferfd);
    }
    parse_port(s, user->ip, &user->transferport);
    user->mode = 1;
    send_response(fd, message_port);

    return 0;
}

int c_PASV(int fd, struct user_info* user) {
	if (!user->login) {
        send_response(fd, message_requirelogin);
        return 1;
    }
	if (user->mode == 2) {
		close(user->transferfd);
	}
	user->mode = 2;

	int h1, h2, h3, h4;

    //get_local_ip(c->sock, &h1, &h2, &h3, &h4);
    //char ip[32];
    struct sockaddr_in addr;
    socklen_t addr_size = sizeof(addr);
    getsockname(fd, (struct sockaddr *)&addr, &addr_size);
    //printf("sockname:%d\n", sockname);
    //printf("errno:%d\n",errno );
    //char* host = inet_ntoa(addr.sin_addr);
    char buffer[32];
    inet_ntop(AF_INET, &addr.sin_addr, buffer, sizeof(buffer));
    //strcpy(ip, buffer);
    printf("pasv buffer:%s\n", buffer);
    sscanf(buffer,"%d.%d.%d.%d", &h1, &h2, &h3, &h4);

    //sprintf(ip, "%d.%d.%d.%d", h1, h2, h3, h4);
  
    while(1){
        user->transferport = rand() % (65536 - 20000) + 20000;

        if((user->transferfd = listen_port(user->transferport)) != -1)
            break;
    }

    char message[40];
    printf("Response pasv %d,%d,%d,%d,%d,%d\n", h1, h2, h3, h4, user->transferport/256, user->transferport%256);
    sprintf(message, "227 Passive mode = %d,%d,%d,%d,%d,%d\r\n", h1, h2, h3, h4, user->transferport/256, user->transferport%256);

    send_response(fd, message);
    return 0;
}

int c_RETR(int fd, struct user_info* user, char* filename) {
	if (!user->login) {
        send_response(fd, message_requirelogin);
        return 1;
    }
    if (user->mode != 0) {
    	char name1[8192];
        char name[8192];

    	parse_dir(user->dir, filename, name1);
        strcpy(name, user->root_dir);
        strcat(name, name1);
    	struct stat _status;
        FILE* temp_fp;
    	if((temp_fp = fopen(name, "rb")) != NULL && stat(name, &_status) == 0) {
            //send_response(fd,"ggggggggggggggggggggggg" );
            fclose(temp_fp);
            strcpy(user->file, name);
    		if (user->mode == 2) {
    			user->transferconnfd = accept(user->transferfd, NULL, NULL);
    		}
    		else if (user->mode == 1) {
    			int connfd,tmp;
			    if ((connfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1){
			        tmp = -1;
                    printf("GG ??\n");
			    }
			    else {
			    	struct sockaddr_in addr;
				    memset(&addr, 0, sizeof(addr));
				    addr.sin_family = AF_INET;
				    addr.sin_port = htons(user->transferport);

                    char real_ip[16];
                    sprintf(real_ip, "%d.%d.%d.%d", user->ip[0], user->ip[1], user->ip[2], user->ip[3]);
				    if (inet_pton(AF_INET, real_ip, &addr.sin_addr) <= 0) {
				        tmp = -1;
				    }

				    else if (connect(connfd, (struct sockaddr*)&addr, sizeof(addr)) < 0){
				        tmp = -1;
                    }

				    else {
                        tmp = connfd;
                    }
			    }
		    	user->transferconnfd = tmp;
    		}

    		if (user->transferconnfd != -1) {
    			//TODO: GGGG
                user->skip_byte = 0;
    			send_response(fd, message_responsebegin);
    			
                pthread_t thread_id; 
                pthread_create(&thread_id, NULL, transfer_file, user);

    		}
    		else{
    			send_response(fd, message_425);
    		}
    	}
    	else {
    		send_response(fd, message_551);
    	}
    }
    else {
    	send_response(fd, message_modeundefined);
    }
    return 0;
}

int c_LIST(int fd, struct user_info* user, char* filename) {
	if (!user->login) {
        send_response(fd, message_requirelogin);
        return 1;
    }
    char name[8192];
    //strcpy(name, user->dir);
    //strcat(name,"/");
    //strcat(name, filename);
    parse_dir(user->dir, filename, name);
    DIR* d = opendir(name);
    struct stat status;

    if (user-> mode != 0) {
    	if (stat(name, &status) == 0 || d != NULL) {
	    	if (user->mode == 1){
	    		int connfd,tmp;
			    if ((connfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1){
			        tmp = -1;
			    }
			    else {
			    	struct sockaddr_in addr;
				    memset(&addr, 0, sizeof(addr));
				    addr.sin_family = AF_INET;
				    addr.sin_port = htons(user->transferport);
				    if (inet_pton(AF_INET, user->ip, &addr.sin_addr) <= 0) {
				        tmp = -1;
				    }

				    else if (connect(connfd, (struct sockaddr*)&addr, sizeof(addr)) < 0)
				        tmp = -1;

				    else tmp = connfd;
			    }
		    	user->transferconnfd = tmp;
		    }
		    else if(user->mode == 2){
		    	user->transferconnfd = accept(user->transferfd,NULL,NULL);

		    }

		    if (user->transferconnfd != -1) {
		    	send_response(fd, message_responsebegin);
		    	int _status = 0;
		    	if (d != NULL) {
		    		struct dirent* file;
				    while((file = readdir(d)) != NULL) {
				        char file_directory[8192];
				        sprintf(file_directory, "%s/%s", name, file->d_name);
				        struct stat status;
				        stat(file_directory, &status);
				        int send_status = send_file_stat(user->transferconnfd, &status, file->d_name);
				        if(send_status < 0)
				            _status = send_status;
				    }
				    //return 0;
		    		closedir(d);
		    	}
		    	else{
		    		// To be continue...
                    _status = send_file_stat(user->transferconnfd, &status, basename(name));
		    	}

		    	if (_status == -1) 
		    		send_response(fd, message_readfail);
		    	else if (_status == -2)
		    		send_response(fd, message_426);
		    	else
		    		send_response(fd, message_responseend);

		    	if (user->mode == 2) {

		    		close(user->transferfd);
		    	}
		    	close(user->transferconnfd);
		    }
		    else {
		    	send_response(fd, message_425);
		    }
	    }
    }
    else {
    	send_response(fd, message_modeundefined);
    }
    return 0;
    
}

int c_STOR(int fd, struct user_info* user, char* filename) {
	if (!user->login) {
        send_response(fd, message_requirelogin);
        return 1;
    }
    if (user->mode != 0) {
    	char name1[8192];
        char name[8192];

        parse_dir(user->dir, filename, name1);
        strcpy(name, user->root_dir);
        strcat(name, name1);

        FILE* temp_fp = 0;
    	if((temp_fp = fopen(name, "wb")) != NULL) {
            fclose(temp_fp);
            strcpy(user->file, name);
    		if (user->mode == 2) {
    			user->transferconnfd = accept(user->transferfd, NULL, NULL);
    		}
    		else if (user->mode == 1) {
    			int connfd,tmp;
			    if ((connfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1){
			        tmp = -1;
			    }
			    else {
			    	struct sockaddr_in addr;
				    memset(&addr, 0, sizeof(addr));
				    addr.sin_family = AF_INET;
				    addr.sin_port = htons(user->transferport);
				    if (inet_pton(AF_INET, user->ip, &addr.sin_addr) <= 0) {
				        tmp = -1;
				    }

				    else if (connect(connfd, (struct sockaddr*)&addr, sizeof(addr)) < 0)
				        tmp = -1;

				    else tmp = connfd;
			    }
		    	user->transferconnfd = tmp;
    		}

    		if (user->transferconnfd != -1) {
    			//To be continue
                user->skip_byte = 0;
    			//sprintf...
    			send_response(fd, message_responsebegin);
    			
                pthread_t thread_id; 
                pthread_create(&thread_id, NULL, store_file, user);

    		}
    		else{
    			send_response(fd, message_425);
    		}
    	}
    	else {
    		send_response(fd, message_551);
    	}
    }
    else {
    	send_response(fd, message_modeundefined);
    }
    return 0;
}

int c_CWD(int fd, struct user_info* user, char* dir) {
	if (!user->login) {
        send_response(fd, message_requirelogin);
        return 1;
    }
    char directory[8192];
    if(dir[strlen(dir) - 1] != '/')
        strcat(dir, "/");
    parse_dir(user->dir, dir, directory);
    char real_dir[258];
	strcpy(real_dir, user->root_dir);
	strcat(real_dir, directory);
    //send_response(fd, real_dir);
	DIR* d = opendir(real_dir);
	if (d == NULL) {
		send_response(fd, "550 No such directory\r\n");
		return -1;
	}
	send_response(fd, "250 Okay\r\n");
	strcpy(user->dir, directory);
	return 0;


}

int c_PWD(int fd, struct user_info* user) {
	if (!user->login) {
        send_response(fd, message_requirelogin);
        return 1;
    }
    char message[8192];
    sprintf(message, "257 Current directory:\"%s\".\r\n", user->dir);
    send_response(fd, message);
    return 0;
}

int c_MKD(int fd, struct user_info* user, char* dir){
	if (!user->login) {
        send_response(fd, message_requirelogin);
        return 1;
    }
    char directory[8192];
    parse_dir(user->dir, dir, directory);

    if (mkdir(directory, S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH) == -1) 
    	send_response(fd, message_mkfail);
    else {
    	char message[512];
    	sprintf(message, "250 Create \"%s\" successful.\r\n", directory);
        send_response(fd, message);
        return 1;
    }
    return 0;
}

int c_RMD(int fd, struct user_info* user, char* dir){
	if (!user->login) {
        send_response(fd, message_requirelogin);
        return 1;
    }
    char directory[8192];
    parse_dir(user->dir, dir, directory);
    if (rmdir(directory) == -1) 
    	send_response(fd, message_rmfail);
    else {
    	char message[512];
    	sprintf(message, "250 Remove \"%s\" successful.\r\n", directory);
        send_response(fd, message);
        return 1;
    }
    return 0;
}

int c_RNFR(int fd, struct user_info* user, char* dir) {
	if (!user->login) {
        send_response(fd, message_requirelogin);
        return 1;
    }
    char directory[8192];
    parse_dir(user->dir, dir, directory);
    if (access(directory,F_OK) == 0){
    	strcpy(user->rnfrname, directory);
    	send_response(fd, message_350);
    }
    else {
    	send_response(fd, message_filenotexist);
    }
    return 0;

}

int c_RNTO(int fd, struct user_info* user, char* dir) {
	if (!user->login) {
        send_response(fd, message_requirelogin);
        return 1;
    }
    if (!strlen(user->rnfrname)) {
    	send_response(fd, message_nornfr);
    	return 1;
    }
    char directory[8192];
    parse_dir(user->dir, dir, directory);
    if (rename(user->rnfrname, directory) == 0) {
    	send_response(fd, message_renameok);
    }
    else {
    	send_response(fd, message_renamefail);
    }
    memset(user->rnfrname, 0, sizeof(user->rnfrname));
    return 0;
}

int c_REST(int fd, struct user_info* user, char* bytes) {
    user->skip_byte = atoi(bytes);
    char* message = "350 Restart position accepted.\r\n";
    send_response(fd, message);

    return 0;
}

int c_QUIT(int fd, struct user_info* user) {
	if(user->transferfd > 0) close(user->transferfd);
	send_response(fd, message_221);
	// close(fd);
    if (user->login != 0) {
    	user->login = 0;
    	user->mode = 0;
    }
    else {
        init_client(user);
        close(fd);
    }
	//user->
	return 0;
}