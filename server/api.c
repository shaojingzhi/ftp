#include "api.h"
#include <pwd.h>
#include <grp.h>
#include <sys/stat.h>
#include <stdlib.h>

int send_response(int fd, const char* message){
	int p = 0, len = strlen(message);
	while(p < len){
		int n = write(fd, message + p, len - p);
		if (n < 0) return -1;
		else p += n;
	}
	return 0;
}

int parse_port(char* address, char* ip, int* port){
	char num[4];
	int j = 0, index = 0, len = strlen(address);
	unsigned char nums[6];
	for (int i = 0; i < len; ++i) {
		if (address[i] == ',') {
			nums[index] = atoi(num);
			++index;
			memset(num, 0, 4);
			j = 0;
			continue;
		}
		num[j] = address[i];
		++j;
	}
	nums[index] = atoi(num);	
	for (int i = 0; i < 4; ++i) {
		ip[i] = nums[i];
	}
	*port = nums[4];
	*port = ((*port) << 8) + nums[5];

	return 0;
}

void parse_dir(char* pwd, char* input, char* output) {
	if (input[0] == '/') {
		strcpy(output, input);

	} 
	else {
		strcpy(output, pwd);
		if (strlen(pwd) > 1) {
			strcat(output, "/");
		}
		strcat(output, input);
	}
}

int listen_port(int port) {

    int listenfd;
    struct sockaddr_in addr;

    if ((listenfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1)
        return -1;
    int bReuseaddr = 1;
    setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, (const char*)&bReuseaddr, sizeof(int));

    memset(&addr, 0, sizeof(struct sockaddr_in));
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);
    addr.sin_addr.s_addr = htonl(INADDR_ANY);

    if (bind(listenfd, (struct sockaddr*)&addr, sizeof(addr)) == -1) {
        printf("Error bind()\n");
        return -1;
    }

    if (listen(listenfd, MAX_CLIENTS) == -1) {
        printf("Error listen()\n");
        return -1;
    }

    return listenfd;
}


int send_file_stat(int fd, struct stat* status, char* name) {
    char response[8192];
    struct tm* time = localtime(&status->st_mtime);
    struct passwd* pwd = getpwuid(status->st_uid);
    struct group* grp = getgrgid(status->st_gid);
    char month[12][4] = {"Jan\0", "Feb\0", "Mar\0", "Apr\0", "May\0", "Jun\0",
                        "Jul\0", "Aug\0", "Sep\0", "Oct\0", "Nov\0", "Dec\0"};
    if(S_ISREG(status->st_mode))
        sprintf(response, "-rw-r--r-- 1 %-13s %-13s %13d %3s%3d %02d:%02d %s\r\n", 
            pwd->pw_name, grp->gr_name, (unsigned int)status->st_size,
            month[time->tm_mon], time->tm_mday, time->tm_hour, time->tm_min,
            name);
    else if(S_ISDIR(status->st_mode))
        sprintf(response, "drwxr-xr-x 1 %-13s %-13s %13d %3s%3d %02d:%02d %s\r\n", 
            pwd->pw_name, grp->gr_name, (unsigned int)status->st_size,
            month[time->tm_mon], time->tm_mday, time->tm_hour, time->tm_min,
            name);
    int send_status = send_response(fd, response);
    if(send_status < 0)
        return send_status;
    else
        return 0;
}

void *transfer_file(void* cv){
    
    struct user_info* user = cv;

    char buffer[8192];

    int filefd = open(user->file, O_RDONLY);

    int sockfd = user->transferconnfd;
    int skip_bytes = user->skip_byte;
    user->skip_byte = 0;

    int times = skip_bytes / sizeof(buffer);
    while(times--)
        read(filefd, buffer, sizeof(buffer));
    read(filefd, buffer, skip_bytes % sizeof(buffer));
    while (1) {
        int bytes_read = read(filefd, buffer, sizeof(buffer));

        if (bytes_read == 0)
            break;

        if (bytes_read < 0) {
            return NULL;
        }

        void *p = buffer;
        while (bytes_read > 0) {
            int bytes_written = write(sockfd, p, bytes_read);
            if (bytes_written <= 0) {
                return NULL;
            }
            bytes_read -= bytes_written;
            p += bytes_written;
        }
    }
    char *message = "226 Transfer complete.\r\n";
    send_response(user->sockfd, message);
    close(sockfd);
    user->mode = 0;
    return NULL;
}


void *store_file(void *cv){
    struct user_info* user = cv;

    int skip_bytes = user->skip_byte;
    int sockfd = user->transferconnfd;

    user->skip_byte = 0;

    int fp;
    if(skip_bytes == 0)
        fp = open(user->file, O_WRONLY | O_CREAT , S_IRWXG | S_IRWXO | S_IRWXU);
    else
        fp = open(user->file, O_WRONLY | O_APPEND, S_IRWXG | S_IRWXO | S_IRWXU);

    char buffer[8192];
    int p = 0;

    while (1) {
        int bytes_read = read(sockfd, buffer + p, 8191 - p);
        if (bytes_read < 0) {
            close(sockfd);
            break;
        } 
        else if (bytes_read == 0) {
            break;
        }
        int file_state = write(fp, buffer, bytes_read);
        if(file_state == 0){
            break;
        }
    }
    close(fp);
    char *message = "226 Transfer complete.\r\n";
    send_response(user->sockfd, message);
    close(sockfd);
    user->mode = 0;
    return NULL;
}