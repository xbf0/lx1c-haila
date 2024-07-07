
//  * 实验名称：智能蜂箱监测

#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "esp8266.h"
#include "ls1c102_interrupt.h"
#include "iic.h"
#include "oled.h"
#include "dht11.h"
#include "BEEP.h"
#include "key.h"
#include "led.h"
#include "hx711.h"

#define LED 20
#define KEY1_PIN GPIO_PIN_22
#define KEY2_PIN GPIO_PIN_23
#define KEY3_PIN GPIO_PIN_24
#define KEY4_PIN GPIO_PIN_25
char str[50];
static uint16_t temperature;
static uint16_t humidity;
static uint16_t weight00;
int   medleng = 0;          	            
uint32_t   num;					                 
uint8_t Pi_flag=0;
uint32_t	weight;		                     
uint32_t	pi_weight;	
uint32_t  try;
char temp[30];                
static uint16_t Weight_Value;

uint8_t data[9] = {0x55, 0xAA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,0xBB}; //温湿度数据上云平台    数据包


int main(int arg, char *args[])
{
    SystemClockInit(); // 时钟等系统配置
    GPIOInit();        // io配置
    OLED_Init();
    EnableInt(); // 开总中断
     hx711_Init();
    gpio_set_direction(KEY1_PIN, GPIO_Mode_In);
     BEEP_Init();
    Uart0_init(9600); // 串口0初始化，io06 io07   串口初始化需要在开启EnableInt之后
    Get_Maopi();



    int key=0;
    int key1=0;
    char tl=0;
    char th=99;
    char hl=0;
    char hh=99;
   // 设置 GPIO 为输入模式
gpio_set_direction(KEY1_PIN, GPIO_Mode_In); // 设置按键 1 的 GPIO 为输入
gpio_set_direction(KEY2_PIN, GPIO_Mode_In); // 设置按键 2 的 GPIO 为输入
gpio_set_direction(KEY3_PIN, GPIO_Mode_In); // 设置按键 3 的 GPIO 为输入
gpio_set_direction(KEY4_PIN, GPIO_Mode_In); // 设置按键 4 的 GPIO 为输入




    // Queue_Init(&Circular_queue);
   
    OLED_Show_Str(0, 0, "智能蜂箱监测系统", 16); // OLED显示界面
//    while (HX711_Init()) // 检测是否接入温湿度传感器
//     {
//         OLED_Show_Str(10, 4, "未检重量传感器", 16); // OLED显示界面
    
    while (DHT11_Init()) // 检测是否接入温湿度传感器
    {
        OLED_Show_Str(10, 4, "未检测到传感器", 16); // OLED显示界面
    }
    OLED_Show_Str(0, 4, "重量：       g", 16); // OLED显示界面
    OLED_Show_Str(20, 3, "温度:     ℃", 16);     // OLED显示界面
    OLED_Show_Str(20, 6, "湿度:     %RH", 16);


// OLED_Clear();
//     while(1){


// Get_Weight(&weight00);


// sprintf(str, "%2d",  11 );     
//         OLED_Show_Str(70, 3, str, 16);    


//     }

    






    while (1)
    {
        DHT11_Read_Data(&temperature, &humidity); // 读取温湿度值
         Weight_Value =Get_Weight();
         weight00=Weight_Value/10 ;

        data[2] =  temperature / 10;     //将温湿度数据存放至数据包中
        data[3] =  humidity / 10;
        data[7] =  weight00/256;
       

             //报警选择
if (!gpio_get_pin(KEY1_PIN))// 读取按键状态
{
tl=25;th=35;hl=35;hh=75;
            OLED_Show_Str(0, 0, "正", 16); // OLED显示界面
             OLED_Show_Str(0, 3, "常", 16);     // OLED显示界面
               
}
 if(!gpio_get_pin(KEY2_PIN))
{
    tl=32;th=37;hl=40;hh=80;
  OLED_Show_Str(0, 0, "繁", 16); // OLED显示界面
             OLED_Show_Str(0, 3, "殖", 16);     // OLED显示界面
}
 if(!gpio_get_pin(KEY3_PIN))
{
    tl=2;th=8;hl=70;hh=80;
  OLED_Show_Str(0, 0, "冬", 16); // OLED显示界面
             OLED_Show_Str(0, 3, "季", 16);     // OLED显示界面
}
 if(!gpio_get_pin(KEY4_PIN))
{
    tl=0;th=100;hl=0;hh=100;
  OLED_Show_Str(0, 0, "停", 16); // OLED显示界面
             OLED_Show_Str(0, 3, "报", 16);     // OLED显示界面
}



          sprintf(str, "%2d",  weight00 );     
        OLED_Show_Str(80, 0, str, 16);   
        sprintf(str, "%2d",  temperature / 10 );     
        OLED_Show_Str(80, 3, str, 16);           //显示温度
        sprintf(str, "%2d", humidity / 10);
        OLED_Show_Str(80, 6, str, 16);           //显示湿度

        if(temperature / 10>th || temperature / 10 < tl){

                BEEP_ON;
                delay_ms(500);
                BEEP_OFF;
        }
        if(humidity / 10>hh || humidity / 10 < hl){

                BEEP_ON;
                delay_ms(500);
                BEEP_OFF;
        }


        if(wifi_connected == 0)
        {
            if(esp8266_check_cmd('T'))     //当收到'T'字符时，表示ESP8266连接成功
            {
                OLED_Clear(); // OLED显示界面
                wifi_connected = 1;
                OLED_Show_Str(12, 3, "已连接到WIFI", 16);
                delay_ms(1000);
                OLED_Clear(); // OLED显示界面
                delay_ms(500);
                OLED_Show_Str(30, 0, "重量:      g", 16); // OLED显示界面
                OLED_Show_Str(30, 3, "温度:    ℃", 16);     // OLED显示界面
                OLED_Show_Str(30, 6, "湿度:    %RH", 16);
             
                gpio_write_pin(LED, 1);
                BEEP_ON;
                delay_ms(500);
                BEEP_OFF;
            }
        }
        if(wifi_connected == 1)
        {
            delay_ms(1500);
            data[6] = (data[2] + data[3] + data[4] + data[5]) % 256;   //计算校验和
             data[4] =  weight00 % 256;
            printf("%s",data);
            UART_SendDataALL(UART0, data, 8);
            data[4] =  0x00;
        }
    }


    return 0;
}













