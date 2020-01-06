# Do not modify this file.
# Instead place new scripts in /etc/sinit.d
# And modify /etc/sinit.conf accordingly

if [ -n "ENABLE_BUSYBOX_RUNIT" ]; then
    sh -c 'ubase-box respawn /usr/bin/runsvdir -P /var/service' &
fi
