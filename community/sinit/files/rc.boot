#!/bin/sh

. /lib/init/rc.boot

sh -c 'ubase-box respawn ubase-box getty /dev/tty1 linux' &>/dev/null &
sh -c 'ubase-box respawn ubase-box getty /dev/tty2 linux' &>/dev/null &
sh -c 'ubase-box respawn ubase-box getty /dev/tty3 linux' &>/dev/null &
sh -c 'ubase-box respawn ubase-box getty /dev/tty4 linux' &>/dev/null &
sh -c 'ubase-box respawn ubase-box getty /dev/tty5 linux' &>/dev/null &
sh -c 'ubase-box respawn ubase-box getty /dev/tty6 linux' &>/dev/null &

# optionally use a different service supervisor than busybox runit
if [ -f "/etc/rc.supervisor" ]; then
    . /etc/rc.supervisor
else
    sh -c 'ubase-box respawn /usr/bin/runsvdir -P /var/service' &
fi
