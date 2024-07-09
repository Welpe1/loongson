#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>

#define MAP_SIZE        0x10000
#define AUDIO_REG_BASE  0x1fe00000

#define GPIO_EN         0x500
#define GPIO_OUT        0x510
#define GPIO_IN         0x520

//控制GPIO7
#define GPIO_PIN        7

int main(int argc, char **argv)
{
    int fd, offset, gpio_move,i;
	fd = open("/dev/mem", O_RDWR | O_SYNC);      

	if (fd < 0)  
	{
		printf("open(/dev/mem) failed.");    
		return -1;
	}  
    

	unsigned char *map_base=(unsigned char * )mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, AUDIO_REG_BASE );

	printf("EN_low:%x \n", *(volatile unsigned int *)(map_base + GPIO_EN)); //打印该寄存器地址的value
    printf("EN_high:%x \n", *(volatile unsigned int *)(map_base + GPIO_EN+4)); 
    
    printf("复用_low:%x \n", *(volatile unsigned int *)(map_base + 0x420)); 
    printf("复用_high:%x \n", *(volatile unsigned int *)(map_base +  0x424)); 

    *((volatile unsigned int *)(map_base + 0x420)) &= ~(1<<3);

    
    if(GPIO_PIN > 31) {
        offset = 4;
        gpio_move = GPIO_PIN - 32;
    } else {
        offset = 0;
        gpio_move = GPIO_PIN;
    }

	*(volatile unsigned int *)(map_base + GPIO_EN + offset) &= ~(1<<gpio_move);         //GPIO输出使能

    for(i=0;i<5000;i++) {
	    *(volatile unsigned int *)(map_base + GPIO_OUT + offset) |= (1<<gpio_move);     //输出高
	    usleep(370);
	    *(volatile unsigned int *)(map_base + GPIO_OUT + offset) &= ~(1<<gpio_move);    //输出底
	    usleep(370);
    }

	munmap(map_base,MAP_SIZE);//解除映射关系

	if(fd)
		close(fd);

	return 0;
}
