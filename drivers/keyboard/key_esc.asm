global key_esc
section .text
bits 32
key_esc:
    mov eax, 0x01
    ret
