#1.8.2 Ensure GDM login banner is configured
echo
echo \*\*\*\* 1.8.2 Ensure GDM login banner is configured
	dir="/etc/gdm"
	if [[ ! -e $dir ]]; then
	mkdir /etc/gdm && touch /etc/gdm/greeter.dconf-defaults
	echo "[org/gnome/login-screen]" >> /etc/gdm/greeter.dconf-defaults
 	echo "banner-message-enable=true"  >> /etc/gdm/greeter.dconf-defaults
	echo "banner-message-text='Authorized uses only. All activity may be monitored and reported.'" >> /etc/gdm/greeter.dconf-defaults
	elif [[ ! -d $dir ]]; then
    	echo "/etc/gdm already exists" 1>&2
	fi