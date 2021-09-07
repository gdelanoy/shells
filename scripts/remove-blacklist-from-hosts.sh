#!/bin/bash


grep -q Noirlistez /etc/hosts
if [ $? -eq 0 ]
then
        sed -i '/Noirlistez/d' /etc/hosts

sudo -u guillaume DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -t 90000 -i terminal "Filtrage web désactivé 🎉 " "\nL accès au web est libéré des filtres par nom.\nProfite-en bien mais n'abuse pas des réseaux sociaux ! 🤗 "
exit 0

else
        sudo -u guillaume DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -t 90000 -i terminal "Filtrage web déjà désactivé ¯\_(ツ)_/¯" "\nL accès au web était déjà entièrement libre ...\nAs-tu d autres problèmes de connexion ? 🤔 "
exit 1
fi
# To adapt this script change my name to your username in the above line, as well as UID (1000 here) !

exit
