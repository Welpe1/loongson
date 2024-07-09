#include <string.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>


/*
    TCP通信-客户端
*/
#define SERVER_PORT     1234

int main(int argc,char **argv)
{
    int client_fd,ret;
    struct  sockaddr_in socket_server_addr;
    unsigned char sendbuf[1000];

    if(argc!=2){
        printf("Usage err,need ip\r\n");
        return -1;
    }

    client_fd=socket(AF_INET,SOCK_STREAM,0);    //创建套接字

    socket_server_addr.sin_family=AF_INET;
    socket_server_addr.sin_port=htons(SERVER_PORT);    //端口
    ret=inet_aton(argv[1],&socket_server_addr.sin_addr);
    if(ret==0){
        printf("Invalid server ip\r\n");
        return -1;
    }
    ret=connect(client_fd,(const struct sockaddr*)&socket_server_addr,sizeof(struct  sockaddr));    //连接服务器
    if(ret==-1){
        printf("connet err\r\n");
        return -1;
    }

    while(1)
    {
        if(fgets(sendbuf,999,stdin))
        {
            int sendlen=send(client_fd,sendbuf,strlen(sendbuf),0);
            if(sendlen<=0){
                close(client_fd);
                return -1;
            }
        }
        
        
    }



    return 0;

}
