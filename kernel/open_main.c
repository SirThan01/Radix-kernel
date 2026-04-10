//copyright ©
//15.03.2026
#include "usr/typec.h"
void point_open() {
    chr* vm = (chr*)0xb8000;
    cstchr* hfk = "Hello from kernel!";
    int i = 0;
    while (hfk[i] != '\0') {
        vm[i * 2] = hfk[i];       
        vm[i * 2 + 1] = 0x02;       
        i++;
    }
    while(1) {
        __asm__("hlt");
    }
  }
