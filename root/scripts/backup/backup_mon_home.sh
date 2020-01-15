#!/bin/bash
#
# Mounter le Tizzbird :

[ -d /mnt/syno/sauvegardes/homes ] || sudo mount /mnt/syno/sauvegardes

#sshfs guillaume@syno:/sauvegardes /mnt/syno/sauvegardes

wait
[ -d /mnt/syno/sauvegardes/homes ] || exit 1

# Le répertoire de destination :
DEST=/mnt/syno/sauvegardes/homes/guillaume

# On tiendra compte aussi des fichiers cachés :

shopt -s dotglob # for considering dot files (turn on dot files)

# Sauvegarde :

rsync -vurz --exclude-from '/root/scripts/backup/exclusions.txt' /home/guillaume/* $DEST/ && echo "Sauvegarde de mon répertoire personnel réalisée" | logger

wait
echo "Sauvegarde de mon répertoire personnel réalisée" | logger
cd /
sudo umount /mnt/syno/sauvegardes
exit 0
