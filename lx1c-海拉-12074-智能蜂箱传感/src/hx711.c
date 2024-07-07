#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "hx711.h"

uint32_t BiaoDing=385;
unsigned int HX711_Buffer = 0;
unsigned int Weight_Maopi = 10; 
int  Weight_object = 0;
int usart_weight = 0;
int GapValue = 76;	
// 初始化hx711的IO口 
void hx711_Init(void)
{
	gpio_pin_remap(GPIO_PIN_38, GPIO_FUNC_MAIN);
	gpio_pin_remap(GPIO_PIN_39, GPIO_FUNC_MAIN);
	gpio_set_direction(GPIO_PIN_38, GPIO_Mode_Out);
	gpio_set_direction(GPIO_PIN_39, GPIO_Mode_In);
}
unsigned int HX711_Read(void)	//����128
{
	unsigned long count; 
	uint8_t i; 
	
  	HX711_SCK(0); 
  	count = 0; 
  	while(HX711_DOUT); 
	
  	for(i=0; i<24; i++)
	{ 
	  	HX711_SCK(1); 
	  	count = count << 1; 
		HX711_SCK(0); 
	  	if(HX711_DOUT)
			count++; 
	} 
 	HX711_SCK(1); 
    count = count ^ 0x800000;  //��25�������½�����ʱ��ת������
	HX711_SCK(0);  
	return(count);
}


void Get_Maopi(void)
{
	Weight_Maopi = HX711_Read();	
} 


unsigned int Get_Weight(void)
{
    char str[40];
	uint8_t temp[6] = "0000\0";

	HX711_Buffer = HX711_Read();

	Weight_object = HX711_Buffer;
	Weight_object = Weight_object - Weight_Maopi;	   		// ��ȡʵ���AD������ֵ��

	if(Weight_object> 0)
	{
		Weight_object= (Weight_object / GapValue); 	// ����ʵ���ʵ������	
	}
	else
	{
		Weight_object = 0;
	}
	
	temp[0] = Weight_object /10000 %10 + 0x30;
	temp[1] = Weight_object /1000 %10 + 0x30;
	temp[2] = Weight_object /100 %10 + 0x30;
	temp[3] = Weight_object /10 %10 + 0x30;
	usart_weight = (int)(Weight_object/10);
   return Weight_object;
}
