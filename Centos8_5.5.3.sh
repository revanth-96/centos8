#!/bin/bash

# 5.5.3 Ensure default user shell timeout is 900 seconds or less
echo
echo \*\*\*\* 5.5.3 Ensure default user shell timeout is 900 seconds or less
#echo -e "TMOUT=900 \nreadonly TMOUT \nexport TMOUT" >> /etc/bashrc
#echo -e "TMOUT=900 \nreadonly TMOUT \nexport TMOUT" >> /etc/profile.d/*.sh 
#echo -e "TMOUT=900 \nreadonly TMOUT \nexport TMOUT" >> /etc/profile
echo -e "readonly TMOUT=900 ; export TMOUT" >> /etc/profile
