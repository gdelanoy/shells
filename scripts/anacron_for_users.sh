#!/bin/bash

cd ~
mkdir -p ~/.config/etc/anacron/cron.{daily,weekly,monthly}
mkdir -p ~/.config/var/spool/anacron
mkdir -p ~/.config/bin
mkdir -p ~/.config/etc/scripts

echo "SHELL=/bin/bash" >> ~/.config/etc/anacrontab
echo "PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin:~/.config/bin" >> ~/.config/etc/anacrontab
echo "1  0  cron.day	run-parts $HOME/.local/etc/cron.daily/" >> ~/.config/etc/anacrontab
echo "7  0  cron.week   run-parts $HOME/.local/etc/cron.weekly/" >> ~/.config/etc/anacrontab
echo "30 0  cron.month  run-parts $HOME/.local/etc/cron.monthly/" >> ~/.config/etc/anacrontab

touch ~/.profile
echo "/usr/sbin/anacron -t ~/.config/etc/anacrontab" >> ~/.profile
echo "@reboot /usr/sbin/anacron -t ~/.config/etc/anacrontab" >> /var/spool/cron/crontabs/$USER

