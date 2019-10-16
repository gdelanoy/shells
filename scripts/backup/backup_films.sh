#!/bin/bash
#
# Mounter le Tizzbird :

# -d /media/guillaume/TizzBird/films a || sshfs guillaume@syno:/usbshare1 /mnt/syno/tizzbird
# wait
# [ -d /mnt/syno/tizzbird/films ] || exit 1 | logger
#Sauvegarde :

# rsync -vurz --delete --exclude 'Temp' /mnt/donnees/films/ /media/guillaume/TizzBird/films/ && echo "Sauvegarde de mes films réalisée" | logger
rsync -vurz --delete /mnt/donnees/films/ /media/guillaume/TizzBird/films/ && echo "Sauvegarde de mes films réalisée" | logger
# rsync -vurz --delete /mnt/donnees/films/ /mnt/syno/tizzbird/films/ && echo "Sauvegarde de mes films réalisée" | logger

exit 0
