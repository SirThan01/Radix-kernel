global key_s
section .text
bits 32
key_s:
    mov eax, 0x1F
    ret