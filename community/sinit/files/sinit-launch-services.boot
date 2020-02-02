# we are going to start runit and getty here

sinit_run_getty() {
    for getty in 1 2 3 4 5 6; do
        while :; do /sbin/getty 38400 tty${getty} 2>&1 ; done &  # busybox getty
        # while :; do /sbin/getty /dev/tty${getty} linux 2>&1 ; done &  # ubase getty
    done
}

sinit_runit() {
    while :; do /usr/bin/runsvdir -P /var/service ; done &
}

[ "$SINIT_ENABLE_GETTY" = 1 ] && sinit_run_getty
[ "$SINIT_ENABLE_RUNIT" = 1 ] && sinit_runit
