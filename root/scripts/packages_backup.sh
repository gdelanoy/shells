#!/bin/bash
dpkg --get-selections > ~/Package.list
cp -R /etc/apt/sources.list* ~/
apt-key exportall > ~/Repo.keys

