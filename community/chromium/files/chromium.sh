#!/bin/sh

export CHROME_WRAPPER=/usr/lib/chromium/chromium

CHROME_FLAGS="--enable-gpu-rasterization $CHROME_FLAGS"

# shellcheck disable=2086
exec /usr/lib/chromium/chromium $CHROME_FLAGS "$@"
