#!/bin/bash
docker build -t uladmin/rsyslog_agg:latest .
docker run --name rsyslog_agg -d -v /data/rsyslog:/data/rsyslog -p 514:514 -p 514:514/udp uladmin/rsyslog_agg:latest
