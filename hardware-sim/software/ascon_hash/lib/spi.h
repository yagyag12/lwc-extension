// Copyright lowRISC contributors & University of Naples, Federico II
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#ifndef SPI_H__
#define SPI_H__

#define SPI_MASTER_TX_REG   0x00
#define SPI_MASTER_RX_REG   0x04     // Unused 
#define SPI_SLAVE_TX_REG    0x08     // Unused 
#define SPI_SLAVE_RX_REG    0x0C     
#define SPI_STATUS_REG      0x10

#define SPI_MASTER_TX_EMPTY 1 << 0
#define SPI_MASTER_TX_FULL  1 << 1
#define SPI_SLAVE_RX_EMPTY  1 << 6
#define SPI_SLAVE_RX_FULL   1 << 7

#define SPI_FROM_BASE_ADDR(addr)((spi_reg_t)(addr))

typedef void* spi_reg_t;

typedef struct spi{
    spi_reg_t reg;
    uint32_t speed;
}spi_t;

void spi_init(spi_t *spi, spi_reg_t reg, uint32_t speed);
void spi_send_byte_blocking(spi_t *spi, char c);
char spi_recv_byte_blocking(spi_t *spi);
uint32_t spi_get_status(spi_t *spi);

#endif // SPI_H__
