# 5.2.19 Ensure SSH MaxSessions is set to 4 or less
echo
echo \*\*\*\* 5.2.19 Ensure SSH MaxSessions is set to 4 or less
egrep -q "^(\s*)MaxSessions\s+\S+(\s*#.*)?\s*$" /etc/ssh/sshd_config && sed -ri "s/^(\s*)MaxSessions\s+\S+(\s*#.*)?\s*$/\1MaxSessions 4\2/" /etc/ssh/sshd_config || echo "MaxSessions 4" >> /etc/ssh/sshd_config
