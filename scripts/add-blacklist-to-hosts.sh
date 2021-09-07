#!/bin/bash

grep -q Noirlistez /etc/hosts
if [ $? -eq 0 ]
then
        sudo -u guillaume DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -t 90000 -i terminal "Filtrage Web déjà activé 🤪" "\nIl semble que le filtrage par adresses soit déjà en cours sur ton système ..."
        exit 1
else
echo "0.0.0.0   www.twitter.com             # Noirlistez-moi !!!"   >> /etc/hosts
echo "0.0.0.0   facebook.com                # Noirlistez-moi !!!"   >> /etc/hosts
echo "0.0.0.0   twitter.com                 # Noirlistez-moi !!!"   >> /etc/hosts
echo "0.0.0.0   abs.twimg.com               # Noirlistez-moi !!!"   >> /etc/hosts
echo "0.0.0.0   chat.peterschmitt.fr        # Noirlistez-moi !!!"   >> /etc/hosts
echo "0.0.0.0   www.reddit.com              # Noirlistez-moi !!!"   >> /etc/hosts

# Usage :  echo "0.0.0.0   @domain_to_blacklist # Noirlistez-moi !!!"   >> /etc/hosts

# echo "Access to brainspace-wasting sites is restricted BY NOW so that you can get a life. Use Focuswriter instead ..." | wall

        sudo -u guillaume DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -t 90000 -i terminal "Le filtrage Web est activé 🤓" "\nSouviens-toi que tu ne fais pas ça pour te fliquer\n toi-même, mais pour t inciter à tirer le meilleur parti de ton temps.\nCourage et bonne humeur !"
fi

ps -aux | grep firefox >/dev/null
if [ $? -eq 0 ]
then
        pkill firefox
        wait
        xhost 127.0.0.1
        sudo -u guillaume -H firefox &
        sudo -u guillaume DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -t 90000 -i terminal "Redémarrage du navigateur 💥" "\nFirefox redémarre pour tenir compte des nouvelles règles de filtrage ..."
else


# To adapt this script change my name to your username in the above line, as well as UID (1000 here) !

exit
fi

