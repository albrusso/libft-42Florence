# libft [42Cursus]

## Overview

**libft** is a custom C library that reimplements some of the standard C library functions. This project is part of the 42 school curriculum and aims to improve understanding of the fundamentals of C programming.

## Features

- Implementation of standard functions from `<string.h>`, `<stdlib.h>`, and `<ctype.h>`.
- Includes utility functions for memory manipulation, string handling, and conversions.
- Written in **C99** and compiled with standard compiler flags.
- Functions are modular and reusable in future projects.

## Functions Implemented

Some of the key functions implemented in **libft** include:

- **Memory functions**:
  - `memset`, `memcpy`, `memmove`, `memchr`, `memcmp`
  - `calloc`, `bzero`

- **String functions**:
  - `strlen`, `strdup`, `strcpy`, `strcat`, `strncat`, `strchr`, `strrchr`
  - `strstr`, `strnstr`, `strcmp`, `strncmp`

- **Conversion functions**:
  - `atoi`, `itoa`

- **Character check functions**:
  - `isalpha`, `isdigit`, `isalnum`, `isascii`, `isprint`

- **Additional utility functions**:
  - `ft_split`, `ft_substr`, `ft_strjoin`, `ft_strtrim`

## Usage

To use **libft** in your own project:

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/libft.git

2. Build the library:
   ```bash
   make

3. Include the library in your project:
   ```bash
   #include "libft.h"

4. Link the library when compiling your code:
   ```bash
   gcc your_program.c -L. -lft -o your_program

## License

This project is for educational purposes as part of the 42Cursus and follows the rules of the 42 school. Feel free to review and adapt the code, but please do not copy it directly for personal submissions.
