#!/bin/sh

# source /etc/sinit.conf
. /etc/sinit.conf

# if set, use default kiss-init
[ -n "$ENABLE_KISS_INIT" ] && . /lib/init/rc.boot

# if set, use default busybox runit
[ -n "ENABLE_BUSYBOX_RUNIT" ] && sh -c 'ubase-box respawn /usr/bin/runsvdir -P /var/service' &

# if set, use default busybox getty
if [ -n "$ENABLE_BUSYBOX_GETTY" ]; then
    sh -c 'ubase-box respawn /sbin/getty 38400 tty1' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty2' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty3' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty4' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty5' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty6' &>/dev/null &
fi

# if available, source sinit.d scripts
for file in /etc/sinit.d/* ; do
    [ -r "$file" ] && . "$file"
done
