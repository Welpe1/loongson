#include "aht10.h"
#include "ls1x_latimer.h"
#include "ls1x_uart.h"


MyI2C_TypeDef ATH10_I2C={63,54};

void AHT10_Init(void)
{
    gpio_pin_remap(ATH10_I2C.SDA,GPIO_FUNC_GPIO);
    gpio_pin_remap(ATH10_I2C.SCL,GPIO_FUNC_GPIO);



    MyI2C_Start(&ATH10_I2C);
    MyI2C_SendData(&ATH10_I2C,ATH10_ADDR);
    MyI2C_ReceiveAck(&ATH10_I2C);
    MyI2C_SendData(&ATH10_I2C,0xE1);
    MyI2C_ReceiveAck(&ATH10_I2C);
    MyI2C_SendData(&ATH10_I2C,0x08);
    MyI2C_ReceiveAck(&ATH10_I2C);
    MyI2C_SendData(&ATH10_I2C,0x00);
    MyI2C_ReceiveAck(&ATH10_I2C);
    MyI2C_Stop(&ATH10_I2C);
    delay_ms(200);

}

uint8_t ATH10_Check(void)
{
    uint8_t ack=0;
    MyI2C_Start(&ATH10_I2C);
    MyI2C_SendData(&ATH10_I2C,ATH10_ADDR);
    ack=MyI2C_ReceiveAck(&ATH10_I2C);
    MyI2C_Stop(&ATH10_I2C);
    return ack;

}

uint8_t ATH10_ReadData(AHT10_TypeDef* ATH10x)
{
    uint8_t rev=0;
    uint32_t SRH=0,ST=0;
    uint8_t buf[6];
    // MyI2C_W_Bytes(&ATH10_I2C,ATH10_ADDR,0xAC,2,);

    // uint8_t MyI2C_W_Bytes(MyI2C_TypeDef* I2Cx,uint8_t SlaveAddr,uint8_t RegAddr,uint8_t len,uint8_t *pbuf)

    MyI2C_Start(&ATH10_I2C);
    MyI2C_SendData(&ATH10_I2C,ATH10_W);
    MyI2C_ReceiveAck(&ATH10_I2C);
    MyI2C_SendData(&ATH10_I2C,0xAC);
    MyI2C_ReceiveAck(&ATH10_I2C);
    MyI2C_SendData(&ATH10_I2C,0x33);
    MyI2C_ReceiveAck(&ATH10_I2C);
    MyI2C_SendData(&ATH10_I2C,0x00);
    MyI2C_ReceiveAck(&ATH10_I2C);
    MyI2C_Stop(&ATH10_I2C);

    delay_ms(50);

    //rev=MyI2C_R_Byte(&ATH10_I2C,ATH10_ADDR,ATH10_R);

    MyI2C_Start(&ATH10_I2C);
    MyI2C_SendData(&ATH10_I2C,ATH10_R);
    MyI2C_ReceiveAck(&ATH10_I2C);
    rev=MyI2C_ReceiveData(&ATH10_I2C);
    printf("rev=%d\r\n",rev);


    if((rev&0x40)==0)
    {
        for(uint8_t i=0;i<5;i++){
            buf[i]=MyI2C_ReceiveData(&ATH10_I2C);
            MyI2C_SendAck(&ATH10_I2C,1);
        }
        MyI2C_Stop(&ATH10_I2C);

        SRH=(buf[0]<<12)+(buf[1]<<4)+(buf[2]>>4);
		ST=((buf[2]&0X0fF<<16)+(buf[3]<<8)+(buf[4]));
        ATH10x->humidity=(int)(SRH*100/1024/1024);
        ATH10x->tempture=((int)(ST*2000/1024/1024))/10-50;
        return 1;

    }
    else{

        ATH10x->humidity=1111;
        ATH10x->tempture=2222;

    }
    MyI2C_Stop(&ATH10_I2C);
    return 0;

}