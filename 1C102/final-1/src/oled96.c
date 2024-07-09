#include "oled96.h"
#include "oled_font.h"
#include "ls1c102_i2c.h"
#include "ls1x_latimer.h"
#include "ls1x.h"
#include "ls1x_gpio.h"
#include "ls1x_wdg.h"


void I2C_delay(void)
{
    for(volatile int j = 200; j; j--){
        ;
    }
}


void OLED_WriteCommand(uint8_t IIC_Command)
{
    I2C_GenerateSTART(I2C,ENABLE);  // 函数产生起始信号，表示开始传输数据。

    I2C_SendData(I2C,OLED_I2C_ADR); // 发送I2C设备的地址，表示要发送数据给该设备
    I2C_wait(I2C);                 //函数等待操作完成

    I2C_SendData(I2C,0x00);         // 发送命令类型，一般是0x00表示写入命令。
    I2C_wait(I2C);
    
    I2C_SendData(I2C,IIC_Command);  //发送具体的命令值。
    I2C_wait(I2C);
    
    I2C_GenerateSTOP(I2C,ENABLE);  //产生停止信号，表示传输结束
}


// ==========================================================================
//I2C设备发送数据
void OLED_WriteData(uint8_t IIC_Data)
{
    I2C_GenerateSTART(I2C,ENABLE);  //产生起始信号，表示开始传输数据
    
    I2C_SendData(I2C,OLED_I2C_ADR); // 发送I2C设备的地址，表示要发送数据给该设备
    I2C_wait(I2C);                  //函数等待操作完成
    
    I2C_SendData(I2C,0x40);
    I2C_wait(I2C);
    
    I2C_SendData(I2C,IIC_Data);
    I2C_wait(I2C);
    
    I2C_GenerateSTOP(I2C,ENABLE);
    I2C_wait(I2C);
}


// ==========================================================================
// 初始化液晶模块
void OLED_Init(void)
{

	gpio_pin_remap(GPIO_PIN_4,GPIO_FUNC_MAIN);//引脚复用4：scl
    gpio_pin_remap(GPIO_PIN_5,GPIO_FUNC_MAIN);//引脚复用5：sda

	I2C_InitTypeDef I2C_InitStruct;
    I2C_StructInit(&I2C_InitStruct);

    I2C_Init(I2C, &I2C_InitStruct);

   	OLED_WriteCommand(0xAE);	//关闭显示
	
	OLED_WriteCommand(0xD5);	//设置显示时钟分频比/振荡器频率
	OLED_WriteCommand(0x80);
	
	OLED_WriteCommand(0xA8);	//设置多路复用率
	OLED_WriteCommand(0x3F);
	
	OLED_WriteCommand(0xD3);	//设置显示偏移
	OLED_WriteCommand(0x00);
	
	OLED_WriteCommand(0x40);	//设置显示开始行
	
	OLED_WriteCommand(0xA1);	//设置左右方向，0xA1正常 0xA0左右反置
	
	OLED_WriteCommand(0xC8);	//设置上下方向，0xC8正常 0xC0上下反置

	OLED_WriteCommand(0xDA);	//设置COM引脚硬件配置
	OLED_WriteCommand(0x12);
	
	OLED_WriteCommand(0x81);	//设置对比度控制
	OLED_WriteCommand(0xCF);

	OLED_WriteCommand(0xD9);	//设置预充电周期
	OLED_WriteCommand(0xF1);

	OLED_WriteCommand(0xDB);	//设置VCOMH取消选择级别
	OLED_WriteCommand(0x30);

	OLED_WriteCommand(0xA4);	//设置整个显示打开/关闭

	OLED_WriteCommand(0xA6);	//设置正常/倒转显示

	OLED_WriteCommand(0x8D);	//设置充电泵
	OLED_WriteCommand(0x14);

	OLED_WriteCommand(0xAF);	//开启显示
		
	OLED_Clear();				//OLED清屏
}



void OLED_SetCursor(uint8_t Y, uint8_t X)
{
	OLED_WriteCommand(0xB0 | Y);					//设置Y位置
	OLED_WriteCommand(0x10 | ((X & 0xF0) >> 4));	//设置X位置高4位
	OLED_WriteCommand(0x00 | (X & 0x0F));			//设置X位置低4位
}


void OLED_Clear(void)
{  
	uint8_t i, j;
	for (j = 0; j < 8; j++)
	{
		OLED_SetCursor(j, 0);
		for(i = 0; i < 128; i++)
		{
			OLED_WriteData(0x00);
		}
	}
}

void OLED_Full(void)
{
   uint8_t i, j;
	for (j = 0; j < 8; j++)
	{
		OLED_SetCursor(j, 0);
		for(i = 0; i < 128; i++)
		{
			OLED_WriteData(0xFF);
		}
	}
}



/*
    Line:1~4
    Column:1~16

 */
void OLED_ShowChar(uint8_t Line, uint8_t Column, char Char)
{      	
	uint8_t i;
	OLED_SetCursor((Line - 1) * 2, (Column - 1) * 8);		//设置光标位置在上半部分
	for (i = 0; i < 8; i++)
	{
		OLED_WriteData(Char_Font_16x8[Char - ' '][i]);			//显示上半部分内容
	}
	OLED_SetCursor((Line - 1) * 2 + 1, (Column - 1) * 8);	//设置光标位置在下半部分
	for (i = 0; i < 8; i++)
	{
		OLED_WriteData(Char_Font_16x8[Char - ' '][i + 8]);		//显示下半部分内容
	}
}


uint32_t OLED_Pow(uint32_t X, uint32_t Y)
{
	uint32_t Result = 1;
	while (Y--)
	{
		Result *= X;
	}
	return Result;
}

void OLED_ShowNum(uint8_t Line, uint8_t Column, uint32_t Number, uint8_t Length)
{
	uint8_t i;
	for (i = 0; i < Length; i++)							
	{
		OLED_ShowChar(Line, Column + i, Number / OLED_Pow(10, Length - i - 1) % 10 + '0');
	}
}

void OLED_ShowString(uint8_t Line, uint8_t Column, char *String)
{
	uint8_t i;
	for (i = 0; String[i] != '\0'; i++)
	{
		OLED_ShowChar(Line, Column + i, String[i]);
	}
}
