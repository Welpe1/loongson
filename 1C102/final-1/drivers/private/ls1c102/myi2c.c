#include "Config.h"
#include "myi2c.h"
#include "ls1x_latimer.h"
#include "ls1x_gpio.h"

void MyI2C_Start(MyI2C_TypeDef* I2Cx)
{
    gpio_write_pin(I2Cx->SDA, 1);
    //delay_us(2);
    gpio_write_pin(I2Cx->SCL, 1);
    //delay_us(2);
    gpio_write_pin(I2Cx->SDA, 0);
    //delay_us(2);
    gpio_write_pin(I2Cx->SCL, 0);
    //delay_us(2);
 
}

void MyI2C_Stop(MyI2C_TypeDef* I2Cx)
{
    gpio_write_pin(I2Cx->SDA, 0);
    //delay_us(2);
    gpio_write_pin(I2Cx->SCL, 1);
    //delay_us(2);
    gpio_write_pin(I2Cx->SDA, 1);
    //delay_us(2);
}

uint8_t MyI2C_SendAck(MyI2C_TypeDef* I2Cx,uint8_t AckBit)
{

    if(AckBit>0){
        gpio_write_pin(I2Cx->SDA, 1);
    }else{
        gpio_write_pin(I2Cx->SDA, 0);
    }
   
    //delay_us(2);
    gpio_write_pin(I2Cx->SCL, 1);
    //delay_us(2);
    gpio_write_pin(I2Cx->SCL, 0);
    //delay_us(2);

}

uint8_t MyI2C_ReceiveAck(MyI2C_TypeDef* I2Cx)
{
    uint8_t AckBit;

    //
    gpio_write_pin(I2Cx->SCL, 0);
    //


    gpio_write_pin(I2Cx->SDA,1);
    //delay_us(2);
    gpio_write_pin(I2Cx->SCL, 1);
    //delay_us(2);
    AckBit=gpio_get_pin(I2Cx->SDA);
    gpio_write_pin(I2Cx->SCL, 0);
    //delay_us(2);
    return AckBit;

}


uint8_t MyI2C_SendData(MyI2C_TypeDef* I2Cx, uint8_t Data)	
{
    for(uint8_t i=0;i<8;i++){
        if((Data&(0x80>>i))>0){
            gpio_write_pin(I2Cx->SDA,1);
        }else{
            gpio_write_pin(I2Cx->SDA,0);
        }
        //delay_us(2);
        gpio_write_pin(I2Cx->SCL, 1);
        //delay_us(2);
        gpio_write_pin(I2Cx->SCL, 0);
        //delay_us(2);
    }


}

uint8_t MyI2C_ReceiveData(MyI2C_TypeDef* I2Cx)
{
    uint8_t data=0x00;
    gpio_write_pin(I2Cx->SCL,0);
    gpio_write_pin(I2Cx->SDA,1);
    for(uint8_t i=0;i<8;i++){
        gpio_write_pin(I2Cx->SCL, 1);
        //delay_us(2);
        if(gpio_get_pin(I2Cx->SDA)==1){
            data |= (1 << (7 - i));
        }
        gpio_write_pin(I2Cx->SCL, 0);
        //delay_us(2);
    }
    return data;
}



/*向指定寄存器写入数据
 *SlaveAddr从机地址
 *RegAddr寄存器
 *data数据
*/
uint8_t MyI2C_W_Byte(MyI2C_TypeDef* I2Cx,uint8_t SlaveAddr,uint8_t RegAddr,uint8_t data)
{
    MyI2C_Start(I2Cx);
    MyI2C_SendData(I2Cx,SlaveAddr);
    if(MyI2C_ReceiveAck(I2Cx)==1)//IIC 0 表示应答
    {
        MyI2C_Stop(I2Cx);
        return 0;//失败
    }
    MyI2C_SendData(I2Cx,RegAddr);
    MyI2C_ReceiveAck(I2Cx);
    MyI2C_SendData(I2Cx,data);
    MyI2C_ReceiveAck(I2Cx);
    MyI2C_Stop(I2Cx);
    return 1;//成功
}


uint8_t MyI2C_W_Bytes(MyI2C_TypeDef* I2Cx,uint8_t SlaveAddr,uint8_t RegAddr,uint8_t len,uint8_t *pbuf)
{
    MyI2C_Start(I2Cx);
    MyI2C_SendData(I2Cx,SlaveAddr);
    if(MyI2C_ReceiveAck(I2Cx)==1)//IIC 0 表示应答
    {
        MyI2C_Stop(I2Cx);
        return 0;//失败
    }
    MyI2C_SendData(I2Cx,RegAddr);
    MyI2C_ReceiveAck(I2Cx);
    for(uint8_t i=0;i<len;i++)
    {
        MyI2C_SendData(I2Cx,pbuf[i]);
        if(MyI2C_ReceiveAck(I2Cx)==1)//IIC 0 表示应答
        {
            MyI2C_Stop(I2Cx);
            return 0;//失败
        }
    }
    MyI2C_Stop(I2Cx);
    return 1;//成功

}

uint8_t MyI2C_R_Byte(MyI2C_TypeDef* I2Cx,uint8_t SlaveAddr,uint8_t RegAddr)
{
    uint8_t receive=0;
    MyI2C_Start(I2Cx);
    MyI2C_SendData(I2Cx,SlaveAddr);
    if(MyI2C_ReceiveAck(I2Cx)==1)//IIC 0 表示应答
    {
        MyI2C_Stop(I2Cx);
        return 0;//失败
    }
    MyI2C_SendData(I2Cx,RegAddr);
    MyI2C_ReceiveAck(I2Cx);
    MyI2C_Stop(I2Cx);
    MyI2C_Start(I2Cx);;
    MyI2C_SendData(I2Cx,SlaveAddr+1);
    if(MyI2C_ReceiveAck(I2Cx)==1)//IIC 0 表示应答
    {
        MyI2C_Stop(I2Cx);
        return 0;//失败
    }
    receive=MyI2C_ReceiveData(I2Cx);
    MyI2C_SendAck(I2Cx,1);//不产生应答
    MyI2C_Stop(I2Cx);
    return receive;//成功
}

uint8_t MyIIC_R_Bytes(MyI2C_TypeDef* I2Cx,uint8_t SlaveAddr,uint8_t RegAddr,uint8_t len,uint8_t *pbuf)
{
    MyI2C_Start(I2Cx);
    MyI2C_SendData(I2Cx,SlaveAddr);
    if(MyI2C_ReceiveAck(I2Cx)==1)//IIC 0 表示应答
    {
        MyI2C_Stop(I2Cx);
        return 0;//失败
    }
    MyI2C_SendData(I2Cx,RegAddr);
    MyI2C_ReceiveAck(I2Cx);
    MyI2C_Stop(I2Cx);
    MyI2C_Start(I2Cx);;
    MyI2C_SendData(I2Cx,SlaveAddr+1);
    if(MyI2C_ReceiveAck(I2Cx)==1)//IIC 0 表示应答
    {
        MyI2C_Stop(I2Cx);
        return 0;//失败
    }
    while(len)
    {
        *pbuf= MyI2C_ReceiveData(I2Cx);
        if (len == 1)
            MyI2C_SendAck(I2Cx,1);//不产生应答，从机不继续发数据
        else
            MyI2C_SendAck(I2Cx,0);//产生应答
        pbuf++;
        len--;
    
    }
    MyI2C_Stop(I2Cx);
    return 1;//成功
}

