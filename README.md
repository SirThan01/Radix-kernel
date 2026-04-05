# Radix Kernel

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Status: Development](https://img.shields.io/badge/Status-Development-orange)](https://github.com/SirThan01/Radix-kernel)

## Disclaimer

This is an incomplete, hobbyist operating system kernel written for educational purposes. The author is a self-taught developer with limited experience. The code may contain errors, inefficient solutions, and incomplete features.

**Do not run this kernel on physical hardware.** Use only in virtual machines (QEMU, VirtualBox, etc.).

## Current State

- Kernel is under active development
- Many core features are missing or partially implemented
- Code quality varies across modules
- Breaking changes may occur without notice

## Reporting Issues

If you discover a bug, please report it via GitHub Issues. Constructive criticism is welcome.

When reporting an issue, include:
- Description of the problem
- Steps to reproduce
- Expected behavior
- Actual behavior
- Any relevant error messages or logs

## Building

Requirements:
- gcc (i686-elf cross-compiler recommended)
- nasm
- qemu-system-x86
- make

bash
```
make
make run
```
