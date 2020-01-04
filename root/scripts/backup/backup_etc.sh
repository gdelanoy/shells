#!/bin/bash
#
# Mounter le Tizzbird :

[ -d /mnt/syno/sauvegardes/etc ] || sudo mount /mnt/syno/sauvegardes

# sshfs guillaume@syno:/sauvegardes /mnt/syno/sauvegardes
wait
[ -d /mnt/syno/sauvegardes/etc ] || exit 1

# Le répertoire de destination :
DEST=/mnt/syno/sauvegardes/etc

# On tiendra compte aussi des fichiers cachés :

shopt -s dotglob # for considering dot files (turn on dot files)

# Sauvegarde :

rsync -vurz /etc/* $DEST/ && echo "Sauvegarde du répertoire /etc réalisée" | logger

wait
cd /
sudo umount /mnt/syno/sauvegardes
exit 0
