/*
 * Debugging macro include header
 *
 *  Copyright (C) 1994-1999 Russell King
 *  Copyright (C) 2001-2006 Storlink, Corp.
 *  Copyright (C) 2008-2009 Paulius Zaleckas <paulius.zaleckas@teltonika.lt>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 */
#include <mach/hardware.h>
#include <mach/io.h>

	.macro	addruart, rp, rv
	ldr	\rp, =DAN_UART_BASE			@ physical
	ldr	\rv, =IO_ADDRESS(DAN_UART_BASE)		@ virtual
	.endm

#define UART_SHIFT	2
#include <asm/hardware/debug-8250.S>
