#include <string.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>


/*
    TCP通信-服务器端
*/

#define SERVER_PORT     1234
#define BACKLOG         1   

int main(int argc,char **argv)
{
    int server_fd,client_fd,ret;
    int client_num=-1;
    struct sockaddr_in socket_server_addr;
    struct sockaddr_in socket_client_addr;

    unsigned char revbuf[1000];

    server_fd=socket(AF_INET,SOCK_STREAM,0);    //创建一个新的套接字(指定域为iPv4,类型:TCP,协议:默认)
    if(server_fd==-1){
        printf("socket err\r\n");
        return -1;
    }

    socket_server_addr.sin_family=AF_INET;             //设置域为ipv4  与上面的指定域不同，上面的设置它的属性是必须为ipv4，因此这里必须设置为ipv4
    socket_server_addr.sin_port=htons(SERVER_PORT);    //端口
    socket_server_addr.sin_addr.s_addr=INADDR_ANY;     //ip地址(本机所有ip)
    ret=bind(server_fd,(const struct sockaddr*)&socket_server_addr,sizeof(struct sockaddr));    //将套接字与ip地址和域名绑定
    if(ret==-1){
        printf("bind err\r\n");
        return -1;
    }

    ret=listen(server_fd,BACKLOG);   //将套接字设置为监听模式，等待客户端连接请求（最多允许BACKLOG个连接请求）
    if(ret==-1){
        printf("listen err\r\n");
        return -1;
    }    

    while(1){
        int client_len=sizeof(struct sockaddr_in);
        client_fd=accept(server_fd,(struct sockaddr*)&socket_client_addr,&client_len);       //等待连接，如果有就接受
        if(client_fd!=-1){
            char ip_str[50];
            inet_ntop(AF_INET,&(socket_client_addr.sin_addr),ip_str,50);
            printf("Get connected from client:%s\r\n",ip_str);
            while(1){
                //接收客户端的数据并显示
                int revlen=recv(client_fd, revbuf,999,0);
                if(revlen<=0){
                    close(client_fd);
                    return -1;
                }else{
                    revbuf[revlen]='\0';
                    printf("Get data from client:%s\r\n",revbuf);

                }

            }

    
        }


    }


    close(server_fd);
    return 0;




}

