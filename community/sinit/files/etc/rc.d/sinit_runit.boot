# This is a module needed by sinit users to load busybox runit
if [ "$SINIT_ENABLE_RUNIT" = 1 ]; then
    sh -c 'ubase-box respawn /usr/bin/runsvdir -P /var/service' &
fi
