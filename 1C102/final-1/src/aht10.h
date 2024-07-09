#ifndef __AHT10_H
#define __AHT10_H

#include "ls1x.h"
#include "myi2c.h"
#include "ls1x_gpio.h"
#include "Config.h"

#define ATH10_ADDR  0x70
#define ATH10_W     0x70
#define ATH10_R     0x71

typedef struct
{
    volatile int32_t tempture;			
    volatile int32_t humidity;		
} AHT10_TypeDef;



void AHT10_Init(void);
uint8_t ATH10_Check(void);
uint8_t ATH10_ReadData(AHT10_TypeDef* ATH10x);

#endif
