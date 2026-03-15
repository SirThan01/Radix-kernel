global key_tab
section .text
bits 32
key_tab:
    mov eax, 0x0F
    ret
