#ifndef PRINT_ENGINE_H_
#define PRINT_ENGINE_H_

#include <stddef.h>
#include <stdarg.h>

typedef int (*_printf_engine_output_func)(const char *, size_t);
int printf_engine(_printf_engine_output_func out, const char *fmt, va_list ap);

#endif