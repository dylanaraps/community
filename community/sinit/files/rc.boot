#!/bin/sh

# use default kiss-init
. /lib/init/rc.boot

# optionally source rc.conf
[ -f "/etc/rc.conf" ] && . /etc/rc.conf

# if no alternative supervisor is specified, use default busybox runit
if [ -z "$ALT_SV" ]; then
    . /etc/rc.sinit
else
    sh -c 'ubase-box respawn /usr/bin/runsvdir -P /var/service' &
fi

# if no alternative getty is specified use default busybox getty
if [ -z "$ALT_GETTY" ]; then
    sh -c 'ubase-box respawn /sbin/getty 38400 tty1' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty2' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty3' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty4' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty5' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty6' &>/dev/null &
fi
