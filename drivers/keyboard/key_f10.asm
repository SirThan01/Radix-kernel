global key_f10
section .text
bits 32
key_f10:
    mov eax, 0x44
    ret
