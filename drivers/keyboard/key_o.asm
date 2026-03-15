global key_o
section .text
bits 32
key_o:
    mov eax, 0x18
    ret