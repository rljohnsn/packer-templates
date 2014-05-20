#!/bin/sh
cd /usr/local/src

#chef client install
sudo curl -# -L https://www.opscode.com/chef/install.sh | sudo bash

#chefdk install
sudo curl -# -C - -L -O https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.1.0-1_amd64.deb
sudo dpkg -i chefdk*.deb

# setup avahi for .local name resolution
sudo apt-get install -q -y avahi-daemon avahi-utils