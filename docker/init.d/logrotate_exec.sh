#!/bin/bash

# small "daemonization" script for logrotate.

while true; do
    # rotate our logs
    /usr/sbin/logrotate -v /etc/logrotate.conf
    # rotate logs at a sepcified interval
    if [ -z ${LOGROTATE_SPLAY} ]; then
        LOGROTATE_SPLAY=86400
    fi
    sleep ${LOGROTATE_SPLAY}
done
