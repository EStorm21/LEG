#include <stdint.h>
	
#define UART0_BASE_ADDR 0x16000000
#define UART0_DR (*((volatile uint32_t *)(UART0_BASE_ADDR + 0x000)))
#define UART0_IMSC (*((volatile uint32_t *)(UART0_BASE_ADDR + 0x038)))
#define UART0_ICR (*((volatile uint32_t *)(UART0_BASE_ADDR + 0x044)))
	
#define PIC_BASE_ADDR 0x14000000
#define PIC_IRQ_ENCLR (*((volatile uint32_t *)(PIC_BASE_ADDR + 0x00C)))
#define PIC_IRQ_ENSET (*((volatile uint32_t *)(PIC_BASE_ADDR + 0x008)))

#define PIC_FIQ_ENCLR (*((volatile uint32_t *)(PIC_BASE_ADDR + 0x02C)))
#define PIC_FIQ_ENSET (*((volatile uint32_t *)(PIC_BASE_ADDR + 0x028)))

#define PIC_UARTINT0 (1<<1)
#define UART_RXIC_INTR (1<<4)
	
void __attribute__((interrupt)) irq_handler() {
	/* echo the received character + 1 */
	UART0_DR = UART0_DR + 1;
}
	
/* all other handlers are infinite loops */
void __attribute__((interrupt)) undef_handler(void) { for(;;); }
void __attribute__((interrupt)) swi_handler(void) { for(;;); }
void __attribute__((interrupt)) pfa_handler(void) { for(;;); }
void __attribute__((interrupt)) da_handler(void) { for(;;); }
void __attribute__((interrupt)) fiq_handler(void) {
	/* echo the received character - 1 */
	UART0_DR = UART0_DR - 1;
}
	
void main(void) {
	/* enable UART0 IRQ and RXIM interrupt */
	PIC_IRQ_ENCLR    = PIC_UARTINT0;
	PIC_FIQ_ENCLR    = PIC_UARTINT0;
	UART0_IMSC       = UART_RXIC_INTR;
	PIC_IRQ_ENSET    = PIC_UARTINT0;
	PIC_FIQ_ENSET    = PIC_UARTINT0;
	/* and then loop forever */
	UART0_DR = 'a';
	for(;;);
}