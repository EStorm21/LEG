/*
 * boot.S - simple register setup code for stand-alone Linux booting
 *
 * Copyright (C) 2009 ARM Limited
 *
 * Modified by Daniel Sangorrin (daniel.sangorrin@gmail.com)
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */
    .text
    .globl    _start
_start:
    @ Set ARM Booting parameters (linux/Documentation/arm/Booting)
    subs   r0, pc, pc   @ set flags appropriately
    mov    r0, #0       @ See Booting specification
    ldr    r1, machtype    @ Arch type (linux/arch/arm/tools/mach-types)
    ldr    r2, =devicetree    @ Physical address of device tree in system RAM
    ldr    lr, =kernel  @ kernel is set by linker.lds
    mov    pc, lr       @ jump to the kernel

    .org    0x100
machtype:
    .word   0x113
