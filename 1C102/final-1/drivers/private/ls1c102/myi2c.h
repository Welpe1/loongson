#ifndef __MYI2C_H
#define __MYI2C_H

#include "test.h"
#include "ls1x.h"
#include "ls1x_latimer.h"

typedef struct
{
    volatile uint8_t SDA;			/* 分频值低字节寄存器 */
    volatile uint8_t SCL;			/* 分频值高字节寄存器 */
} MyI2C_TypeDef;

void MyI2C_Start(MyI2C_TypeDef* I2Cx);
void MyI2C_Stop(MyI2C_TypeDef* I2Cx);
uint8_t MyI2C_SendData(MyI2C_TypeDef* I2Cx, uint8_t Data);
uint8_t MyI2C_ReceiveData(MyI2C_TypeDef* I2Cx);
uint8_t MyI2C_SendAck(MyI2C_TypeDef* I2Cx,uint8_t AckBit);
uint8_t MyI2C_ReceiveAck(MyI2C_TypeDef* I2Cx);
uint8_t MyI2C_W_Byte(MyI2C_TypeDef* I2Cx,uint8_t SlaveAddr,uint8_t RegAddr,uint8_t data);
uint8_t MyI2C_W_Bytes(MyI2C_TypeDef* I2Cx,uint8_t SlaveAddr,uint8_t RegAddr,uint8_t len,uint8_t *pbuf);
uint8_t MyI2C_R_Byte(MyI2C_TypeDef* I2Cx,uint8_t SlaveAddr,uint8_t RegAddr);
uint8_t MyIIC_R_Bytes(MyI2C_TypeDef* I2Cx,uint8_t SlaveAddr,uint8_t RegAddr,uint8_t len,uint8_t *pbuf);

#endif
