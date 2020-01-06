#!/bin/sh

. /etc/sinit.conf

[ -n "$ENABLE_KISS_INIT" ] && . /lib/init/rc.boot

if [ -n "$ENABLE_BUSYBOX_GETTY" ]; then
    sh -c 'ubase-box respawn /sbin/getty 38400 tty1' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty2' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty3' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty4' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty5' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty6' &>/dev/null &
fi

if [ -n "ENABLE_BUSYBOX_RUNIT" ]; then
    sh -c 'ubase-box respawn /usr/bin/runsvdir -P /var/service' &
fi

for file in /etc/sinit.d/*.sh ; do
    [ -r "$file" ] && . "$file"
done
