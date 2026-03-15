global key_f3
section .text
bits 32
key_f3:
    mov eax, 0x3D
    ret
