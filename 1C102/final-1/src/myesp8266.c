#include "myesp8266.h"
#include "Config.h"
#include "ls1x_string.h"
#include "ls1x_printf.h"
#include "ls1x_latimer.h"



// 向 ESP8266 发送数据
// cmd：发送的命令字符串
void myesp8266_send_data(char *cmd)
{
    printf("%s",cmd);// 发送数据
}



// ESP8266 模块进入透传模式
void myesp8266_init(void)
{

    myesp8266_send_data("AT+CWMODE=1\r\n");
    delay_ms(5000);
    myesp8266_send_data("AT+CWJAP_CUR=\"welpe\",\"12345678\"\r\n");
    delay_ms(5000);


   
}




