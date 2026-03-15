global key_capslock
section .text
bits 32
key_capslock:
    mov eax, 0x3A
    ret
