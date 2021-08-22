#!/bin/bash

# echo "0.0.0.0   www.reddit.com        # Noirlistez-moi !!!"   >> /etc/hosts
echo "0.0.0.0   www.twitter.com       # Noirlistez-moi !!!"   >> /etc/hosts
echo "0.0.0.0   facebook.com          # Noirlistez-moi !!!"   >> /etc/hosts
echo "0.0.0.0   twitter.com           # Noirlistez-moi !!!"   >> /etc/hosts
echo "0.0.0.0   abs.twimg.com         # Noirlistez-moi !!!"   >> /etc/hosts
echo "0.0.0.0   peterschmitt.fr       # Noirlistez-moi !!!"   >> /etc/hosts

# Usage :  echo "0.0.0.0   @domain_to_blacklist # Noirlistez-moi !!!"   >> /etc/hosts

# echo "Access to brainspace-wasting sites is restricted BY NOW so that you can get a life. Use Focuswriter instead ..." | wall

 sudo -u guillaume DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -t 90000 -i terminal "Web filtering now active." "Access to brainspace-wasting sites is restricted BY NOW so that you can get a life. Use Focuswriter instead ..."
# sudo -u guillaume DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /usr/games/xcowsay 'Web filtering now active' 'Access to brainspace-wasting sites is restricted BY NOW so that you can get a life. Use Focuswriter instead ...'

# To adapt this script change my name to your username in the above line, as well as UID (1000 here) !

exit

