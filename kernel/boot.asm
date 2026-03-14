bits 32
section .text
global start
extern point_open
start: lea esp,[stack_top]; call point_open; cli; jmp $
section .bss
resb 8192
stack_top:
