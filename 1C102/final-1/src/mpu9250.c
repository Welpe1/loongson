#include "mpu9250.h"


MyI2C_TypeDef MPU9250_I2C={56,63};


void MPU9250_Init(void)
{
    gpio_pin_remap(MPU9250_I2C.SDA,GPIO_FUNC_GPIO);
    gpio_pin_remap(MPU9250_I2C.SCL,GPIO_FUNC_GPIO);

    MyI2C_W_Byte(&MPU9250_I2C,MPU9250_ADDRESS,PWR_MGMT_1,0x00);
    MyI2C_W_Byte(&MPU9250_I2C,MPU9250_ADDRESS,SMPLRT_DIV, 0x07);
	MyI2C_W_Byte(&MPU9250_I2C,MPU9250_ADDRESS,CONFIG, 0x06);
	MyI2C_W_Byte(&MPU9250_I2C,MPU9250_ADDRESS,GYRO_CONFIG, 0x18);
	MyI2C_W_Byte(&MPU9250_I2C,MPU9250_ADDRESS,ACCEL_CONFIG, 0x01); 

   
}

uint8_t MPU9250_GetID(void)
{
	return MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,0x75);
}



uint16_t MPU9250_Get_Temperature(void)
{
    uint8_t temp_h,temp_l;
    temp_l=MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,0x41);
    temp_h=MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,0x42);
    return (temp_h << 8) | temp_l;
}


//获取原始数据
void MPU9250_GetRawData(MPU9250_Data *Mpu)
{

   
    Mpu->Accel[0]=(MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,ACCEL_XOUT_H)<<8 | MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,ACCEL_XOUT_L));
    Mpu->Accel[1]=(MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,ACCEL_YOUT_H)<<8 | MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,ACCEL_YOUT_L));
    Mpu->Accel[2]=(MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,ACCEL_ZOUT_H)<<8 | MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,ACCEL_ZOUT_L));
    
    //角速度
    Mpu->Gyro[0]=(MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,GYRO_XOUT_H)<<8 | MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,GYRO_XOUT_L));
    Mpu->Gyro[1]=(MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,GYRO_YOUT_H)<<8 | MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,GYRO_YOUT_L));
    Mpu->Gyro[2]=(MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,GYRO_ZOUT_H)<<8 | MyI2C_R_Byte(&MPU9250_I2C,MPU9250_ADDRESS,GYRO_ZOUT_L));
    
    //磁场强度
    MyI2C_W_Byte(&MPU9250_I2C,MPU9250_ADDRESS,0x37,0x02);//打开Bypass Mode，磁力计的数据将绕过MPU9250，可以直接访问磁力计寄存器
    delay_ms(20);//等待MPU9250切换到Bypass Mode
    MyI2C_W_Byte(&MPU9250_I2C,MAG_ADDRESS,0x0A, 0x011);//设置磁力计为单次采样模式（仅能使用这种模式）
    delay_ms(20);
    Mpu->Mag[0]=(MyI2C_R_Byte(&MPU9250_I2C,MAG_ADDRESS,MAG_XOUT_H)<<8 | MyI2C_R_Byte(&MPU9250_I2C,MAG_ADDRESS,MAG_XOUT_L));
    Mpu->Mag[1]=(MyI2C_R_Byte(&MPU9250_I2C,MAG_ADDRESS,MAG_YOUT_H)<<8 | MyI2C_R_Byte(&MPU9250_I2C,MAG_ADDRESS,MAG_YOUT_L));
    Mpu->Mag[2]=(MyI2C_R_Byte(&MPU9250_I2C,MAG_ADDRESS,MAG_ZOUT_H)<<8 | MyI2C_R_Byte(&MPU9250_I2C,MAG_ADDRESS,MAG_ZOUT_L));
    
}