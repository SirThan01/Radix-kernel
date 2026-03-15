global key_f9
section .text
bits 32
key_f9:
    mov eax, 0x43
    ret
