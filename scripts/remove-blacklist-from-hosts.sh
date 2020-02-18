#!/bin/bash

# sed -i '/www.facebook.com/d' /etc/hosts
# sed -i '/www.twitter.com/d' /etc/hosts

sed -i '/Noirlistez-moi/d' /etc/hosts


# sudo -u guillaume DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -t 90000 'Filtrage web désactivé' 'Access to brainspace-wasting sites is possilbe again. Enjoy your personal lobotomy ...'
sudo -u guillaume DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /usr/games/xcowsay 'Filtrage web désactivé' 'Access to brainspace-wasting sites is possilbe again. Enjoy your personal lobotomy ...'

# To adapt this script change my name to your username in the above line, as well as UID (1000 here) !

exit




exit
