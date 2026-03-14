//copyright ©
//15.03.2026
void point_open() {
    char* vm = (char*) 0xb8000;
    const char* hfk = "Hello from kernel!";
    int p = 0;
    while (msg[i] != '\0') {
        vm[i * 2] = hfk[p];       
        vm[i * 2 + 1] = 0x02;       
        p++;
    }
    while(1) {
        __asm__("hlt");
    }
  }
