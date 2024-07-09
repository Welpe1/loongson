#ifndef __LORA_H
#define __LORA_H

#include "ls1x.h"

// typedef struct{
//     volatile uint8_t mode;
//     volatile uint8_t M0;
//     volatile uint8_t M1;
//     volatile uint8_t AUX;	

// }LORA_TypDdef;

// LORA_TypDdef LORA={0,0,0,0};
void Lora_Init(void);
void Lora_Send(uint8_t *buf,uint8_t len);

#endif
