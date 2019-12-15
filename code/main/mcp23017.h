#pragma once

#define MCP23017_IODIRA      0x00
#define MCP23017_IODIRB      0x01
#define MCP23017_IODIR_IO7  (1 << 7)
#define MCP23017_IODIR_IO6  (1 << 6)
#define MCP23017_IODIR_IO5  (1 << 5)
#define MCP23017_IODIR_IO4  (1 << 4)
#define MCP23017_IODIR_IO3  (1 << 3)
#define MCP23017_IODIR_IO2  (1 << 2)
#define MCP23017_IODIR_IO1  (1 << 1)
#define MCP23017_IODIR_IO0  (1 << 0)

#define MCP23017_IPOLA       0x02
#define MCP23017_IPOLB       0x03
#define MCP23017_IPOL_IP7  (1 << 7)
#define MCP23017_IPOL_IP6  (1 << 6)
#define MCP23017_IPOL_IP5  (1 << 5)
#define MCP23017_IPOL_IP4  (1 << 4)
#define MCP23017_IPOL_IP3  (1 << 3)
#define MCP23017_IPOL_IP2  (1 << 2)
#define MCP23017_IPOL_IP1  (1 << 1)
#define MCP23017_IPOL_IP0  (1 << 0)

#define MCP23017_GPINTENA    0x04
#define MCP23017_GPINTENB    0x05
#define MCP23017_GPINTEN_GPINT7  (1 << 7)
#define MCP23017_GPINTEN_GPINT6  (1 << 6)
#define MCP23017_GPINTEN_GPINT5  (1 << 5)
#define MCP23017_GPINTEN_GPINT4  (1 << 4)
#define MCP23017_GPINTEN_GPINT3  (1 << 3)
#define MCP23017_GPINTEN_GPINT2  (1 << 2)
#define MCP23017_GPINTEN_GPINT1  (1 << 1)
#define MCP23017_GPINTEN_GPINT0  (1 << 0)

#define MCP23017_DEFVALA     0x06
#define MCP23017_DEFVALB     0x07
#define MCP23017_DEFVAL_DEF7  (1 << 7)
#define MCP23017_DEFVAL_DEF6  (1 << 6)
#define MCP23017_DEFVAL_DEF5  (1 << 5)
#define MCP23017_DEFVAL_DEF4  (1 << 4)
#define MCP23017_DEFVAL_DEF3  (1 << 3)
#define MCP23017_DEFVAL_DEF2  (1 << 2)
#define MCP23017_DEFVAL_DEF1  (1 << 1)
#define MCP23017_DEFVAL_DEF0  (1 << 0)

#define MCP23017_INTCONA     0x08
#define MCP23017_INTCONB     0x09
#define MCP23017_INTCON_IOC7  (1 << 7)
#define MCP23017_INTCON_IOC6  (1 << 6)
#define MCP23017_INTCON_IOC5  (1 << 5)
#define MCP23017_INTCON_IOC4  (1 << 4)
#define MCP23017_INTCON_IOC3  (1 << 3)
#define MCP23017_INTCON_IOC2  (1 << 2)
#define MCP23017_INTCON_IOC1  (1 << 1)
#define MCP23017_INTCON_IOC0  (1 << 0)

#define MCP23017_IOCONA       0x0A
#define MCP23017_IOCONB       0x0B
#define MCP23017_IOCON_BANK     (1 << 7)
#define MCP23017_IOCON_MIRROR   (1 << 6)
#define MCP23017_IOCON_SEQOP    (1 << 5)
#define MCP23017_IOCON_DISSLW   (1 << 4)
#define MCP23017_IOCON_HAEN     (1 << 3)
#define MCP23017_IOCON_ODR      (1 << 2)
#define MCP23017_IOCON_INTPOL   (1 << 1)

#define MCP23017_GPPUA       0x0C
#define MCP23017_GPPUB       0x0D
#define MCP23017_GPPU_PU7  (1 << 7)
#define MCP23017_GPPU_PU6  (1 << 6)
#define MCP23017_GPPU_PU5  (1 << 5)
#define MCP23017_GPPU_PU4  (1 << 4)
#define MCP23017_GPPU_PU3  (1 << 3)
#define MCP23017_GPPU_PU2  (1 << 2)
#define MCP23017_GPPU_PU1  (1 << 1)
#define MCP23017_GPPU_PU0  (1 << 0)

#define MCP23017_INTFA       0x0E
#define MCP23017_INTFB       0x0F
#define MCP23017_INTF_INT7  (1 << 7)
#define MCP23017_INTF_INT6  (1 << 6)
#define MCP23017_INTF_INT5  (1 << 5)
#define MCP23017_INTF_INT4  (1 << 4)
#define MCP23017_INTF_INT3  (1 << 3)
#define MCP23017_INTF_INT2  (1 << 2)
#define MCP23017_INTF_INT1  (1 << 1)
#define MCP23017_INTF_INT0  (1 << 0)

#define MCP23017_INTCAPA     0x10
#define MCP23017_INTCAPB     0x11
#define MCP23017_INTCAP_ICP7  (1 << 7)
#define MCP23017_INTCAP_ICP6  (1 << 6)
#define MCP23017_INTCAP_ICP5  (1 << 5)
#define MCP23017_INTCAP_ICP4  (1 << 4)
#define MCP23017_INTCAP_ICP3  (1 << 3)
#define MCP23017_INTCAP_ICP2  (1 << 2)
#define MCP23017_INTCAP_ICP1  (1 << 1)
#define MCP23017_INTCAP_ICP0  (1 << 0)

#define MCP23017_GPIOA       0x12
#define MCP23017_GPIOB       0x13
#define MCP23017_GPIO_GP7  (1 << 7)
#define MCP23017_GPIO_GP6  (1 << 6)
#define MCP23017_GPIO_GP5  (1 << 5)
#define MCP23017_GPIO_GP4  (1 << 4)
#define MCP23017_GPIO_GP3  (1 << 3)
#define MCP23017_GPIO_GP2  (1 << 2)
#define MCP23017_GPIO_GP1  (1 << 1)
#define MCP23017_GPIO_GP0  (1 << 0)

#define MCP23017_OLATA       0x14
#define MCP23017_OLATB       0x15
#define MCP23017_OLAT_OL7  (1 << 7)
#define MCP23017_OLAT_OL6  (1 << 6)
#define MCP23017_OLAT_OL5  (1 << 5)
#define MCP23017_OLAT_OL4  (1 << 4)
#define MCP23017_OLAT_OL3  (1 << 3)
#define MCP23017_OLAT_OL2  (1 << 2)
#define MCP23017_OLAT_OL1  (1 << 1)
#define MCP23017_OLAT_OL0  (1 << 0)
