global key_f8
section .text
bits 32
key_f8:
    mov eax, 0x42
    ret
