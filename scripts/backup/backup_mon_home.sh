#!/bin/bash
#
shopt -s dotglob

# Mounter le Tizzbird :

[ -d /mnt/syno/sauvegardes/homes ] || sshfs guillaume@syno:/sauvegardes /mnt/syno/sauvegardes
wait
[ -d /mnt/syno/sauvegardes/homes ] || exit 1

# Le répertoire de destination :
DEST=/mnt/syno/sauvegardes/homes/

# On tiendra compte aussi des fichiers cachés :

shopt -s dotglob # for considering dot files (turn on dot files)

# Sauvegarde :

rsync -vurz --exclude-from '/home/guillaume/.scripts/backup/exclusions.txt' /home/guillaume/* $DEST/guillaume/ && echo "Sauvegarde de mon répertoire personnel réalisée" | logger

rsync -vurz --exclude-from '/home/guillaume/.scripts/backup/exclusions.txt' /home/aureo/* $DEST/aureo/ && echo "Sauvegarde de mon répertoire personnel réalisée" | logger


