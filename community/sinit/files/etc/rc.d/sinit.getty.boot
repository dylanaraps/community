suckless_getty () {
    for getty in 1 2 3 4 5 6; do
        ubase-box respawn ubase-box getty "/dev/tty${getty}" linux >/dev/null 2>&1 &
    done
}

[ "$SINIT_ENABLE_GETTY" = 1 ] && suckless_getty
