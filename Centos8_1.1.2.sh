#!/bin/bash

# 1.1.2 Ensure /tmp is configured
echo
echo \*\*\*\* 1.1.2 Ensure /tmp is configured
#findmnt /tmp || (echo "tmpfs /tmp tmpfs defaults,rw,nosuid,nodev,noexec,relatime 0 0" >>/etc/fstab && mount /tmp)
echo -e "[Mount] \nWhat=tmpfs \nWhere=/tmp \nType=tmpfs \nOptions=mode=1777,strictatime,noexec,nodev,nosuid" >> /etc/systemd/system/tmp.mount
systemctl daemon-reload
systemctl unmask tmp.mount
systemctl --now enable tmp.mount


