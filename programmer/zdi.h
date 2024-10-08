#ifndef __ZDI_H
#define __ZDI_H

#include <stdbool.h>
#include <stdint.h>

#define LOW  false
#define HIGH true

#define ZDI_ZCL_PIN   15
#define ZDI_ZDA_PIN   14
#define ZDI_RESET_PIN 16
#define ZDI_POWER_PIN 17

// #define GPIO_22     22

#define ZDI_READ  1
#define ZDI_WRITE 0

#define ZDI_SEP_MORE 0
#define ZDI_SEP_DONE 1

#define ZDI_WR_BRK_CTL 0x10
#define ZDI_WR_DATA_L  0x13
#define ZDI_WR_DATA_H  0x14
#define ZDI_WR_DATA_U  0x15
#define ZDI_WR_RW_CTL  0x16
#define ZDI_WR_IS4     0x21
#define ZDI_WR_IS3     0x22
#define ZDI_WR_IS2     0x23
#define ZDI_WR_IS1     0x24
#define ZDI_WR_IS0     0x25
#define ZDI_WR_MEM     0x30

#define ZDI_RD_ID_L   0x00
#define ZDI_RD_ID_H   0x01
#define ZDI_RD_ID_REV 0x02
#define ZDI_RD_STAT   0x03
#define ZDI_RD_DATA_L 0x10
#define ZDI_RD_DATA_H 0x11
#define ZDI_RD_DATA_U 0x12
#define ZDI_RD_MEM    0x20

// RW_CTL register codes

#define RW_CTL_REG_AF    0x00
#define RW_CTL_REG_BC    0x01
#define RW_CTL_REG_DE    0x02
#define RW_CTL_REG_HL    0x03
#define RW_CTL_REG_IX    0x04
#define RW_CTL_REG_IY    0x05
#define RW_CTL_REG_SP    0x06
#define RW_CTL_REG_PC    0x07
#define RW_CTL_SET_ADL   0x08
#define RW_CTL_RESET_ADL 0x09
#define RW_CTL_EXX       0x0A
#define RW_CTL_MEM       0x0B
#define RW_CTL_WR        0x80
#define RW_CTL_RD        0x00

// ZDI_STAT register masks
#define ZDI_STAT_ACTIVE   (1 << 7)
#define ZDI_STAT_HALT_SLP (1 << 5)
#define ZDI_STAT_ADL      (1 << 4)
#define ZDI_STAT_MADL     (1 << 3)
#define ZDI_STAT_IEF1     (1 << 2)

#define IN_RAM __attribute__((noinline, long_call, section(".time_critical")))

#define DELAY_SMALL() __asm volatile("nop\n")

typedef void (*report_connection_fn_t)(
    bool power_detected, bool reset_detected, bool zda_detected, bool zcl_detected, bool connection_detected);
typedef void (*report_non_connection_fn_t)(void);
typedef void (*report_ez80_id_fn_t)(uint8_t zdi_id_low, uint8_t zdi_id_high, uint8_t zdi_id_rev);
typedef void (*report_ez80_id_failed_fn_t)(void);

void zdi_init_pins(void);
void zdi_wait_for_connection(const report_connection_fn_t, const report_non_connection_fn_t);
void zdi_configure_pins(void);
bool zdi_connection_lost(void);
void zdi_wait_for_valid_identity(const report_ez80_id_fn_t, const report_ez80_id_failed_fn_t);

uint8_t IN_RAM zdi_rd_reg(const uint8_t reg_addr, const uint8_t separator_id);
void IN_RAM    zdi_wr_reg(const uint8_t reg_addr, const uint8_t value, const uint8_t separator_id);

#define zdi_rd_reg_byte(reg_addr)        zdi_rd_reg(reg_addr, ZDI_SEP_DONE)
#define zdi_wr_reg_byte(reg_addr, value) zdi_wr_reg(reg_addr, value, ZDI_SEP_DONE)

void zdi_debug_break();
void zdi_debug_continue();
void zdi_full_reset();
void zdi_set_mode_adl();
void zdi_set_mode_z80();

void zdi_set_cpu_freq(const uint32_t freq);

void zdi_flash_write_enable(void);
void zdi_flash_write_disable(void);
void zdi_erase_flash(void);
void zdi_flash_write_bytes(const uint32_t address, const uint8_t *data, const uint16_t len);

void     zdi_write_byte(const uint32_t address, const uint8_t data);
uint8_t  zdi_read_byte(const uint32_t address);
uint32_t read_reg_pc();
void     write_reg_pc(const uint32_t pc);

#endif
