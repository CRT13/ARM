/* C-ARM: LED blinking using button */
#include <stm32f10x.h>

void delay_ms(uint32_t t);
int main(void){
	int n = 0;
	int button_state;
	RCC->APB2ENR |= 0x10 | 0x04;	/* Enable GPIOA.2 & GPIOC.4 */
	GPIOC->CRH = 0x11;				/* Set GPIOC.8,9 = O/P */
	GPIOA->CRL = 0x04;				/* Set GPIOA.0 = I/P floating */
	while(1){
		delay_ms(250);
		button_state = ((GPIOA->IDR & 0x1) == 0);	/**/
		n++;
		
		if(n&1)						GPIOC->BSRR = 1<<8;
		else						GPIOC->BSRR = 1<<24;

		if((n&4) && button_state)	GPIOC->BSRR = 1<<9;
		else						GPIOC->BSRR = 1<<25;
	}
}
void delay_ms(uint32_t t){
	t *= 400;
	while(i-- >0)	asm("nop");
}
