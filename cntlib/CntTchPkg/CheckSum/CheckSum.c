#include "include/CheckSum.h"

CntCrc8_t CntCrc8(char* buf, size_t len)
{
    CntCrc8_t crc8 = 0xFF;
    uint8_t i;

    while(len--)
    {
        crc8 ^= *buf++;
        for(i = 0; i < 8; i++)
        {
            crc8 = crc8 & 0x80 ? (crc8 << 1) ^ 31 : crc8 << 1;
        }
    }

    return crc8;
}

CntCrc16_t CntCrc16(char* buf, size_t len)
{
    CntCrc16_t crc16 = 0xFFFF;
    uint8_t i;

    while(len--)
    {
        crc16 ^= *buf++ << 8;
        for(i = 0; i < 8; i++)
        {
            crc16 = (crc16 & 0x8000) ? (crc16 << 1) ^ 0x1021 : crc16 << 1;
        }
    }

    return crc16;
}

#define CNT_CRC32_TABLE_SIZE 256
CntCrc32_t CntCrc32(char* buf, size_t len)
{
    CntCrc32_t crcr32table[CNT_CRC32_TABLE_SIZE];
    CntCrc32_t crc32;
    int i;

    for(i = 0; i < CNT_CRC32_TABLE_SIZE; i++)
    {
        crc32 = i;
        for (int ii = 0; ii < 8; ii++)
        {
            crc32 = (crc32 & 1) ? (crc32 >> 1) ^ 0x32C0FFEE : crc32 >> 1;
            crcr32table[i] = crc32;
        }
    }

    crc32 = 0xFFFFFFFF;

    while (len--)
    {
        crc32 = crcr32table[(crc32 ^ *buf++) & 0xFF] ^ (crc32 >> 8);
    }

    return crc32 ^ 0xFFFFFFFF;
}
