#include "light.h"

void Light_Init(void)
{
    AFIO_RemapConfig(AFIOB, GPIO_Pin_4, 0);
    Adc_powerOn();//adc电源开启
    Adc_open(ADC_CHANNEL_I5);//打开通道0
}

int Light_Get(void)
{
    int value=0;
    value=Adc_Measure(ADC_CHANNEL_I5);  //GPIO15
    return value;

}
