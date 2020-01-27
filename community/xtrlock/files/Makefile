# Makefile for xtrlock - X Transparent Lock
# This Makefile provided for those of you who lack a functioning xmkmf.
#
# Copyright (C)1993,1994 Ian Jackson
#
# This is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# This is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

LDLIBS=-lX11
CC=gcc
CFLAGS=-Wall -DSHADOW_PWD
INSTALL=install
PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin

xtrlock:	xtrlock.o

xtrlock.o:	xtrlock.c lock.bitmap mask.bitmap patchlevel.h

install:	xtrlock install.man
		$(INSTALL) -Dm 4755 xtrlock $(DESTDIR)$(BINDIR)/xtrlock

install.man:
		$(INSTALL)  -Dm 644 xtrlock.man $(DESTDIR)$(PREFIX)/share/man/man1/xtrlock.1x
