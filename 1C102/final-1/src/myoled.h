#ifndef __MYOLED_H
#define __MYOLED_H

#include "ls1x.h"
#include "myi2c.h"
#include "ls1x_gpio.h"

void MyOLED_W_Command(uint8_t Command);
void MyOLED_W_Data(uint8_t Data);
void MyOLED_WR_Byte(uint8_t dat, uint8_t cmd);
void MyOLED_Init(void);
void MyOLED_Clear(void);
void MyOLED_Full(void);
void MyOLED_Display_On(void);
void MyOLED_Display_Off(void);
void MyOLED_Set_Pos(uint8_t x, uint8_t y);
void MyOLED_TEST(void);



#endif
