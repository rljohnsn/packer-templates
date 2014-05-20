#!/bin/sh
cd /usr/local/src

sudo apt-get -q -y install debian-keyring
sudo apt-get -q -y install debian-archive-keyring

sudo echo 'APT::Default-Release "wheezy";' >> /etc/apt/apt.conf
sudo echo 'deb http://ftp.de.debian.org/debian/ jessie main' >> /etc/apt/sources.list.d/debian-jessie.list
sudo echo 'deb-src http://ftp.de.debian.org/debian/ jessie main' >> /etc/apt/sources.list.d/debian-jessie.list

sudo DEBIAN_FRONTEND=noninteractive apt-get -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
sudo DEBIAN_FRONTEND=noninteractive apt-get -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" update
sudo DEBIAN_FRONTEND=noninteractive apt-get -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" install libc6/jessie

sudo curl -# -C - -L -O  https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chef-server_11.0.12-1.ubuntu.12.04_amd64.deb
sudo dpkg -i chef-server_11.0.12-1.ubuntu.12.04_amd64.deb
sudo chef-server-ctl reconfigure
