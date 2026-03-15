global key_lshift
section .text
bits 32
key_lshift:
    mov eax, 0x02
    ret
