#!/bin/bash

# 5.5.5 Ensure default user umask is 027 or more restrictive
echo
echo \*\*\*\* 5.5.5 Ensure default user umask is 027 or more restrictive
egrep -q "^(\s*)umask\s+\S+(\s*#.*)?\s*$" /etc/bashrc && sed -ri "s/^(\s*)umask\s+\S+(\s*#.*)?\s*$/\1umask 027\2/" /etc/bashrc || echo "umask 027" >> /etc/bashrc
egrep -q "^(\s*)umask\s+\S+(\s*#.*)?\s*$" /etc/profile && sed -ri "s/^(\s*)umask\s+\S+(\s*#.*)?\s*$/\1umask 027\2/" /etc/profile || echo "umask 027" >> /etc/profile
egrep -q "^(\s*)umask\s+\S+(\s*#.*)?\s*$" /etc/profile && sed -ri "s/^(\s*)umask\s+\S+(\s*#.*)?\s*$/\1umask 027\2/" /etc/profile || echo "umask 027" | tee -a /etc/rsyslog.conf /etc/profile.d/*.sh > /dev/null
egrep -q "^(\s*)UMASK\s+\S+(\s*#.*)?\s*$" /etc/login.defs && sed -ri "s/^(\s*)UMASK\s+\S+(\s*#.*)?\s*$/\1UMASK 027\2/" /etc/login.defs || echo "UMASK 027" >> /etc/login.defs
