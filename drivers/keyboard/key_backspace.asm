global key_backspace
section .text
bits 32
key_backspace: 
    mov eax, 0x0E
    ret
