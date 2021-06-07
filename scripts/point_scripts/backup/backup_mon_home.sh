#!/bin/bash
#
shopt -s dotglob

# Mounter syno :

# Le rép. des sauvegardes est : /mnt/syno/sauvegardes/salon/homes

# [ -d /mnt/syno/sauvegardes/salon ] || sshfs guillaume@syno:/sauvegardes /mnt/syno/sauvegardes
# wait
# [ -d /mnt/syno/sauvegardes/salon ] || exit 1

# Le répertoire de destination :
DEST=/mnt/syno/sauvegardes/live/home/

# On tiendra compte aussi des fichiers cachés :

shopt -s dotglob # for considering dot files (turn on dot files)

# Sauvegarde :

rsync -vurz --exclude-from '/home/guillaume/.scripts/backup/exclusions.txt' /home/guillaume/* $DEST/guillaume/ && echo "Sauvegarde de mon répertoire personnel réalisée" | logger

rsync -vurz --exclude-from '/home/guillaume/.scripts/backup/exclusions.txt' /home/aureo/* $DEST/aureo/ && echo "Sauvegarde du répertoire personnel d Aurelie-Anne réalisée" | logger

