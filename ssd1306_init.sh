#!/usr/bin/env bash
# Minimal SSD1306 init + "all pixels on" probe. Run with sudo.
set -euo pipefail

BUS=1
ADDR=0x3c

i2ctransfer -y "$BUS" w2@"$ADDR" 0x00 0xAE
i2ctransfer -y "$BUS" w3@"$ADDR" 0x00 0xD5 0x80
i2ctransfer -y "$BUS" w3@"$ADDR" 0x00 0xA8 0x3F
i2ctransfer -y "$BUS" w3@"$ADDR" 0x00 0xD3 0x00
i2ctransfer -y "$BUS" w2@"$ADDR" 0x00 0x40
i2ctransfer -y "$BUS" w3@"$ADDR" 0x00 0x8D 0x14
i2ctransfer -y "$BUS" w3@"$ADDR" 0x00 0x20 0x00
i2ctransfer -y "$BUS" w2@"$ADDR" 0x00 0xA1
i2ctransfer -y "$BUS" w2@"$ADDR" 0x00 0xC8
i2ctransfer -y "$BUS" w3@"$ADDR" 0x00 0xDA 0x12
i2ctransfer -y "$BUS" w3@"$ADDR" 0x00 0x81 0x7F
i2ctransfer -y "$BUS" w2@"$ADDR" 0x00 0xD9
i2ctransfer -y "$BUS" w2@"$ADDR" 0x00 0xF1
i2ctransfer -y "$BUS" w2@"$ADDR" 0x00 0xDB
i2ctransfer -y "$BUS" w2@"$ADDR" 0x00 0x40
i2ctransfer -y "$BUS" w2@"$ADDR" 0x00 0xA4
i2ctransfer -y "$BUS" w2@"$ADDR" 0x00 0xA6
i2ctransfer -y "$BUS" w2@"$ADDR" 0x00 0xA5   # all pixels on
i2ctransfer -y "$BUS" w2@"$ADDR" 0x00 0xAF   # display on
