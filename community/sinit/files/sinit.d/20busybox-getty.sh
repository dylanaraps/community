# Do not modify this file.
# Instead place new scripts in /etc/sinit.d
# And modify /etc/sinit.conf accordingly

if [ -n "$ENABLE_BUSYBOX_GETTY" ]; then
    sh -c 'ubase-box respawn /sbin/getty 38400 tty1' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty2' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty3' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty4' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty5' &>/dev/null &
    sh -c 'ubase-box respawn /sbin/getty 38400 tty6' &>/dev/null &
fi
