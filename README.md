# libasm

`libasm` is a small library of assembly functions written in x86-64 NASM (Netwide Assembler) syntax. This project is part of the 42 school curriculum and focuses on low-level programming using assembly language, offering a deeper understanding of how processors handle instructions, memory, and data.

## Table of Contents
- [libasm](#libasm)
	- [Table of Contents](#table-of-contents)
	- [About the Project](#about-the-project)
	- [Implemented Functions](#implemented-functions)
	- [Getting Started](#getting-started)
		- [Prerequisites](#prerequisites)
		- [Installation](#installation)

## About the Project

The goal of the `libasm` project is to reimplement a few standard C library functions in x86-64 assembly. This exercise will give you an opportunity to explore the workings of assembly language, including the instruction set, registers, calling conventions, and system calls.

## Implemented Functions

The following standard C library functions have been reimplemented in assembly:

- `ft_strlen` - Computes the length of a string.
- `ft_strcpy` - Copies a string from source to destination.
- `ft_strcmp` - Compares two strings.
- `ft_write` - Writes to a file descriptor.
- `ft_read` - Reads from a file descriptor.
- `ft_strdup` - Duplicates a string using dynamic memory allocation.

## Getting Started

### Prerequisites

Before you begin, ensure you have met the following requirements:

- **NASM** (Netwide Assembler) installed on your system
- **gcc** or another C compiler installed
- **Make** build tool

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/4b93f/libasm.git
   cd libasm
