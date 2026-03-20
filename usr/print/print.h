#include "usr/typec.h"
#ifndef PRINT_H
#define PRINT_H
//nm
typedef __builtin_va_list vlist;
#define vstart(v, l) __builtin_va_start(v, l)
#define varg(v, l) __builtin_va_arg(v, l)
#define vend(v) __builtin_va_end(v)

//f
void one_prnt(chr c);
void print(cstchr str);
void printk(cstchr format, ...);
