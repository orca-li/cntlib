#pragma once

#include <stdint.h>
#include <stddef.h>

typedef uint8_t CntCrc8_t;
typedef uint16_t CntCrc16_t;
typedef uint32_t CntCrc32_t;

CntCrc8_t CntCrc8(char*, size_t);
CntCrc16_t CntCrc16(char*, size_t);
CntCrc32_t CntCrc32(char*, size_t);