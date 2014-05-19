#!/bin/sh

cd /usr/local/src
sudo apt-get install libnet-ssleay-perl libauthen-pam-perl libio-pty-perl libapt-pkg-perl apt-show-versions
sudo curl -C - -L -O http://www.webmin.com/download/deb/webmin-current.deb
sudo dpkg -i webmin_1.680_all.deb 
