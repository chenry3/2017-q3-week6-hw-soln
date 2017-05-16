#!/bin/bash
puppet apply ./etc/puppet/manifests/remote_syslog.pp  --modulepath=./etc/puppet/modules/

