# This is a module for sinit users to load busybox runit as a service supervisor
# This should not be set to 1 for regular busybox init systems.
if [ "$SINIT_ENABLE_RUNIT" = 1 ]; then
    sh -c 'ubase-box respawn /usr/bin/runsvdir -P /var/service' &
fi
