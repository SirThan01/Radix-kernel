global key_f5
section .text
bits 32
key_f5:
    mov eax, 0x3F
    ret
