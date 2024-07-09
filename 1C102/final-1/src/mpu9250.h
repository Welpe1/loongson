#ifndef __MPU9250_H
#define __MPU9250_H

#include "ls1x.h"
#include "ls1x_gpio.h"
#include "myi2c.h"

#define	SMPLRT_DIV		0x19 
#define	CONFIG			0x1A	
#define	GYRO_CONFIG		0x1B	
#define	ACCEL_CONFIG	0x1C	

#define	ACCEL_XOUT_H	0x3B
#define	ACCEL_XOUT_L	0x3C
#define	ACCEL_YOUT_H	0x3D
#define	ACCEL_YOUT_L	0x3E
#define	ACCEL_ZOUT_H	0x3F
#define	ACCEL_ZOUT_L	0x40

#define	TEMP_OUT_H		0x41
#define	TEMP_OUT_L		0x42

#define	GYRO_XOUT_H		0x43
#define	GYRO_XOUT_L		0x44	
#define	GYRO_YOUT_H		0x45
#define	GYRO_YOUT_L		0x46
#define	GYRO_ZOUT_H		0x47
#define	GYRO_ZOUT_L		0x48
	
#define MAG_XOUT_L		0x03
#define MAG_XOUT_H		0x04
#define MAG_YOUT_L		0x05
#define MAG_YOUT_H		0x06
#define MAG_ZOUT_L		0x07
#define MAG_ZOUT_H		0x08

#define	PWR_MGMT_1		0x6B	
#define	WHO_AM_I		0x75	

#define MAG_ADDRESS     0x18  
#define MPU9250_ADDRESS		0xD0  

typedef struct{
    int16_t Accel[3];
    int16_t Gyro[3];
    int16_t Mag[3];
   
}MPU9250_Data;



void MPU9250_Init(void);
uint8_t MPU9250_GetID(void);
uint16_t MPU9250_Get_Temperature(void);
void MPU9250_GetRawData(MPU9250_Data *Mpu);

#endif
