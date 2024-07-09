#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "esp8266.h"
#include "ls1c102_interrupt.h"
#include "oled96.h"
#include "myoled.h"
#include "aht10.h"
#include "ls1x_uart.h"
#include "lora.h"
#include "light.h"
#include "mpu9250.h"
#include "myesp8266.h"



int main(void)
{
    AHT10_TypeDef ATH101;
    MPU9250_Data Mpu1;
    uint16_t tempture=0;
    uint16_t light=0;
    uint8_t buf[16];

    OLED_Init();
    Light_Init();
    AHT10_Init();
    MPU9250_Init();
    Lora_Init();

    OLED_Clear();




    while(1)
    {

        // delay_ms(500);

        tempture=MPU9250_Get_Temperature();
        MPU9250_GetRawData(&Mpu1);
        light=Light_Get();

        OLED_ShowString(1,1,"tem=");
        OLED_ShowNum(1,5,tempture,5);
        OLED_ShowString(2,1,"mag=");
        OLED_ShowNum(2,5,Mpu1.Mag[1],5);
        OLED_ShowString(3,1,"light=");
        OLED_ShowNum(3,7,light,5);

    

        //温度 光照 磁场012 高位先行

        buf[2]=tempture>>8;
        buf[3]=tempture&0xFF;
        buf[4]=light>>8;
        buf[5]=light&0xFF;
        for(uint8_t i=0;i<3;i++){
            if(Mpu1.Mag[i]>=0) buf[6+i*3]=1;  //6 9 12 符号位 0为负 1为正
            else {
                buf[6+i*3]=0;
                Mpu1.Mag[i]=-Mpu1.Mag[i];
            }

            buf[6+i*3+1]=Mpu1.Mag[i]>>8;
            buf[6+i*3+2]=Mpu1.Mag[i]&0xFF;
        }
        buf[15]=0x0A;

    
        Lora_Send(buf,16);

       



    }
}











