# needed by sinit because sinit does not use /etc/inittab
if [ "$SINIT_ENABLE_GETTY" = 1 ]; then
    sh -c 'ubase-box respawn ubase-box getty /dev/tty1 linux' &>/dev/null &
    sh -c 'ubase-box respawn ubase-box getty /dev/tty2 linux' &>/dev/null &
    sh -c 'ubase-box respawn ubase-box getty /dev/tty3 linux' &>/dev/null &
    sh -c 'ubase-box respawn ubase-box getty /dev/tty4 linux' &>/dev/null &
    sh -c 'ubase-box respawn ubase-box getty /dev/tty5 linux' &>/dev/null &
    sh -c 'ubase-box respawn ubase-box getty /dev/tty6 linux' &>/dev/null &
fi
