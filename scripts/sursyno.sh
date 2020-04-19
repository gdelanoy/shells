#!/bin/bash
######################################
# Nom du script : sursyno.sh
# Utilité: ce script sert à mounter mes partages sur mon NAS
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com
# Créé le: samedi_28/03/2020 à 11h38
######################################
#


#!/bin/bash
# Contrôler si Syno est actif et mounter ses partages si c'est le cas :
if
        [ -d /mnt/syno/MesDocs/Documents ]
then
        echo "MesDocs sur syno est déjà monté" | lolcat -a
else

        sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 guillaume@syno:/MesDocs /mnt/syno/MesDocs -o allow_other
fi
#
if
        [ -d /mnt/syno/musique/Abba ]
then
        echo "Musique sur syno est déjà monté" | lolcat -a
else
        sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 guillaume@syno:/musique /mnt/syno/musique -o allow_other
fi
#
if
        [ -d /mnt/syno/IT/Applis ]
then
        echo "IT sur syno est déjà monté" | lolcat -a
else
sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 guillaume@syno:/IT /mnt/syno/IT -o allow_other
fi
#
if
        [ -d /mnt/syno/offsite/e-Books ]
then
        echo "Offsite sur syno est déjà monté" | lolcat -a
else
sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 guillaume@syno:/offsite /mnt/syno/offsite -o allow_other
fi
#
if
        [ -d /mnt/syno/sauvegardes/completes ]
then
        echo "Sauvegardes sur syno est déjà monté" | lolcat -a
else
sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 guillaume@syno:/sauvegardes /mnt/syno/sauvegardes -o allow_other
fi
#

# if
#        [ -d /mnt/syno/Tizzbird/Action ]
#        echo "Tizzbird (Films) sur syno est déjà monté" | lolcat -a
# else
# sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 guillaume@syno:/usbshare1 /mnt/syno/tizzbird -o allow_other 2>/dev/null # films
# fi
#

df -h | grep syno | lolcat
 exit

