#!/bin/bash
#
# Mounter le Tizzbird et le Synology :

[ -d /mnt/syno/musique/Abba ] || sudo mount /mnt/syno/musique

# sshfs guillaume@syno:/musique /mnt/syno/musique

wait
[ -d /mnt/syno/musique/Abba ] || exit 1 |logger

# [ -d /mnt/syno/TizzBird/musique/Abba ] ||sshfs guillaume@syno:/usbshare1 /mnt/syno/TizzBird
# wait 
# [ -d /mnt/syno/TizzBird/musique/Abba ] || exit 1 | logger

# Sauvegarde :

rsync -vurz --delete /mnt/donnees/musique/ /mnt/syno/musique/ && echo "Sauvegarde de la musique réalisée vers le Synology." | logger

# rsync -vurz --delete /mnt/donnees/musique/ /mnt/syno/TizzBird/musique/ && echo "Sauvegarde de la musique réalisée vers le Tizzbird." | logger

wait
cd /
sudo umount /mnt/syno/musique
exit 0
