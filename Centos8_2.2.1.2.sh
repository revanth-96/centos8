#!/bin/bash

# 2.2.1.2 Ensure chrony is configured
echo
echo \*\*\*\* 2.2.1.2 Ensure chrony is configured
#grep ^OPTIONS /etc/sysconfig/chronyd && sed -i "/^OPTIONS=""/ cOPTIONS=\"-u chrony\"" /etc/sysconfig/chronyd || echo "OPTIONS="-u chrony"" >> /etc/sysconfig/chronyd
grep -E ^server /etc/chrony.conf || echo "server 10.0.0.2" >> /etc/chrony.conf
#start chrony if not started
systemctl start chronyd 







