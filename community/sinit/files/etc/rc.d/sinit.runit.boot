busybox_runit () {
    ubase-box respawn /usr/bin/runsvdir -P /var/service &
}

[ "$SINIT_ENABLE_RUNIT" = 1 ] && busybox_runit
