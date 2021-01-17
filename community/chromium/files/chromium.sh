#!/bin/sh

export CHROME_WRAPPER=/usr/lib/chromium/chromium

CHROME_FLAGS="--enable-gpu-rasterization $CHROME_FLAGS"

exec /usr/lib/chromium/chromium $CHROME_FLAGS "$@"
