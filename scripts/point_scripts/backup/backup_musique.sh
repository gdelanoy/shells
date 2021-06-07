#!/bin/bash
#
# Mounter le Synology :

[ -d /mnt/syno/musique/Abba ] || sshfs guillaume@syno:/musique /mnt/syno/musique
wait
[ -d /mnt/syno/musique/Abba ] || exit 1 |logger


# Sauvegarde :

rsync -vurz --delete /mnt/donnees/musique/ /mnt/syno/musique/ && echo "Sauvegarde de la musique réalisée vers le Synology." | logger

exit 0
