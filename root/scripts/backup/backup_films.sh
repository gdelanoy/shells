#!/bin/bash
#
# Mounter le Tizzbird :

[ -d /mnt/syno/TizzBird/films ] || sudo mount /mnt/syno/TizzBird

# sshfs guillaume@syno:/usbshare1 /mnt/syno/TizzBird

wait
[ -d /mnt/syno/TizzBird/films ] || exit 1 | logger
#Sauvegarde :

rsync -vurz --delete --exclude 'Temp' /mnt/donnees/films/ /mnt/syno/TizzBird/films/ && echo "Sauvegarde de mes films réalisée" | logger

wait
cd /
sudo umount /mnt/syno/TizzBird
exit 0
