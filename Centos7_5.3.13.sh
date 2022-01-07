#!/bin/bash

# 5.3.13 Ensure only strong Ciphers are used
echo
echo \*\*\*\* 5.3.13 Ensure only strong Ciphers are used
echo "Ciphers chacha20-poly1305@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr,aes128-gcm@openssh.com,aes256-gcm@openssh.com" >> /etc/ssh/sshd_config
