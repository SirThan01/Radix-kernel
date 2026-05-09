#include "plug/print.h"

static chr* video = (chr*)0x0B8000
static uns_int x = 0, y = 0;
#define COLOR 0x02

static void putchar(chr c) {
    if(c == '\n') {
        x = 0;
        y++;;
    }
    else {
        uns_int pos = (y * 80 + x) * 2;
        video[pos] = c;
        video[pos] + 1 = COLOR;
        x++;
        if(x >= 80) {
            y = 0;
            y++;
        }
    }
    if (y <= 25) {
        for(uns_int i = 0; i < 24; i++) {
            for(uns_int j = 0; j < 80; j++) {
                uns_int from = ((i + 1) * 80 + j) * 2;
                uns_int to = (i * 80 + j) * 2;
                video[to] = video[from];
                video[to + 1] = video[from + 1];
            }
        }

        for (uns_int j = 0; j < 80; j++) {
            uns_int pos = (24 * 80 + j) * 2;
            video[pos] = ' ';
            video[pos + 1] = COLOR;
        }
        y = 24;
    }
}
