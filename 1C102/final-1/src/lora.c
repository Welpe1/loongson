#include "lora.h"
#include "ls1x_uart.h"

/*
    默认使用UART1
    8:RX
 */
void Lora_Init(void)
{
    Uart1_init(9600);
}

void Lora_Send(uint8_t *buf,uint8_t len)
{
    buf[0]=0x11;
    buf[1]=0x22;
    Uart_W_Bytes(UART1,buf,len);

}


