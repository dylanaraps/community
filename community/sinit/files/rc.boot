#!/bin/sh

. /etc/sinit.conf

for file in /etc/sinit.d/*.sh ; do
    [ -r "$file" ] && . "$file"
done
