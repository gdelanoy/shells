#!/bin/bash

# encfs /mnt/donnees/nuages/mega/Safe/ /home/guillaume/safe-in-cloud/

encfs /home/guillaume/Dropbox/Safe/ /home/guillaume/safe-in-cloud/ \
&& while true
 do
    read -p "Veux-tu aussi ouvrir ta tirelire ? " yn
    case $yn in
        [YyOo]* ) /home/guillaume/.shells/bin/tirelire 2>/dev/null ; break;;
        [Nn]* ) echo "OK. bye."; df -h | grep safe | lolcat ; exit;;
        * ) echo "Réponds par ou par non s'il te plaît...";;
    esac
#  df -h | grep safe | lolcat
 done
