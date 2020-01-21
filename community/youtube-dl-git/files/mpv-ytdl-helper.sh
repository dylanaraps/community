#!/bin/sh
youtube-dl -o - "$@" - | mpv -
