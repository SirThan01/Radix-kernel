global key_ctrl
section .text
bits 32
key_ctrl:
    mov eax, 0x1D
    ret
