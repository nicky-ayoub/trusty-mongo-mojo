#!/bin/bash
# bootstrap/system.sh

# Install MongoDB
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' \
  | tee /etc/apt/sources.list.d/mongodb.list
apt-get -q update
apt-get -q -y install mongodb-org
service mongod start

# Install development dependencies
apt-get -q -y install build-essential 

su -c "source /vagrant/bootstrap/user.sh" vagrant
