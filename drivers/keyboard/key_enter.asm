global key_enter
section .text
bits 32
key_enter:
    mov eax, 0x1C
    ret
