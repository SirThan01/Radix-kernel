global _kbd_hndl
extern key_a,
extern key_b,
extern key_c,
extern key_d,
extern key_e,
extern key_f,
extern key_g,
extern key_h,
extern key_i,
extern key_j,
extern key_k,
extern key_m,
extern key_n,
extern key_o,
extern key_p,
extern key_q,
extern key_r,
extern key_s,
extern key_t,
extern key_u,
extern key_v,
extern key_w,
extern key_x,
extern key_y,
extern key_z,
extern key_1,
extern key_2,
extern key_3,
extern key_4,
extern key_5,
extern key_6,
extern key_7,
extern key_8,
extern key_9,
extern key_0,
extern key_esc,
extern key_enter,
extern key_space,
extern key_backspace,
extern key_tab,
extern key_lshift,
extern key_rshift,
extern key_ctrl,
extern key_alt,
extern key_capslock,
extern key_f1, 
extern key_f2,
extern key_f3,
extern key_f4,
extern key_f5,
extern key_f6,
extern key_f7,
extern key_f8,
extern key_f9,
extern key_f10,
section .text
bits 32
_kbd_hndl:
pushad
in al, 0x60
cmp al, 0x01
je .esc
cmp al, 0x02
je .1
cmp al, 0x03
je .2
cmp al, 0x04
je .3
cmp al, 0x05
je .4
cmp al, 0x06
je .5
cmp al, 0x07
je .6
cmp al, 0x08
je .7
cmp al, 0x09
je .8
cmp al, 0x0A
je .9
cmp al, 0x0B
je .0
cmp al, 0x0E
je .backspace
cmp al, 0xF
je .tab
cmp al, 0x10
je .q
cmp al, 0x11
je .w
cmp al, 0x12
je .e
cmp al, 0x13
je .r
cmp al, 0x14
je .t
cmp al, 0x15
je .y
cmp al, 0x16
je .u
cmp al, 0x17
je .i
cmp al, 0x18
je .o
cmp al, 0x19
je .p
cmp al, 0x1C
je .enter
cmp al, 0x1D
je .ctrl
cmp al, 0x1E
je .a
cmp al, 0x1F
je .s
cmp al, 0x20
je .d
cmp al, 0x21
je .f
cmp al, 0x22
je .g
cmp al, 0x23
je .h
cmp al, 0x24
je .j
cmp al, 0x25
je .k
cmp al, 0x26
je .l
cmp al, 0x2A
je .lshift
cmp al, 0x2C 
je .z
cmp al, 0x2D
je .x
cmp al, 0x2E
je .c
cmp al, 0x2F
je .v
cmp al, 0x30
je .b
cmp al, 0x31
je .n
cmp al, 0x32
je .m
cmp al, 0x36
je .rshift
cmp al, 0x38
je .alt
cmp al, 0x39
je .space
cmp al, 0x3A
je .capslock
cmp al, 0x3B
je .f1
cmp al, 0x3C
je .f2
cmp al, 0x3D
je .f3
cmp al, 0x3E
je .f4
cmp al, 0x3F
je .f5
cmp al, 0x40
je .f6
cmp al, 0x41
je .f7
cmp al, 0x42
je .f8
cmp al, 0x43
je .f9
cmp al, 0x44
je .f10
jmp .end
.esc: call key_esc; jmp .end
.1: call key_1; jmp .end
.2: call key_2; jmp .end
.3: call key_3; jmp .end
.4: call key_4; jmp .end
.5: call key_5; jmp .end
.6: call key_6; jmp .end
.7: call key_7; jmp .end
.8: call key_8; jmp .end
.9: call key_9; jmp .end
.0: call key_0; jmp .end
.backspace: call key_esc; jmp .end
.tab: call key_esc; jmp .end
.q: call key_q; jmp .end
.w: call key_w; jmp .end
.e: call key_e; jmp .end
.r: call key_r; jmp .end
.t: call key_t; jmp .end
.y: call key_y; jmp .end
.u: call key_u; jmp .end
.i: call key_i; jmp .end
.o: call key_o; jmp .end
.p: call key_p; jmp .end
.enter: call key_enter; jmp .end
.ctrl: call key_ctrl; jmp .end
.a: call key_a; jmp .end
.s: call key_a; jmp .end
.d: call key_d; jmp .end
.f: call key_f; jmp .end
.g: call key_g; jmp .end
.h: call key_h; jmp .end
.j: call key_j; jmp .end
.k: call key_k; jmp .end
.l: call key_l; jmp .end
.lshift: call key_shift; jmp .end
.z: call key_z; jmp .end
.x: call key_x; jmp .end
.c: call key_c; jmp .end
.v: call key_v; jmp .end
.b: call key_b; jmp .end
.n: call key_n; jmp .end
.m: call key_m; jmp .end
.rshift: call key_esc; jmp .end
.alt: call key_esc; jmp .end
.space: call key_esc; jmp .end
.capslock: call key_esc; jmp .end
.f1: call key_f1; jmp .end
.f2: call key_f2; jmp .end
.f3: call key_f3; jmp .end
.f4: call key_f4; jmp .end
.f5: call key_f5; jmp .end
.f6: call key_f6; jmp .end
.f7: call key_f7; jmp .end
.f8: call key_f8; jmp .end
.f9: call key_f9; jmp .end
.f10: call key_f10
.end:
       mov al, 0x20
       out 0x20, al
       popad
       iret
