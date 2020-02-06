# We are going to start runit and getty here

# Uncomment to enable gettys
# for getty in 1 2 3 4 5 6 ; do
#     while :; do /sbin/getty tty${getty} 0 linux ; done &  # busybox getty
# #    while :; do /sbin/getty tty${getty} linux ; done &   # ubase getty
# done

# Uncomment enable runit services
# while :; do /usr/bin/runsvdir -P /var/service ; done &
