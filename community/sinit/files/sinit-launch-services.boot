# we are going to start runit and getty here

# for busybox
sinit_run_getty() {
    for getty in 1 2 3 4 5 6; do
        respawn /sbin/getty 38400 tty${getty} 2>&1 &  # busybox getty
	# respawn /sbin/getty /dev/tty${getty} linux 2>&1 &  # ubase getty
    done
}

sinit_runit() {
    respawn /usr/bin/runsvdir -P /var/service &
}

[ "$SINIT_ENABLE_GETTY" = 1 ] && sinit_run_getty
[ "$SINIT_ENABLE_RUNIT" = 1 ] && sinit_runit
