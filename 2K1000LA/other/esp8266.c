#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <termios.h>
#include <string.h>
#include <sys/ioctl.h>
#include <time.h>

int uart_receive(int fd,char *buf_rev,size_t rev_len)
{
    int cnt=0;
    memset(buf_rev,0,rev_len);       //清零接收缓冲区
    printf("uart receive start\r\n");
    while((cnt=read(fd,buf_rev,rev_len-1))>1)   //-1确保有空间放置终止符号
    {
        buf_rev[cnt]='\0';
        printf("cnt=%d bytes data:%s\r\n",cnt,buf_rev);
    }

    printf("uart receive stop\r\n");
    return 0;
    

//     while((cnt=read(fd,buf_rev,rev_len-1))>1)   //-1确保有空间放置终止符号
//     {
//         buf_rev[cnt]='\0';
//         printf("cnt=%d bytes data:%s\r\n",cnt,buf_rev);
//     }

//     printf("uart receive stop\r\n");
//     return 0;
    
}

int uart_send(int fd,char *buf_send,size_t send_len)
{
    int ret=0;
    printf("uart send start\r\n");
    ret=write(fd,buf_send,send_len);
    if(ret<0){
        return ret;
    }
    printf("uart send stop\r\n");
    return ret;
}

int uart_init(int fd,speed_t buadrate)
{
    //串口参数设置
    struct termios opt;
    tcflush(fd, TCIOFLUSH);//清空串口接收缓冲区
    tcgetattr(fd, &opt);// 获取串口参数opt
    cfsetospeed(&opt, buadrate);     //设置串口输出波特率
    cfsetispeed(&opt, buadrate);     //设置串口输入波特率
    
    //设置数据位数为8位
    opt.c_cflag &= ~CSIZE;
    opt.c_cflag |= CS8;
    //校验位
    opt.c_cflag &= ~PARENB;
    opt.c_iflag &= ~INPCK;
    //设置停止位为1为
    opt.c_cflag &= ~CSTOPB;
    
    tcsetattr(fd, TCSANOW, &opt);//更新配置
    printf("%dbps,8N1\r\n",(int)buadrate);




}



void esp8266_init(int fd)
{
    char rev[50];
    uart_send(fd,"AT\r\n",sizeof("AT\r\n"));
    uart_receive(fd,rev,sizeof(rev));
    printf("rev=%s\r\n",rev);

    sleep(1);
    uart_send(fd,"AT+RST\r\n",sizeof("AT+RST\r\n"));
    sleep(1);
    uart_send(fd,"AT+CWMODE=1\r\n",sizeof("AT+CWMODE=1\r\n"));
    sleep(1);
    uart_send(fd,"AT+CMJAP='welpe','12345678'\r\n",sizeof("AT+CMJAP='welpe','12345678'\r\n"));
    sleep(1);

    
   
  


}

int main(int argc,char **argv)
{
    int fd,res=0;
    char buf[20]="123124141\r\n";
    char rev[20];


    fd=open("/dev/ttyS1",O_RDWR);      //UART3
    if(fd<0){
        printf("open ttyS0 fail\r\n");
        return 0;
    }

    uart_init(fd,B115200);

    esp8266_init(fd);


    // uart_send(fd,buf,sizeof(buf));

    // uart_receive(fd,rev,sizeof(rev));


    close(fd);
    return 0;


}
