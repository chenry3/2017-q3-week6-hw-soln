#!/bin/bash

# rsyslog aggregation container
docker build -t uladmin/rsyslog_agg:latest .
docker run --name rsyslog_agg -d -v /data/rsyslog:/data/rsyslog -p 514:514 -p 514:514/udp uladmin/rsyslog_agg:latest

# logrotate container
docker build -t uladmin/rsyslog_agg_rotate:latest -f Dockerfile-logrotate .
docker run --name rsyslog_agg_rotate -d -v /data/rsyslog:/data/rsyslog uladmin/rsyslog_agg_rotate:latest
