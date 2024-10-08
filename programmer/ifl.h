#ifndef IFL_H
#define IFL_H

#include <stdint.h>

#define IFL_BIOS_START 0x000000
#define IFL_BIOS_END   0x00FFFF

/*
 * External Flash Library status codes
 */
#define ZFL_ERR_SUCCESS               0
#define ZFL_ERR_FAILURE               -1
#define ZFL_ERR_VPP                   -2
#define ZFL_ERR_WRITE                 -3
#define ZFL_ERR_ERASE                 -4
#define ZFL_ERR_SUSPEND               -5
#define ZFL_ERR_ADDRESS               -6
#define ZFL_ERR_VERIFY                -7
#define ZFL_ERR_UNSUPPORTED_CMD_SET   -8
#define ZFL_ERR_UNSUPPORTED_DEVICE    -9
#define ZFL_ERR_INVALID_PARAMETER     -10
#define ZFL_ERR_TOO_MANY_ERASE_BLOCKS -11
#define ZFL_ERR_TOO_MANY_REGIONS      -12

/*
 * The eZ80F92 microcontroller contains 8 erase-blocks (Block0
 * to Block7) that can be protected from accidental erasure by setting the
 * corresponding bit in the Flash Protect register.
 *
 * Each erase-block is composed of 16 pages.  The page-size is 1024 bytes
 * Each page contains 8 rows.  There are 128 bytes in each row.
 *
 * In addition to the main internal Flash storage area, all eZ80Acclaim!
 * microcontrollers include a secondary area of Flash referred to as the Info
 * page.  The Info Page contains 2 rows of data.
 */
#define IFL_ERASE_BLOCKS     ((uint32_t)8)
#define IFL_PAGE_SIZE_EXP    ((uint8_t)10)
#define IFL_PAGE_SIZE        (1 << IFL_PAGE_SIZE_EXP)
#define IFL_ERASE_BLOCK_SIZE (IFL_PAGE_SIZE * 16)
#define IFL_FLASH_SIZE_BYTES (IFL_ERASE_BLOCK_SIZE * IFL_ERASE_BLOCKS)
#define IFL_TOTAL_PAGES      (IFL_FLASH_SIZE_BYTES / IFL_PAGE_SIZE)
#define IFL_ROW_SIZE         (IFL_PAGE_SIZE >> 3)

int8_t IFL_IsAddrValid(const int32_t hAddr, const uint16_t Len);

#endif
