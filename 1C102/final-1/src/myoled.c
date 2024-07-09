#include "myoled.h"
#include "ls1x_latimer.h"

MyI2C_TypeDef MyOLED_I2C={4,5};

void MyOLED_W_Command(uint8_t Command)
{
    MyI2C_Start(&MyOLED_I2C);
    MyI2C_SendData(&MyOLED_I2C,0x78); // 发送I2C设备的地址，表示要发送数据给该设备
    MyI2C_ReceiveAck(&MyOLED_I2C);
    MyI2C_SendData(&MyOLED_I2C,0x00); 
    MyI2C_ReceiveAck(&MyOLED_I2C);
    MyI2C_SendData(&MyOLED_I2C,Command); 
    MyI2C_ReceiveAck(&MyOLED_I2C);
    MyI2C_Stop(&MyOLED_I2C);
   
}

void MyOLED_W_Data(uint8_t Data)
{
    MyI2C_Start(&MyOLED_I2C);
    MyI2C_SendData(&MyOLED_I2C,0x78); // 发送I2C设备的地址，表示要发送数据给该设备
    MyI2C_ReceiveAck(&MyOLED_I2C);
    MyI2C_SendData(&MyOLED_I2C,0x40); 
    MyI2C_ReceiveAck(&MyOLED_I2C);
    MyI2C_SendData(&MyOLED_I2C,Data); 
    MyI2C_ReceiveAck(&MyOLED_I2C);
    MyI2C_Stop(&MyOLED_I2C);
   
}



// ==========================================================================
// 初始化液晶模块
void MyOLED_Init(void)
{
    gpio_pin_remap(MyOLED_I2C.SDA,GPIO_FUNC_GPIO);
    gpio_pin_remap(MyOLED_I2C.SCL,GPIO_FUNC_GPIO);


    MyOLED_W_Command(0xAE);
    MyOLED_W_Command(0xD5);    
    MyOLED_W_Command(0x80);    
    MyOLED_W_Command(0xA8);   
    MyOLED_W_Command(0x3F);  
    MyOLED_W_Command(0xD3);    
    MyOLED_W_Command(0x00);   
    MyOLED_W_Command(0x40);    
    MyOLED_W_Command(0xA1);    
    MyOLED_W_Command(0xC8);    
    MyOLED_W_Command(0xDA);   
    MyOLED_W_Command(0x12);    
    MyOLED_W_Command(0x81);    
    MyOLED_W_Command(0xCF);    
    MyOLED_W_Command(0xD9);   
    MyOLED_W_Command(0xF1);    
    MyOLED_W_Command(0xDB);   
    MyOLED_W_Command(0x30);
    MyOLED_W_Command(0xA4);    
    MyOLED_W_Command(0xA6);   
    MyOLED_W_Command(0x8D);   
    MyOLED_W_Command(0x14);    
    MyOLED_W_Command(0xAF);    
    

}

void MyOLED_Set_Pos(uint8_t x, uint8_t y)
{
	MyOLED_W_Command(0xb0 | y);// 纵坐标以字节为单位，0~7
	MyOLED_W_Command(0x10 | (((x) & 0xf0)>>4));
	MyOLED_W_Command(((x) & 0x0f));
}


// ==========================================================================
void MyOLED_Clear(void)
{
    uint8_t i, j;
    for(i = 0; i < 8; i++)// 8行，每行16个字节，每个字节纵向排列
    {
        MyOLED_Set_Pos(0,i);
        for(j = 0; j < 128; j++)
        {
            MyOLED_W_Data(0);// 平均0.075s 。
        }
    }
}

// ==========================================================================
void MyOLED_Full(void)
{
    uint8_t i, n;
    for(i = 0; i < 8; i++)// 8行，每行16个字节，每个字节纵向排列
    {
        MyOLED_W_Command(0xb0 + i);  //设置页地址（0~7）
        MyOLED_W_Command(0x00);      //设置显示位置—列低地址
        MyOLED_W_Command(0x10);      //设置显示位置—列高地址
        for(n = 0; n < 128; n++)
        {
            MyOLED_W_Data(0xFF);
        }
    }
}

// ==========================================================================
// 开启OLED显示
void MyOLED_Display_On(void)
{
    MyOLED_W_Command(0X8D);  // SET DCDC 命令
    MyOLED_W_Command(0X14);  // DCDC ON
    MyOLED_W_Command(0XAF);  // DISPLAY ON
}

// ==========================================================================
// 关闭OLED显示
void MyOLED_Display_Off(void)
{
    MyOLED_W_Command(0X8D);  // SET DCDC 命令
    MyOLED_W_Command(0X10);  // DCDC OFF
    MyOLED_W_Command(0XAE);  // DISPLAY OFF
}




void MyOLED_TEST(void)
{
    uint8_t i, n;
    for(i = 3; i < 5; i++)// 8行，每行16个字节，每个字节纵向排列
    {
        MyOLED_W_Command(0xb0 + i);  //设置页地址（0~7）
        MyOLED_W_Command(0x00);      //设置显示位置—列低地址
        MyOLED_W_Command(0x10);      //设置显示位置—列高地址
        for(n = 0; n < 128; n++)
        {
            MyOLED_W_Data(0xFF);
        }
    }
}




