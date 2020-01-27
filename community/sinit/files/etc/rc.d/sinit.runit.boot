[ "$SINIT_ENABLE_RUNIT" = 1 ] && {
    ubase-box respawn /usr/bin/runsvdir -P /var/service &
}
