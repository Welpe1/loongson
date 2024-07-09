#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <termios.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <time.h>
/* 
    M0:GPIO1
    M1:GPIO60
    AUX:GPIO7

*/

#define MAP_SIZE        0x10000
#define REG_BASE        0x1fe00000
#define GENERAL_REG0    0x420
#define GENERAL_REG1    0x428
#define GPIO_EN         0x500
#define GPIO_OUT        0x510
#define GPIO_IN         0x520


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

int uart_receive(int fd,char *buf_rev,size_t rev_len)
{
    int cnt=0;
    memset(buf_rev,0,rev_len);       //清零接收缓冲区
    printf("uart receive start\r\n");
    do{
        while((cnt=read(fd,buf_rev,rev_len))>0)
        {
            buf_rev[cnt]='\0';
            printf("cnt=%d bytes data:%s\n",cnt,buf_rev);
        }
    }while(cnt>=0);
  
    printf("uart receive stop\r\n");
    return 0;

}

int uart_init(void)
{
    int fd;
    char buf[200]="hello world";
    char buf_rev[200];

    fd=open("/dev/ttyS1",O_RDWR);
    if(fd<0){
        printf("open /dev/ttyS1 fail\r\n");
        return fd;
    }

    struct termios opt;
    tcflush(fd,TCIOFLUSH);  //清空串口接收缓冲区
    tcgetattr(fd,&opt);     //获取串口参数

    cfsetospeed(&opt, B9600);
    cfsetispeed(&opt, B9600);
    opt.c_cflag &= ~CSIZE;
    opt.c_cflag |= CS8;
    opt.c_cflag &= ~PARENB;
    opt.c_iflag &= ~INPCK;
    opt.c_cflag &= ~CSTOPB;

    tcsetattr(fd, TCSANOW, &opt);
    printf("UART3 init success:9600bps,8N1\r\n");

    //uart_send(fd,buf,sizeof(buf));
    uart_receive(fd,buf_rev,sizeof(buf_rev));

    close(fd);
    return 0;

}


// int uart_swap(char *buf_send,size_t send_len,char *buf_rev,size_t rev_len)
// {
//     int fd,cnt;
//     fd=open("/dev/ttyS1",O_RDWR | O_NDELAY);    //以非阻塞的方式运行
//     if(fd<0){
//         printf("open /dev/ttyS1 fail\r\n");
//         return fd;
//     }

//     write(fd,buf_send,send_len);

//     memset(buf_rev,0,rev_len);       //清零接收缓冲区
//     while((cnt=read(fd,buf_rev,rev_len-1))>0)
//     {
//         buf_rev[cnt]='\0';
//         printf("cnt=%d",cnt);
//     }

//     close(fd);
//     return 1;

// }



int gpio_init(void)
{

    int fd;

	fd = open("/dev/mem", O_RDWR | O_SYNC);      
    if (fd < 0){
		printf("open /dev/mem failed\r\n");    
		return fd;
	}  

	unsigned char *map_base=(unsigned char * )mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, REG_BASE);

    //修改复用关系
    *((volatile unsigned int *)(map_base + GENERAL_REG0)) &= ~(1<<3);       //GPIO7
    *((volatile unsigned int *)(map_base + GENERAL_REG0)) &= ~(1<<9);       //GPIO60
    // printf("复用_low:%x \r\n", *(volatile unsigned int *)(map_base + GENERAL_REG0)); 
    // printf("复用_high:%x \r\n", *(volatile unsigned int *)(map_base +  GENERAL_REG0+4)); 

    //使能输入/出
    *(volatile unsigned int *)(map_base + GPIO_EN) &= ~(1<<1);         //GPIO1
    *(volatile unsigned int *)(map_base + GPIO_EN + 4) &= ~(1<<28);    //GPIO60
    *(volatile unsigned int *)(map_base + GPIO_EN) |= (1<<7);         //GPIO7


	munmap(map_base,MAP_SIZE);      //解除映射关系
    printf("gpio init success\r\n");
	close(fd);
	return 1;

}

int Lora_mode(unsigned char mode)
{
    int fd;

	fd = open("/dev/mem", O_RDWR | O_SYNC);      
    if (fd < 0){
		printf("open /dev/mem failed\r\n");    
		return fd;
	}  

	unsigned char *map_base=(unsigned char * )mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, REG_BASE);

    //7 60
    switch (mode)
    {
        case 0:{
            *(volatile unsigned int *)(map_base + GPIO_OUT) &= ~(1<<1);       //GPIO1:输出低
            *(volatile unsigned int *)(map_base + GPIO_OUT +4) &= ~(1<<28);    //GPIO60:输出低
        }break;
            
        case 1:{
            *(volatile unsigned int *)(map_base + GPIO_OUT) |= (1<<1);       //GPIO1:输出高
            *(volatile unsigned int *)(map_base + GPIO_OUT +4) &= ~(1<<28);    //GPIO60:输出低
        }break;

        case 2:{
            *(volatile unsigned int *)(map_base + GPIO_OUT) &= ~(1<<1);       //GPIO1:输出低
            *(volatile unsigned int *)(map_base + GPIO_OUT +4) |= (1<<28);    //GPIO60:输出高
        }break;
        
        case 3:{
            *(volatile unsigned int *)(map_base + GPIO_OUT) |= (1<<1);       //GPIO1:输出高
            *(volatile unsigned int *)(map_base + GPIO_OUT +4) |= (1<<28);    //GPIO60:输出高
        }break;

        default:
            break;
    }

    munmap(map_base,MAP_SIZE);      //解除映射关系
    printf("Lora mode is %d\r\n",mode);
	close(fd);
	return 1;

}

int main(int argc,char **argv)
{

    char test_send[20]="Lora test!!!";
    char test_rev[20];

    gpio_init();
    Lora_mode(0);
    uart_init();

    return 0;


}