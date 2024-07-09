#include <string.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>

/*
    UDP-服务器端
*/

#define SERVER_PORT     1234

int main(int argc,char **argv)
{
    int server_fd,ret;
    unsigned char revbuf[1000];
    struct sockaddr_in  socket_server_addr;
    struct sockaddr_in  socket_client_addr;


    server_fd=socket(AF_INET,SOCK_DGRAM,0);
    if(server_fd==-1){
        printf("socket err\r\n");
        return -1;
    }

    socket_server_addr.sin_family=AF_INET;
    socket_server_addr.sin_port=htons(SERVER_PORT);
    socket_server_addr.sin_addr.s_addr=INADDR_ANY;
    ret=bind(server_fd,(const struct sockaddr*)&socket_server_addr,sizeof(struct sockaddr));
    if(ret==-1){
        printf("bind err\r\n");
        return -1;
    }

    while(1){
        int addrlen=sizeof(struct  sockaddr);
        int revlen=recvfrom(server_fd,revbuf,999,0,(struct sockaddr*)&socket_client_addr,&addrlen);
        if(revlen>0){
            revbuf[revlen]='\0';
            char ip_str[50];
            inet_ntop(AF_INET,&(socket_client_addr.sin_addr),ip_str,50);
            printf("Get data from client %s:%s\r\n",ip_str,revbuf);
        }
    }
    close(server_fd);
    return 0;



}



	   
	