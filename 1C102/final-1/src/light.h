#ifndef __LIGHT_H
#define __LIGHT_H


#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ls1c102_adc.h"


void Light_Init(void);
int Light_Get(void);


#endif