//000000000000000000000000000000000000000000000000000000000000000

// #include "ls1x.h"
// #include "Config.h"
// #include "ls1x_gpio.h"
// #include "ls1x_latimer.h"
// #include "esp8266.h"
// #include "ls1c102_interrupt.h"
// #include "iic.h"
// #include "oled.h"
// #include "dht11.h"
// #include "BEEP.h"
// #include "key.h"
// #include "led.h"
// #include "hx711.h"

// #define LED 20

// char str[50];
// static uint16_t temperature;
// static uint16_t humidity;
// int   medleng = 0;          	            
// uint32_t   num;					                 
// uint8_t Pi_flag=0;
// uint32_t	weight;		                     
// uint32_t	pi_weight;	
// uint32_t  try;
// char temp[30];                
// int Weight_Value;
// uint8_t data[8] = {0x55, 0xAA, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBB}; //温湿度数据上云平台    数据包

// int main(int arg, char *args[])
// {
//     SystemClockInit(); // 时钟等系统配置
//     GPIOInit();        // io配置
//     OLED_Init();
//     BEEP_Init();
//     hx711_Init();
//     Get_Maopi();
//     EnableInt(); // 开总中断

    
//     Uart0_init(9600); // 串口0初始化，io06 io07   串口初始化需要在开启EnableInt之后
//     while (1)
//     {

//         Weight_Value =Get_Weight();
//         sprintf(str,"%3d g", Weight_Value/10);
//         OLED_Show_Str(70, 9, str, 16);
//         // delay_ms(500);

//     }
//     return 0;
// }

