#!/bin/sh
cd /usr/local/src

# consul install
sudo curl -C - -L -O https://dl.bintray.com/mitchellh/consul/0.2.0_linux_amd64.zip
sudo apt-get -q -y install unzip
sudo unzip 0.2.0_linux_amd64.zip -d /usr/local/bin
sudo chmod 755 /usr/local/bin/consul


# bind9 install for consul dns integration
sudo apt-get -y --force-yes -f install bind9