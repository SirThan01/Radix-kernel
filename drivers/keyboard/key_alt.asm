global key_alt
section .text
bits 32
key_alt:
    mov eax, 0x0F
    ret
