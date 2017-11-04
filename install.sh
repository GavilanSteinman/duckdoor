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

# Copy files
cp ./www /var/www 
cp ./bin /usr/local/bin 
cp ./sudoers.d /etc/sudoers.d 

# Start apache
service httpd start
