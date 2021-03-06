#!/bin/bash

# Check on OS
os=`uname -a`
good_os="centos-rpi3"
if [ $(echo $os | grep $good_os | wc -l) -ne 0 ] ; then
	echo $os
else
	echo $os
	echo Operating system is not supported. Please install $good_os.
	exit
fi

# Install components
yum install httpd
yum install vim
yum install lsof
yum install alsa-utils
yum install wget
yum install vorbis-tools

# Configure
rm -f /etc/localtime
ln -s /usr/share/zoneinfo/America/New_York /etc/localtime
service crond restart

# Copy files
cp -Rf ./www/* /var/www 
cp -f ./bin/* /usr/local/bin 
cp -f ./sudoers.d/* /etc/sudoers.d 
cp -f ./cron.d/* /etc/cron.d
cp -f ./boot/* /boot

# Start apache
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --reload
service httpd start

usermod -aG audio root
usermod -aG audio apache
amixer sset 'PCM' 100%
echo Note: You may have to restart your system for sound to work.
