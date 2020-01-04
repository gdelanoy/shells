#!/bin/bash

apt-key add ~/Repo.keys
cp -R ~/sources.list* /etc/apt/
apt-get update
apt-get install dselect
dselect update
dpkg --set-selections < ~/Package.list
apt-get dselect-upgrade -y
