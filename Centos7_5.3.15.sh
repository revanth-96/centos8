#!/bin/bash

# 5.3.15 Ensure only strong Key Exchange algorithms are used
echo
echo \*\*\*\* 5.3.15 Ensure only strong Key Exchange algorithms are used
grep -i "KexAlgorithms" /etc/ssh/sshd_config || echo "KexAlgorithms curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp521,ecdh-sha2-nistp384,ecdh-sha2-nistp256,diffie-hellman-group-exchange-sha256" >> /etc/ssh/sshd_config
