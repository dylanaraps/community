#!/bin/sh

. /etc/sinit.conf

for file in /etc/sinit.d/* ; do
    [ -r "$file" ] && . "$file"
done
