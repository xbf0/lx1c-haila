#ifndef __HX711_H
#define __HX711_H 

#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ls1c102_ptimer.h"
#include "ls1x_common.h"
#include "ls1x_gpio.h"
#include "ls1x_exti.h"
#include "ls1x_latimer.h"
#include "ls1x_rtc.h"
#include "ls1c102_touch.h"
#include "ls1x_string.h"
#include "ls1x_wdg.h"
#include "ls1x_uart.h"
#include "ls1x_spi.h"
#include "ls1c102_i2c.h"
#include "Config.h"

/******    DHT11端口宏定义  *******/

/*************************************************************
** IO操作函数
*************************************************************/											   
#define	HX711_DOUT   	gpio_get_pin(GPIO_PIN_39)//GPIO_WriteBit( DHT11_GPIO,DHT11_PIN,(BitAction)X )// 数据端口输出 
#define	HX711_SCK(X)    		gpio_write_pin(GPIO_PIN_38,X)//GPIO_ReadInputDataBit( DHT11_GPIO,DHT11_PIN )	   // 数据端口输入

#define HX711_DATA GPIO_Pin_39

void hx711_Init(void);
unsigned int HX711_Read(void);
void Get_Maopi(void);
unsigned int Get_Weight();

#endif















