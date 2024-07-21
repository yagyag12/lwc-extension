// Copyright lowRISC contributors & University of Naples, Federico II
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#include <stdint.h>
#include "spi.h"
#include "dev_access.h"

void spi_init(spi_t *spi, spi_reg_t spi_reg, uint32_t speed) {
  spi->reg = spi_reg;
  spi->speed = speed;
}

void spi_send_byte_blocking(spi_t *spi, char c) {
  // Wait untill the SPI fifo is not full
  while(DEV_READ(spi->reg + SPI_STATUS_REG) & SPI_MASTER_TX_FULL);
  // Send a byte
  DEV_WRITE(spi->reg + SPI_MASTER_TX_REG, c);
}

char spi_recv_byte_blocking(spi_t *spi){
  // Wait untill the SPI fifo does not has a message
  while(DEV_READ(spi->reg + SPI_STATUS_REG) & SPI_SLAVE_RX_EMPTY);
  // Read the byte
  return DEV_READ(spi->reg + SPI_MASTER_TX_REG);
}

uint32_t spi_get_status(spi_t *spi){
   return (uint32_t) DEV_READ(spi->reg + SPI_STATUS_REG);
}
