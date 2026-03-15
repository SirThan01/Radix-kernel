global key_f1
section .text
bits 32
key_f1:
    mov eax, 0x3B
    ret
