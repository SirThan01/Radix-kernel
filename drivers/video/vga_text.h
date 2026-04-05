#ifndef VGA_TEXT_H
#define VGA_TEXT_H
#include <stdint.h>
#define VGA_FRAMEBUFFER ((uint8_t*)0xA0000)
#define VGA_IO_CRTC_INDEX  0x3D4
#define VGA_IO_CRTC_DATA   0x3D5
#define VGA_IO_INPUT_STATUS 0x3DA
int  vga_init(void);
void vga_set_mode_13h(void);    
void vga_put_pixel(int x, int y, uint8_t color);
uint8_t vga_get_pixel(int x, int y);
void vga_set_palette(uint8_t index, uint8_t r, uint8_t g, uint8_t b);
void vga_wait_vsync(void);
#endif
