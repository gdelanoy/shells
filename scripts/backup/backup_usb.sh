#!/bin/bash
shopt -s dotglob

[ -d ./Dans_Coffre-Fort/ ] || cd /media/guillaume/USBPRO/Dans_Coffre-Fort/
wait
[ -d ./Dans_Coffre-Fort/nosdocs ] || exit 1

# Le répertoire de destination :
[ -d /mnt/syno/sauvegardes/Dans_coffre-fort/ ] || sshfs guillaume@syno:/sauvegardes /mnt/syno/sauvegardes
wait
[ -d /mnt/syno/sauvegardes/Dans_coffre-fort/ ] || exit 1

DEST=/mnt/syno/sauvegardes/Dans_coffre-fort

# Sauvegarde :

rsync -vurz ./Dans_Coffre-Fort/* $DEST/ && echo "Sauvegarde du disque dur USB réalisée" | logger

exit
